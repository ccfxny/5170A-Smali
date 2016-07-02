.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private hMac:Lcom/android/org/bouncycastle/crypto/Mac;

.field private state:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    .line 42
    return-void
.end method

.method private F([BI[B[BI)V
    .locals 6
    .param p1, "S"    # [B
    .param p2, "c"    # I
    .param p3, "iBuf"    # [B
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    const/4 v5, 0x0

    .line 51
    if-nez p2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "iteration count must be at least 1."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v3, p1

    invoke-interface {v2, p1, v5, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v3, p3

    invoke-interface {v2, p3, v5, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 62
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v2, v3, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 64
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v3, v3

    invoke-static {v2, v5, p4, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 66
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 68
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 69
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v2, v3, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 71
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 73
    add-int v2, p5, v1

    aget-byte v3, p4, v2

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 11
    .param p1, "dkLen"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v6

    .line 82
    .local v6, "hLen":I
    add-int v0, p1, v6

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v6

    .line 83
    .local v8, "l":I
    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 84
    .local v3, "iBuf":[B
    mul-int v0, v8, v6

    new-array v4, v0, [B

    .line 85
    .local v4, "outBytes":[B
    const/4 v5, 0x0

    .line 87
    .local v5, "outPos":I
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 89
    .local v9, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 91
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v8, :cond_1

    .line 94
    const/4 v10, 0x3

    .line 95
    .local v10, "pos":I
    :goto_1
    aget-byte v0, v3, v10

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v3, v10

    if-nez v0, :cond_0

    .line 97
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    .line 101
    add-int/2addr v5, v6

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 104
    .end local v10    # "pos":I
    :cond_1
    return-object v4
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    .prologue
    .line 117
    div-int/lit8 p1, p1, 0x8

    .line 119
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 121
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    .prologue
    .line 137
    div-int/lit8 p1, p1, 0x8

    .line 138
    div-int/lit8 p2, p2, 0x8

    .line 140
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 142
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
