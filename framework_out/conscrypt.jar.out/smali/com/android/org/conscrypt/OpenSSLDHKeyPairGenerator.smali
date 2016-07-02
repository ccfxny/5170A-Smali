.class public Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "OpenSSLDHKeyPairGenerator.java"


# static fields
.field private static final DEFAULT_GENERATOR:Ljava/math/BigInteger;


# instance fields
.field private generator:Ljava/math/BigInteger;

.field private prime:Ljava/math/BigInteger;

.field private primeBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 34
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    .line 38
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    if-eqz v3, :cond_0

    .line 44
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4, v5, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 51
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :goto_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->DH_generate_key(J)V

    .line 53
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 54
    .local v1, "privKey":Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLDHPublicKey;

    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/OpenSSLDHPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 56
    .local v2, "pubKey":Lcom/android/org/conscrypt/OpenSSLDHPublicKey;
    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3

    .line 47
    .end local v0    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    .end local v1    # "privKey":Lcom/android/org/conscrypt/OpenSSLDHPrivateKey;
    .end local v2    # "pubKey":Lcom/android/org/conscrypt/OpenSSLDHPublicKey;
    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->DH_generate_parameters_ex(IJ)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .restart local v0    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    .line 62
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    .line 63
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    .line 64
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    .line 70
    const/16 v2, 0x400

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    .line 71
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    .line 73
    instance-of v2, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 74
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 76
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    .line 77
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 78
    .local v1, "gen":Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    .line 79
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    .line 84
    .end local v0    # "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    .end local v1    # "gen":Ljava/math/BigInteger;
    :cond_0
    return-void

    .line 81
    :cond_1
    if-eqz p1, :cond_0

    .line 82
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Params must be DHParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
