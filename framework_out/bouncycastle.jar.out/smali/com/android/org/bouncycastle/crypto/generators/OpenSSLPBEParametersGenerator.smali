.class public Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 23
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 31
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 8
    .param p1, "bytesNeeded"    # I

    .prologue
    const/4 v7, 0x0

    .line 52
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v0, v4, [B

    .line 53
    .local v0, "buf":[B
    new-array v1, p1, [B

    .line 54
    .local v1, "key":[B
    const/4 v3, 0x0

    .line 58
    .local v3, "offset":I
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    array-length v6, v6

    invoke-interface {v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 59
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    array-length v6, v6

    invoke-interface {v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 61
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v0, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 63
    array-length v4, v0

    if-le p1, v4, :cond_0

    array-length v2, v0

    .line 64
    .local v2, "len":I
    :goto_1
    invoke-static {v0, v7, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 65
    add-int/2addr v3, v2

    .line 68
    sub-int/2addr p1, v2

    .line 69
    if-nez p1, :cond_1

    .line 79
    return-object v1

    .end local v2    # "len":I
    :cond_0
    move v2, p1

    .line 63
    goto :goto_1

    .line 75
    .restart local v2    # "len":I
    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 76
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    .prologue
    .line 93
    div-int/lit8 p1, p1, 0x8

    .line 95
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 97
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
    .line 114
    div-int/lit8 p1, p1, 0x8

    .line 115
    div-int/lit8 p2, p2, 0x8

    .line 117
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 119
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method

.method public init([B[B)V
    .locals 1
    .param p1, "password"    # [B
    .param p2, "salt"    # [B

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 44
    return-void
.end method
