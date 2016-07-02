.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.super Ljava/security/MessageDigest;
.source "BCMessageDigest.java"


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 15
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 18
    return-void
.end method


# virtual methods
.method public engineDigest()[B
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 43
    .local v0, "digestBytes":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 45
    return-object v0
.end method

.method public engineReset()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 23
    return-void
.end method

.method public engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 29
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 37
    return-void
.end method
