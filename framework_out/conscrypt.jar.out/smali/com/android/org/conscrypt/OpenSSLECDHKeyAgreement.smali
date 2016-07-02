.class public final Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "OpenSSLECDHKeyAgreement.java"


# instance fields
.field private mExpectedResultLength:I

.field private mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private mResult:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private checkCompleted()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key agreement not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 9
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v2, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECDH only has one phase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    if-nez p1, :cond_2

    .line 59
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_2
    instance-of v2, p1, Ljava/security/PublicKey;

    if-nez v2, :cond_3

    .line 62
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_3
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v7

    .line 66
    .local v7, "openSslPublicKey":Lcom/android/org/conscrypt/OpenSSLKey;
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    new-array v0, v2, [B

    .line 67
    .local v0, "buffer":[B
    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->ECDH_compute_key([BIJJ)I

    move-result v6

    .line 73
    .local v6, "actualResultLength":I
    const/4 v2, -0x1

    if-ne v6, v2, :cond_4

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_4
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ne v6, v2, :cond_5

    .line 77
    move-object v8, v0

    .line 87
    .local v8, "result":[B
    :goto_0
    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    .line 89
    const/4 v1, 0x0

    return-object v1

    .line 78
    .end local v8    # "result":[B
    :cond_5
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ge v6, v2, :cond_6

    .line 80
    new-array v8, v6, [B

    .line 81
    .restart local v8    # "result":[B
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 84
    .end local v8    # "result":[B
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine produced a longer than expected result. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 96
    array-length v1, p1

    sub-int v0, v1, p2

    .line 97
    .local v0, "available":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 98
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 103
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 115
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 109
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    instance-of v2, p1, Ljava/security/PrivateKey;

    if-nez v2, :cond_1

    .line 124
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a private key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    .line 128
    .local v1, "openSslKey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_degree(J)I

    move-result v0

    .line 130
    .local v0, "fieldSizeBits":I
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    .line 131
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 132
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 138
    if-eqz p2, :cond_0

    .line 139
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 142
    return-void
.end method
