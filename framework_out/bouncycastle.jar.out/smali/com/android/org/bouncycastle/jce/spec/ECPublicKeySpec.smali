.class public Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPublicKeySpec.java"


# instance fields
.field private q:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 1
    .param p1, "q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 25
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    goto :goto_0
.end method


# virtual methods
.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
