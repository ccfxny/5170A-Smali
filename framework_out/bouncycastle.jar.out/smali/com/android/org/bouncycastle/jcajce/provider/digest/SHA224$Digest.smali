.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;
.super Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA224.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA224;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 26
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;

    .line 32
    .local v0, "d":Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V

    iput-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA224$Digest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 34
    return-object v0
.end method
