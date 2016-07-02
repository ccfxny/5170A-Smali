.class public Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 86
    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 87
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 88
    .local v1, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 100
    .end local v1    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :goto_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v0

    .line 101
    .local v0, "maxSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 103
    return-void

    .line 89
    .end local v0    # "maxSize":I
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 90
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 91
    .local v1, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 92
    .end local v1    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_1
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 93
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 94
    .local v1, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 96
    .end local v1    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_2
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need RSA private key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 107
    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 108
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    .line 109
    .local v1, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 118
    .end local v1    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :goto_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v0

    .line 119
    .local v0, "maxSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 120
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 121
    return-void

    .line 110
    .end local v0    # "maxSize":I
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 111
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 112
    .local v1, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 114
    .end local v1    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need RSA public key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method protected engineSign()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 129
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Need RSA private key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " != "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (modulus size)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v1, v1

    new-array v3, v1, [B

    .line 141
    .local v3, "outputBuffer":[B
    :try_start_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BJI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iput v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return-object v3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    .prologue
    .line 56
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 58
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aput-byte p1, v1, v0

    goto :goto_0
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 69
    .local v0, "oldOffset":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 71
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 12
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Need RSA public key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v1, :cond_1

    .line 184
    :goto_0
    return v11

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v1, v1

    new-array v3, v1, [B

    .line 166
    .local v3, "outputBuffer":[B
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BJI)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 174
    .local v10, "resultSize":I
    :try_start_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne v10, v1, :cond_3

    .line 175
    .local v9, "matches":Z
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_4

    .line 176
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v1, v1, v8

    aget-byte v2, v3, v8

    if-eq v1, v2, :cond_2

    .line 177
    const/4 v9, 0x0

    .line 175
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 168
    .end local v8    # "i":I
    .end local v9    # "matches":Z
    .end local v10    # "resultSize":I
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/security/SignatureException;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v7

    .line 182
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput v11, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v1

    .line 170
    :catch_2
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    iput v11, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v10    # "resultSize":I
    :cond_3
    move v9, v11

    .line 174
    goto :goto_1

    .line 184
    .restart local v8    # "i":I
    .restart local v9    # "matches":Z
    :cond_4
    iput v11, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    move v11, v9

    goto :goto_0
.end method
