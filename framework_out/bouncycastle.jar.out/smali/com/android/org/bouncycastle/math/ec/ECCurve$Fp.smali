.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# static fields
.field private static final FP_DEFAULT_COORDS:I = 0x4


# instance fields
.field infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 339
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 340
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 342
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 343
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 344
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    .line 345
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 328
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 329
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 331
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 332
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 333
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    .line 334
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 5

    .prologue
    .line 349
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    .prologue
    .line 383
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 8
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 410
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 411
    .local v3, "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 412
    .local v0, "alpha":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 418
    .local v1, "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v1, :cond_0

    .line 420
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid point compression"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 423
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 424
    .local v2, "betaValue":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-ne p1, v5, :cond_1

    move v4, v5

    :cond_1
    if-eq v6, v4, :cond_2

    .line 427
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 430
    :cond_2
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v4, p0, v3, v1, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    if-ne p1, p0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v1

    .line 446
    :cond_1
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-nez v3, :cond_2

    move v1, v2

    .line 448
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 451
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    .line 453
    .local v0, "other":Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 378
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    const/4 v5, 0x0

    .line 388
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->getCoordinateSystem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 405
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_0
    return-object v0

    .line 395
    :pswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    aput-object v1, v4, v5

    iget-boolean v5, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 362
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 360
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
