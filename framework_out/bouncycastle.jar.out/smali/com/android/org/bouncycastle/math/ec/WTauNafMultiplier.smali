.class public Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 6
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "u"    # [B
    .param p2, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 84
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    .line 87
    .local v0, "a":B
    if-eqz p2, :cond_0

    instance-of v5, p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-nez v5, :cond_2

    .line 89
    :cond_0
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .line 90
    .local v3, "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>([Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)V

    invoke-virtual {v1, p0, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 98
    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 99
    .local v4, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    array-length v5, p1

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 101
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 102
    aget-byte v5, p1, v2

    if-eqz v5, :cond_1

    .line 104
    aget-byte v5, p1, v2

    if-lez v5, :cond_3

    .line 106
    aget-byte v5, p1, v2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 99
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 94
    .end local v2    # "i":I
    .end local v3    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .end local v4    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .restart local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_2
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .restart local v3    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    goto :goto_0

    .line 111
    .restart local v2    # "i":I
    .restart local v4    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :cond_3
    aget-byte v5, p1, v2

    neg-int v5, v5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    goto :goto_2

    .line 116
    :cond_4
    return-object v4
.end method

.method private multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 7
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p2, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .param p3, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .param p4, "a"    # B
    .param p5, "mu"    # B

    .prologue
    const/4 v2, 0x4

    .line 53
    if-nez p4, :cond_0

    .line 55
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 63
    .local v5, "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    :goto_0
    invoke-static {p5, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    .line 65
    .local v4, "tw":Ljava/math/BigInteger;
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v6

    .line 68
    .local v6, "u":[B
    invoke-static {p1, v6, p3}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0

    .line 60
    .end local v4    # "tw":Ljava/math/BigInteger;
    .end local v5    # "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v6    # "u":[B
    :cond_0
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .restart local v5    # "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    goto :goto_0
.end method


# virtual methods
.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 12
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 21
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v6, p1

    .line 27
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 28
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 29
    .local v11, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    .line 30
    .local v1, "m":I
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    .line 31
    .local v2, "a":B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    .line 32
    .local v4, "mu":B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 34
    .local v3, "s":[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    .line 36
    .local v7, "rho":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    invoke-virtual {v11, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v8

    move-object v5, p0

    move v9, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method
