.class public abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$Raw;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$PKCS1;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private encrypting:Z

.field private inputTooLarge:Z

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private padding:I

.field private usingPrivateKey:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 84
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 85
    return-void
.end method

.method private engineInitInternal(ILjava/security/Key;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 156
    :cond_0
    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    .line 163
    :goto_0
    instance-of v2, p2, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_4

    move-object v0, p2

    .line 164
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 165
    .local v0, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 166
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 187
    .end local v0    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :goto_1
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    .line 188
    iput-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 189
    return-void

    .line 157
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 158
    :cond_2
    iput-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    goto :goto_0

    .line 160
    :cond_3
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported opmode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_4
    instance-of v2, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_5

    move-object v0, p2

    .line 168
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 169
    .local v0, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 170
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 171
    .end local v0    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_5
    instance-of v2, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_6

    move-object v0, p2

    .line 172
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 173
    .local v0, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 174
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 175
    .end local v0    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_6
    instance-of v2, p2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v2, :cond_7

    move-object v1, p2

    .line 176
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    .line 177
    .local v1, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    iput-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 178
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 179
    .end local v1    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :cond_7
    instance-of v2, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_8

    move-object v1, p2

    .line 180
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 181
    .local v1, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    iput-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 182
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 184
    .end local v1    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_8
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need RSA private or public key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private keySizeBytes()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v0

    return v0
.end method

.method private paddedBlockSizeBytes()I
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 130
    .local v0, "paddedBlockSizeBytes":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 131
    add-int/lit8 v0, v0, -0x1

    .line 132
    add-int/lit8 v0, v0, -0xa

    .line 134
    :cond_0
    return v0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v0

    .line 299
    .local v0, "b":[B
    array-length v2, v0

    add-int v1, p5, v2

    .line 300
    .local v1, "lastOffset":I
    array-length v2, p4

    if-le v1, v2, :cond_0

    .line 301
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output buffer is too small "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_0
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p4, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 306
    array-length v2, v0

    return v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 244
    :cond_0
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    if-eqz v1, :cond_1

    .line 245
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input must be under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v4, v4

    if-eq v1, v4, :cond_4

    .line 250
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 251
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    new-array v2, v1, [B

    .line 252
    .local v2, "tmpBuf":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v1, v9, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    new-array v3, v1, [B

    .line 262
    .local v3, "output":[B
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v1, :cond_6

    .line 263
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v1, :cond_5

    .line 264
    array-length v1, v2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BJI)I

    move-result v8

    .line 285
    .local v8, "resultSize":I
    :goto_1
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-nez v1, :cond_2

    array-length v1, v3

    if-eq v8, v1, :cond_2

    .line 286
    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 289
    :cond_2
    iput v9, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 290
    return-object v3

    .line 254
    .end local v2    # "tmpBuf":[B
    .end local v3    # "output":[B
    .end local v8    # "resultSize":I
    :cond_3
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .restart local v2    # "tmpBuf":[B
    goto :goto_0

    .line 257
    .end local v2    # "tmpBuf":[B
    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    .restart local v2    # "tmpBuf":[B
    goto :goto_0

    .line 267
    .restart local v3    # "output":[B
    :cond_5
    array-length v1, v2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BJI)I

    move-result v8

    .restart local v8    # "resultSize":I
    goto :goto_1

    .line 272
    .end local v8    # "resultSize":I
    :cond_6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v1, :cond_7

    .line 273
    array-length v1, v2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BJI)I

    move-result v8

    .restart local v8    # "resultSize":I
    goto :goto_1

    .line 276
    .end local v8    # "resultSize":I
    :cond_7
    array-length v1, v2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BJI)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .restart local v8    # "resultSize":I
    goto :goto_1

    .line 279
    .end local v8    # "resultSize":I
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v7, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v7}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 281
    .local v7, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v7, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 282
    throw v7
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    goto :goto_0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    goto :goto_0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 210
    if-eqz p3, :cond_0

    .line 211
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 216
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 194
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 199
    if-eqz p3, :cond_0

    .line 200
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 205
    return-void
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "modeUpper":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ECB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "NOPADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "padding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 6
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v1

    .line 326
    .local v1, "encoded":[B
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 327
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 328
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 333
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :goto_0
    return-object v3

    .line 329
    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .line 330
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 331
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    goto :goto_0

    .line 332
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    .line 333
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 337
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 335
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v1    # "encoded":[B
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrappedKeyType == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    .line 339
    .end local v1    # "encoded":[B
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 341
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v0

    .line 342
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 220
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 222
    sget-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    .line 227
    :goto_0
    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 226
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 227
    sget-object v0, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 313
    .local v1, "encoded":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 314
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 316
    .local v2, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 317
    throw v2
.end method
