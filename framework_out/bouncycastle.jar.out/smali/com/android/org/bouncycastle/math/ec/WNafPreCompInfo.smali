.class public Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field private preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 19
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method protected getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected getTwiceP()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 40
    return-void
.end method

.method protected setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "preCompNeg"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 45
    return-void
.end method

.method protected setTwiceP(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "twiceP"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 55
    return-void
.end method
