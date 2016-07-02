.class public Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blockSize:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 42
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 43
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 44
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 46
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method private calculateMac([BII[B)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "dataLen"    # I
    .param p4, "macBlock"    # [B

    .prologue
    .line 345
    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v8, v8, 0x8

    invoke-direct {v1, v7, v8}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    .line 347
    .local v1, "cMac":Lcom/android/org/bouncycastle/crypto/Mac;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 352
    const/16 v7, 0x10

    new-array v0, v7, [B

    .line 354
    .local v0, "b0":[B
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 356
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    or-int/lit8 v8, v8, 0x40

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 359
    :cond_0
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    div-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 361
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v9, v9

    rsub-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, -0x1

    and-int/lit8 v9, v9, 0x7

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 363
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v10, v10

    invoke-static {v7, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 365
    move v5, p3

    .line 366
    .local v5, "q":I
    const/4 v2, 0x1

    .line 367
    .local v2, "count":I
    :goto_0
    if-lez v5, :cond_1

    .line 369
    array-length v7, v0

    sub-int/2addr v7, v2

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 370
    ushr-int/lit8 v5, v5, 0x8

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_1
    const/4 v7, 0x0

    array-length v8, v0

    invoke-interface {v1, v0, v7, v8}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 379
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 383
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    .line 384
    .local v6, "textLength":I
    const v7, 0xff00

    if-ge v6, v7, :cond_4

    .line 386
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 387
    int-to-byte v7, v6

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 389
    const/4 v3, 0x2

    .line 403
    .local v3, "extra":I
    :goto_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v7, :cond_2

    .line 405
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v9, v9

    invoke-interface {v1, v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 407
    :cond_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 409
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v1, v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 412
    :cond_3
    add-int v7, v3, v6

    rem-int/lit8 v3, v7, 0x10

    .line 413
    if-eqz v3, :cond_5

    .line 415
    move v4, v3

    .local v4, "i":I
    :goto_2
    const/16 v7, 0x10

    if-eq v4, v7, :cond_5

    .line 417
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 393
    .end local v3    # "extra":I
    .end local v4    # "i":I
    :cond_4
    const/4 v7, -0x1

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 394
    const/4 v7, -0x2

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 395
    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 396
    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 397
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 398
    int-to-byte v7, v6

    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 400
    const/4 v3, 0x6

    .restart local v3    # "extra":I
    goto :goto_1

    .line 425
    .end local v3    # "extra":I
    .end local v6    # "textLength":I
    :cond_5
    invoke-interface {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 427
    const/4 v7, 0x0

    invoke-interface {v1, p4, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v7

    return v7
.end method

.method private getAssociatedTextLength()I
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v0, v0

    goto :goto_0
.end method

.method private hasAssociatedText()Z
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result v6

    .line 143
    .local v6, "len":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 145
    return v6
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v1, [B

    .line 165
    .local v0, "mac":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 167
    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    add-int v0, p1, v1

    .line 179
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 181
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    .line 184
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 69
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 71
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .line 73
    .local v1, "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 74
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 75
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 76
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 93
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    .local v0, "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v2, v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v2, v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_4

    .line 100
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nonce must have length from 7 to 13 octets"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 80
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 82
    .local v1, "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 84
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 85
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 86
    .restart local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 89
    .end local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid parameters passed to CCM"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .restart local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 104
    return-void
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 114
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 120
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII[BI)I
    .locals 19
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-nez v15, :cond_0

    .line 240
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "CCM cipher unitialized."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v11, v15

    .line 244
    .local v11, "n":I
    rsub-int/lit8 v14, v11, 0xf

    .line 245
    .local v14, "q":I
    const/4 v15, 0x4

    if-ge v14, v15, :cond_1

    .line 247
    const/4 v15, 0x1

    mul-int/lit8 v16, v14, 0x8

    shl-int v10, v15, v16

    .line 248
    .local v10, "limitLen":I
    move/from16 v0, p3

    if-lt v0, v10, :cond_1

    .line 250
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "CCM packet too large for choice of q."

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 254
    .end local v10    # "limitLen":I
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v9, v15, [B

    .line 255
    .local v9, "iv":[B
    const/4 v15, 0x0

    add-int/lit8 v16, v14, -0x1

    and-int/lit8 v16, v16, 0x7

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v15, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 258
    new-instance v6, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v6, v15}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 259
    .local v6, "ctrCipher":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v16, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 262
    move/from16 v8, p2

    .line 263
    .local v8, "inIndex":I
    move/from16 v12, p5

    .line 265
    .local v12, "outIndex":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v15, :cond_5

    .line 267
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int v13, p3, v15

    .line 268
    .local v13, "outputLen":I
    move-object/from16 v0, p4

    array-length v15, v0

    add-int v16, v13, p5

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 270
    new-instance v15, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v16, "Output buffer too short."

    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 273
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v6, v15, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 277
    :goto_0
    add-int v15, p2, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v8, v15, :cond_3

    .line 279
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v6, v0, v8, v1, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 280
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v15

    .line 281
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v8, v15

    goto :goto_0

    .line 284
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v4, v15, [B

    .line 286
    .local v4, "block":[B
    const/4 v15, 0x0

    add-int v16, p3, p2

    sub-int v16, v16, v8

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v8, v4, v15, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 288
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v4, v15, v4, v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 290
    const/4 v15, 0x0

    add-int v16, p3, p2

    sub-int v16, v16, v8

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v4, v15, v0, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    add-int v17, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, p4

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 340
    :cond_4
    return v13

    .line 296
    .end local v4    # "block":[B
    .end local v13    # "outputLen":I
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v0, p3

    if-ge v0, v15, :cond_6

    .line 298
    new-instance v15, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v16, "data too short"

    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 300
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v13, p3, v15

    .line 301
    .restart local v13    # "outputLen":I
    move-object/from16 v0, p4

    array-length v15, v0

    add-int v16, v13, p5

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 303
    new-instance v15, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v16, "Output buffer too short."

    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 306
    :cond_7
    add-int v15, p2, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v15, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v6, v15, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 310
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v15, v15

    if-eq v7, v15, :cond_8

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v16, 0x0

    aput-byte v16, v15, v7

    .line 310
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 315
    :cond_8
    :goto_2
    add-int v15, p2, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v8, v15, :cond_9

    .line 317
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v6, v0, v8, v1, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 318
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v15

    .line 319
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v8, v15

    goto :goto_2

    .line 322
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v4, v15, [B

    .line 324
    .restart local v4    # "block":[B
    const/4 v15, 0x0

    sub-int v16, v8, p2

    sub-int v16, v13, v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v8, v4, v15, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 326
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v4, v15, v4, v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 328
    const/4 v15, 0x0

    sub-int v16, v8, p2

    sub-int v16, v13, v16

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v4, v15, v0, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 330
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v5, v15, [B

    .line 332
    .local v5, "calculatedMacBlock":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2, v13, v5}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v15, v5}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v15

    if-nez v15, :cond_4

    .line 336
    new-instance v15, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v16, "mac check in CCM failed"

    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method public processPacket([BII)[B
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v4, v0, [B

    .line 215
    .local v4, "output":[B
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    .line 217
    return-object v4

    .line 208
    .end local v4    # "output":[B
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge p3, v0, :cond_1

    .line 210
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v0, p3, v0

    new-array v4, v0, [B

    .restart local v4    # "output":[B
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 153
    return-void
.end method
