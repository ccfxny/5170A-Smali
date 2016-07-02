.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$1;,
        Lcom/android/org/conscrypt/OpenSSLCipher$ARC4;,
        Lcom/android/org/conscrypt/OpenSSLCipher$DESEDE;,
        Lcom/android/org/conscrypt/OpenSSLCipher$AES;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Padding;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    }
.end annotation


# instance fields
.field private blockSize:I

.field private calledUpdate:Z

.field private cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

.field private encodedKey:[B

.field private encrypting:Z

.field private iv:[B

.field private mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field private modeBlockSize:I

.field private padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 118
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 73
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLCipherContext;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    .line 79
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 84
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 121
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 73
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLCipherContext;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    .line 79
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 84
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 122
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 123
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 124
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    .line 125
    return-void
.end method

.method private doFinalInternal([BII[BII)I
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 409
    move v1, p5

    .line 411
    .local v1, "initialOutputOffset":I
    if-lez p3, :cond_0

    .line 412
    invoke-direct/range {p0 .. p6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v3

    .line 414
    .local v3, "updateBytesWritten":I
    add-int/2addr p5, v3

    .line 415
    sub-int/2addr p6, v3

    .line 422
    .end local v3    # "updateBytesWritten":I
    :cond_0
    iget-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    if-nez v6, :cond_1

    .line 446
    :goto_0
    return v5

    .line 427
    :cond_1
    array-length v6, p4

    sub-int v0, v6, p5

    .line 429
    .local v0, "bytesLeft":I
    if-lt v0, p6, :cond_3

    .line 430
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v6

    invoke-static {v6, v7, p4, p5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(J[BI)I

    move-result v4

    .line 442
    .local v4, "writtenBytes":I
    :cond_2
    :goto_1
    add-int/2addr p5, v4

    .line 444
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->reset()V

    .line 446
    sub-int v5, p5, v1

    goto :goto_0

    .line 433
    .end local v4    # "writtenBytes":I
    :cond_3
    new-array v2, p6, [B

    .line 434
    .local v2, "lastBlock":[B
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(J[BI)I

    move-result v4

    .line 435
    .restart local v4    # "writtenBytes":I
    if-le v4, v0, :cond_4

    .line 436
    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buffer is too short: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 438
    :cond_4
    if-lez v4, :cond_2

    .line 439
    invoke-static {v2, v5, p4, p5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1
.end method

.method private engineInitInternal(ILjava/security/Key;[BLjava/security/SecureRandom;)V
    .locals 14
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "iv"    # [B
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 246
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    .line 253
    :goto_0
    move-object/from16 v0, p2

    instance-of v2, v0, Ljavax/crypto/SecretKey;

    if-nez v2, :cond_4

    .line 254
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Only SecretKey is supported"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 248
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_0

    .line 250
    :cond_3
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported opmode "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 258
    .local v10, "encodedKey":[B
    if-nez v10, :cond_5

    .line 259
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key.getEncoded() == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_5
    array-length v2, v10

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 262
    iput-object v10, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 264
    array-length v2, v10

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v4

    .line 266
    .local v4, "cipherType":J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    .line 267
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find name for key length = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v10

    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " and mode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_6
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v13

    .line 272
    .local v13, "ivLength":I
    if-nez p3, :cond_9

    if-eqz v13, :cond_9

    .line 273
    new-array v0, v13, [B

    move-object/from16 p3, v0

    .line 274
    iget-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    if-eqz v2, :cond_8

    .line 275
    if-nez p4, :cond_7

    .line 276
    new-instance p4, Ljava/security/SecureRandom;

    .end local p4    # "random":Ljava/security/SecureRandom;
    invoke-direct/range {p4 .. p4}, Ljava/security/SecureRandom;-><init>()V

    .line 278
    .restart local p4    # "random":Ljava/security/SecureRandom;
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 284
    :cond_8
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    .line 286
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->supportsVariableSizeKey()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 287
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    invoke-static/range {v2 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    .line 289
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v2

    array-length v6, v10

    invoke-static {v2, v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(JI)V

    .line 290
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    iget-boolean v12, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v12}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    .line 297
    :goto_1
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v6

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    :goto_2
    invoke-static {v6, v7, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(JZ)V

    .line 299
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(J)I

    move-result v2

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    .line 300
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    .line 301
    return-void

    .line 280
    :cond_9
    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    array-length v2, v0

    if-eq v2, v13, :cond_8

    .line 281
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected IV length of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_a
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v2

    iget-boolean v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    move-object v6, v10

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    goto :goto_1

    .line 297
    :cond_b
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getOutputSize(I)I
    .locals 4
    .param p1, "inputLen"    # I

    .prologue
    .line 204
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 212
    .end local p1    # "inputLen":I
    :goto_0
    return p1

    .line 207
    .restart local p1    # "inputLen":I
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(J)I

    move-result v0

    .line 208
    .local v0, "buffered":I
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v2, v3, :cond_1

    .line 209
    add-int/2addr p1, v0

    goto :goto_0

    .line 211
    :cond_1
    add-int v2, p1, v0

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    add-int v1, v2, v3

    .line 212
    .local v1, "totalLen":I
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    rem-int v2, v1, v2

    sub-int p1, v1, v2

    goto :goto_0
.end method

.method private reset()V
    .locals 7

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    iget-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    invoke-static/range {v0 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    .line 403
    return-void
.end method

.method private final updateInternal([BII[BII)I
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 345
    move v8, p5

    .line 347
    .local v8, "intialOutputOffset":I
    array-length v0, p4

    sub-int v7, v0, p5

    .line 348
    .local v7, "bytesLeft":I
    if-ge v7, p6, :cond_0

    .line 349
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output buffer too small during update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/android/org/conscrypt/OpenSSLCipherContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLCipherContext;->getContext()J

    move-result-wide v0

    move-object v2, p4

    move v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherUpdate(J[BI[BII)I

    move-result v0

    add-int/2addr p5, v0

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    .line 358
    sub-int v0, p5, v8

    return v0
.end method


# virtual methods
.method protected abstract checkSupportedKeySize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 7
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
    .line 485
    if-nez p4, :cond_0

    .line 486
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    .local v6, "maximumLen":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 490
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII[BII)I

    move-result v0

    return v0
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

    .line 456
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->reset()V

    .line 458
    const/4 v4, 0x0

    .line 477
    :cond_0
    :goto_0
    return-object v4

    .line 461
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    .line 463
    .local v6, "maximumLen":I
    new-array v4, v6, [B

    .line 466
    .local v4, "output":[B
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 472
    .local v7, "bytesWritten":I
    array-length v0, v4

    if-eq v7, v0, :cond_0

    .line 474
    if-nez v7, :cond_2

    .line 475
    sget-object v4, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_0

    .line 467
    .end local v7    # "bytesWritten":I
    :catch_0
    move-exception v8

    .line 469
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "our calculated buffer was too small"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 477
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v7    # "bytesWritten":I
    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    array-length v3, v3

    if-lez v3, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 232
    .local v1, "params":Ljava/security/AlgorithmParameters;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    invoke-virtual {v1, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v2

    .line 235
    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 237
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    move-object v1, v2

    .line 240
    goto :goto_0
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
    .line 330
    if-eqz p3, :cond_0

    .line 332
    :try_start_0
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 340
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 341
    return-void

    .line 333
    .end local v1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 337
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal(ILjava/security/Key;[BLjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 316
    instance-of v2, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_0

    move-object v1, p3

    .line 317
    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 318
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    .line 323
    .end local v1    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .local v0, "iv":[B
    :goto_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal(ILjava/security/Key;[BLjava/security/SecureRandom;)V

    .line 324
    return-void

    .line 320
    .end local v0    # "iv":[B
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "iv":[B
    goto :goto_0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "modeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    .local v1, "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 174
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 175
    return-void

    .line 167
    .end local v1    # "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, "newE":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 171
    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 6
    .param p1, "paddingStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "paddingStrUpper":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 189
    .local v2, "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 190
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 191
    return-void

    .line 183
    .end local v2    # "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such padding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "newE":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 187
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
    .line 509
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v1

    .line 510
    .local v1, "encoded":[B
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 511
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 512
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 517
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :goto_0
    return-object v3

    .line 513
    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .line 514
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 515
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    goto :goto_0

    .line 516
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    .line 517
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 521
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 519
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

    .line 523
    .end local v1    # "encoded":[B
    :catch_1
    move-exception v0

    .line 524
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 525
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v0

    .line 526
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
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
    .line 393
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    .local v6, "maximumLen":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 394
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v9, 0x0

    .line 363
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    .line 367
    .local v6, "maximumLen":I
    if-lez v6, :cond_0

    .line 368
    new-array v4, v6, [B

    .line 375
    .local v4, "output":[B
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 381
    .local v7, "bytesWritten":I
    array-length v0, v4

    if-ne v0, v7, :cond_1

    .line 386
    .end local v4    # "output":[B
    :goto_1
    return-object v4

    .line 370
    .end local v7    # "bytesWritten":I
    :cond_0
    sget-object v4, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    .restart local v4    # "output":[B
    goto :goto_0

    .line 376
    :catch_0
    move-exception v8

    .line 378
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculated buffer size was wrong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v7    # "bytesWritten":I
    :cond_1
    if-nez v7, :cond_2

    .line 384
    sget-object v4, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_1

    .line 386
    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    goto :goto_1
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
    .line 496
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 497
    .local v1, "encoded":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 498
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 500
    .local v2, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 501
    throw v2
.end method

.method protected abstract getBaseCipherName()Ljava/lang/String;
.end method

.method protected abstract getCipherBlockSize()I
.end method

.method protected abstract getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method protected supportsVariableSizeKey()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
