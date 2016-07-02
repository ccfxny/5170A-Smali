.class public Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "OpenSSLDSAKeyPairGenerator.java"


# instance fields
.field private g:[B

.field private p:[B

.field private primeBits:I

.field private q:[B

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 29
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->primeBits:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 8

    .prologue
    .line 42
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    if-nez v4, :cond_0

    .line 43
    const/4 v3, 0x0

    .line 49
    .local v3, "seed":[B
    :goto_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->primeBits:I

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->g:[B

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->p:[B

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->q:[B

    invoke-static {v4, v3, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->DSA_generate_key(I[B[B[B[B)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 52
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 53
    .local v1, "privKey":Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;

    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 55
    .local v2, "pubKey":Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;
    new-instance v4, Ljava/security/KeyPair;

    invoke-direct {v4, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v4

    .line 45
    .end local v0    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    .end local v1    # "privKey":Lcom/android/org/conscrypt/OpenSSLDSAPrivateKey;
    .end local v2    # "pubKey":Lcom/android/org/conscrypt/OpenSSLDSAPublicKey;
    .end local v3    # "seed":[B
    :cond_0
    const/16 v4, 0x14

    new-array v3, v4, [B

    .line 46
    .restart local v3    # "seed":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 60
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->primeBits:I

    .line 61
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 62
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 67
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 69
    instance-of v4, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v4, :cond_3

    move-object v0, p1

    .line 70
    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    .line 72
    .local v0, "dsaParams":Ljava/security/spec/DSAParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 73
    .local v1, "gInt":Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->g:[B

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 78
    .local v2, "pInt":Ljava/math/BigInteger;
    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->p:[B

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 83
    .local v3, "qInt":Ljava/math/BigInteger;
    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDSAKeyPairGenerator;->q:[B

    .line 89
    .end local v0    # "dsaParams":Ljava/security/spec/DSAParameterSpec;
    .end local v1    # "gInt":Ljava/math/BigInteger;
    .end local v2    # "pInt":Ljava/math/BigInteger;
    .end local v3    # "qInt":Ljava/math/BigInteger;
    :cond_2
    return-void

    .line 86
    :cond_3
    if-eqz p1, :cond_2

    .line 87
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "Params must be DSAParameterSpec"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
