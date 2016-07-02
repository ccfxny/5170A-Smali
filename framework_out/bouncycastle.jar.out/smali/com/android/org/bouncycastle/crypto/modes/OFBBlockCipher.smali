.class public Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;
.super Ljava/lang/Object;
.source "OFBBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "blockSize"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 33
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    .line 35
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    .line 36
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    .line 37
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    .line 38
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_3

    move-object v2, p2

    .line 68
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 69
    .local v2, "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 71
    .local v1, "iv":[B
    array-length v3, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 88
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 103
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_2
    :goto_1
    return-void

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 98
    if-eqz p2, :cond_2

    .line 100
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 147
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 149
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 154
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 165
    add-int v1, p4, v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 172
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 174
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 185
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 186
    return-void
.end method
