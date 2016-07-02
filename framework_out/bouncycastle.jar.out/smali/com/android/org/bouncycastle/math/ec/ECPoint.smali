.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    }
.end annotation


# static fields
.field protected static EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# instance fields
.field protected curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

.field protected withCompression:Z

.field protected x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 61
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 62
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 63
    return-void
.end method

.method protected static getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    if-nez p0, :cond_0

    move v0, v3

    .line 17
    .local v0, "coord":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 26
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 28
    .local v1, "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v0, :pswitch_data_0

    .line 39
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    .end local v0    # "coord":I
    .end local v1    # "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    goto :goto_0

    .line 21
    .restart local v0    # "coord":I
    :sswitch_0
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 37
    :goto_1
    return-object v2

    .line 33
    .restart local v1    # "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1
    new-array v2, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    goto :goto_1

    .line 35
    :pswitch_2
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    aput-object v1, v2, v4

    aput-object v1, v2, v5

    goto :goto_1

    .line 37
    :pswitch_3
    new-array v2, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_1

    .line 17
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected checkNormalized()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    return-void
.end method

.method protected createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "sx"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "sy"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z
    .locals 13
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 275
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v10

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .local v0, "c1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 281
    .local v1, "c2":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_4

    move v4, v9

    .local v4, "n1":Z
    :goto_1
    if-nez v1, :cond_5

    move v5, v9

    .line 282
    .local v5, "n2":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    .local v2, "i1":Z
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    .line 284
    .local v3, "i2":Z
    if-nez v2, :cond_2

    if-eqz v3, :cond_7

    .line 286
    :cond_2
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_3
    :goto_3
    move v10, v9

    goto :goto_0

    .end local v2    # "i1":Z
    .end local v3    # "i2":Z
    .end local v4    # "n1":Z
    .end local v5    # "n2":Z
    :cond_4
    move v4, v10

    .line 281
    goto :goto_1

    .restart local v4    # "n1":Z
    :cond_5
    move v5, v10

    goto :goto_2

    .restart local v2    # "i1":Z
    .restart local v3    # "i2":Z
    .restart local v5    # "n2":Z
    :cond_6
    move v9, v10

    .line 286
    goto :goto_3

    .line 289
    :cond_7
    move-object v6, p0

    .local v6, "p1":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v7, p1

    .line 290
    .local v7, "p2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 319
    :goto_4
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_5
    move v10, v9

    goto :goto_0

    .line 294
    :cond_8
    if-eqz v4, :cond_9

    .line 296
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    goto :goto_4

    .line 298
    :cond_9
    if-eqz v5, :cond_a

    .line 300
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_4

    .line 302
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 310
    const/4 v11, 0x2

    new-array v8, v11, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aput-object p0, v8, v10

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v8, v9

    .line 313
    .local v8, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 315
    aget-object v6, v8, v10

    .line 316
    aget-object v7, v8, v9

    goto :goto_4

    .end local v8    # "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_b
    move v9, v10

    .line 319
    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 324
    if-ne p1, p0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 334
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 329
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_1

    .line 331
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    :cond_1
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 112
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 124
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCompressionYTilde()Z
.end method

.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method protected getCurveCoordinateSystem()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Z)[B
    .locals 8
    .param p1, "compressed"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    new-array v0, v7, [B

    .line 409
    :goto_0
    return-object v0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 393
    .local v3, "normed":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v1

    .line 395
    .local v1, "X":[B
    if-eqz p1, :cond_2

    .line 397
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 398
    .local v0, "PO":[B
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCompressionYTilde()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    :goto_1
    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 399
    array-length v4, v1

    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 398
    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    .line 403
    .end local v0    # "PO":[B
    :cond_2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v2

    .line 405
    .local v2, "Y":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 406
    .restart local v0    # "PO":[B
    const/4 v4, 0x4

    aput-byte v4, v0, v6

    .line 407
    array-length v4, v1

    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 408
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method protected getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 159
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v1, v2

    .line 165
    .local v1, "zsLen":I
    if-nez v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 171
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-array v0, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 170
    .local v0, "copy":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 340
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 342
    .local v1, "hc":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 348
    .local v2, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x11

    xor-int/2addr v1, v3

    .line 349
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit16 v3, v3, 0x101

    xor-int/2addr v1, v3

    .line 352
    .end local v2    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    return v1

    .line 340
    .end local v1    # "hc":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/lit8 v1, v3, -0x1

    goto :goto_0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return v0
.end method

.method public isInfinity()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isNormalized()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    .line 196
    .local v0, "coord":I
    if-eqz v0, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    :sswitch_0
    return-object p0

    .line 215
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 225
    .local v0, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "zInv"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 253
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not a projective coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :pswitch_1
    invoke-virtual {p0, p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 249
    :goto_0
    return-object v2

    .line 248
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 249
    .local v1, "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "e"    # I

    .prologue
    .line 422
    if-gez p1, :cond_0

    .line 424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :cond_0
    move-object v0, p0

    .line 428
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 430
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 357
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "INF"

    .line 373
    :goto_0
    return-object v2

    .line 362
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 363
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 369
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
