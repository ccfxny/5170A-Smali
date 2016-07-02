.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 474
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 2
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 490
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_2
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 496
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    .prologue
    .line 500
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 502
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 503
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 52
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v3, p1

    .line 736
    :goto_0
    return-object v3

    .line 527
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v3, p0

    .line 529
    goto :goto_0

    .line 531
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 537
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v38

    .line 539
    .local v38, "coord":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v24, v0

    .local v24, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v26, v0

    .line 540
    .local v26, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v25, v0

    .local v25, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v27, v0

    .line 542
    .local v27, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v38, :pswitch_data_0

    .line 740
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v8, "unsupported coordinate system"

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    :pswitch_1
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v39

    .local v39, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 548
    .local v40, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 550
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 557
    :cond_3
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 560
    :cond_4
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v41

    .line 561
    .local v41, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v41 .. v41}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 562
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 564
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 569
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v41    # "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 570
    .local v28, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 572
    .local v32, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    const/16 v30, 0x1

    .line 573
    .local v30, "Z1IsOne":Z
    :goto_1
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    const/16 v34, 0x1

    .line 575
    .local v34, "Z2IsOne":Z
    :goto_2
    if-eqz v30, :cond_7

    move-object/from16 v43, v27

    .line 576
    .local v43, "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v34, :cond_8

    move-object/from16 v44, v26

    .line 577
    .local v44, "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual/range {v43 .. v44}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 578
    .local v42, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v30, :cond_9

    move-object/from16 v46, v25

    .line 579
    .local v46, "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    if-eqz v34, :cond_a

    move-object/from16 v47, v24

    .line 580
    .local v47, "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    invoke-virtual/range {v46 .. v47}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v45

    .line 583
    .local v45, "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 585
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 572
    .end local v30    # "Z1IsOne":Z
    .end local v34    # "Z2IsOne":Z
    .end local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    const/16 v30, 0x0

    goto :goto_1

    .line 573
    .restart local v30    # "Z1IsOne":Z
    :cond_6
    const/16 v34, 0x0

    goto :goto_2

    .line 575
    .restart local v34    # "Z2IsOne":Z
    :cond_7
    invoke-virtual/range {v27 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v43

    goto :goto_3

    .line 576
    .restart local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v44

    goto :goto_4

    .line 578
    .restart local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v46

    goto :goto_5

    .line 579
    .restart local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v47

    goto :goto_6

    .line 592
    .restart local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 596
    :cond_c
    if-eqz v30, :cond_d

    move-object/from16 v51, v32

    .line 597
    .local v51, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v49

    .line 598
    .local v49, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v48

    .line 599
    .local v48, "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v50

    .line 600
    .local v50, "vSquaredV2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 602
    .local v9, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 603
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 604
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 606
    .local v36, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v8, 0x1

    new-array v7, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v36, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 596
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v48    # "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v49    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v50    # "vSquaredV2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_d
    if-eqz v34, :cond_e

    move-object/from16 v51, v28

    goto :goto_7

    :cond_e
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v51

    goto :goto_7

    .line 612
    .end local v28    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "Z1IsOne":Z
    .end local v32    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 613
    .restart local v28    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 615
    .restart local v32    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_f

    const/16 v30, 0x1

    .line 617
    .restart local v30    # "Z1IsOne":Z
    :goto_8
    const/16 v37, 0x0

    .line 619
    .local v37, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_14

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 623
    invoke-virtual/range {v24 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v39

    .restart local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 624
    .restart local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 626
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 615
    .end local v30    # "Z1IsOne":Z
    .end local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_f
    const/16 v30, 0x0

    goto :goto_8

    .line 630
    .restart local v30    # "Z1IsOne":Z
    .restart local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_10
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 633
    :cond_11
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 634
    .local v11, "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .local v21, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 635
    .local v22, "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 637
    .local v10, "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 638
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 639
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v39

    .line 641
    .restart local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v30, :cond_13

    .line 643
    move-object/from16 v37, v11

    .line 724
    .end local v10    # "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_12
    :goto_9
    const/4 v3, 0x4

    move/from16 v0, v38

    if-ne v0, v3, :cond_1c

    .line 727
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 729
    .local v23, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x2

    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    const/4 v3, 0x1

    aput-object v23, v7, v3

    .line 736
    .end local v23    # "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_a
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 647
    .end local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v10    # "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v11    # "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_13
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    goto :goto_9

    .line 653
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_14
    if-eqz v30, :cond_15

    .line 655
    move-object/from16 v31, v28

    .local v31, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v25

    .local v19, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v27

    .line 665
    .local v17, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_b
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_16

    const/16 v34, 0x1

    .line 667
    .restart local v34    # "Z2IsOne":Z
    :goto_c
    if-eqz v34, :cond_17

    .line 669
    move-object/from16 v35, v32

    .local v35, "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v24

    .local v18, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v26

    .line 679
    .local v16, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_d
    invoke-virtual/range {v18 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 680
    .local v13, "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 683
    .local v15, "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 685
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 659
    .end local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_15
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 660
    .restart local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 661
    .restart local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 662
    .local v29, "Z1Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .restart local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_b

    .line 665
    .end local v29    # "Z1Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_16
    const/16 v34, 0x0

    goto :goto_c

    .line 673
    .restart local v34    # "Z2IsOne":Z
    :cond_17
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v35

    .line 674
    .restart local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 675
    .restart local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v33

    .line 676
    .local v33, "Z2Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .restart local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_d

    .line 692
    .end local v33    # "Z2Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_18
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 695
    :cond_19
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 696
    .local v14, "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 697
    .local v12, "G":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 699
    .local v20, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 700
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 702
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v13

    .line 703
    .restart local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_1a

    .line 705
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 707
    :cond_1a
    if-nez v34, :cond_1b

    .line 709
    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 717
    :cond_1b
    move-object/from16 v0, v36

    if-ne v0, v13, :cond_12

    .line 719
    move-object/from16 v37, v14

    goto/16 :goto_9

    .line 733
    .end local v12    # "G":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1c
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    .restart local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_a

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "Z"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1062
    if-nez p2, :cond_0

    .line 1064
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1067
    :cond_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1068
    .local v0, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1069
    .local v1, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1070
    .local v2, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1072
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1078
    :goto_0
    return-object v0

    .line 1076
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method protected doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1027
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1012
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v0

    return v0
.end method

.method protected getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1083
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v1, v4

    .line 1084
    .local v0, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1089
    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 512
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .local v6, "coord":I
    :goto_0
    return-object p0

    .line 1049
    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v6    # "coord":I
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1050
    .restart local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v6

    .line 1052
    .restart local v6    # "coord":I
    if-eqz v6, :cond_1

    .line 1054
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1057
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 1033
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method protected three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1007
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 19

    .prologue
    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 995
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    .local v14, "coord":I
    .local v15, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_0
    :goto_0
    return-object p0

    .line 959
    .end local v14    # "coord":I
    .end local v15    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v15

    .line 960
    .restart local v15    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 962
    .restart local v14    # "coord":I
    sparse-switch v14, :sswitch_data_0

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 966
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v7, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 968
    .local v10, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 969
    .local v13, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 970
    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 971
    .local v12, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 973
    .local v9, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 974
    .local v16, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 979
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 980
    .local v2, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 981
    .local v3, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 982
    .local v4, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 984
    .local v5, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 985
    .local v8, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 986
    .local v11, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v17, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v15, v8, v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v17

    goto/16 :goto_0

    .line 990
    .end local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto/16 :goto_0

    .line 962
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 31

    .prologue
    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p0

    .line 865
    :goto_0
    return-object v2

    .line 753
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 755
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 756
    .local v14, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 758
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 761
    :cond_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v25

    .line 763
    .local v25, "coord":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 765
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v25, :pswitch_data_0

    .line 870
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 769
    :pswitch_1
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 770
    .local v13, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 771
    .local v26, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 772
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 774
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto :goto_0

    .line 779
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 781
    .local v16, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v17, 0x1

    .line 782
    .local v17, "Z1IsOne":Z
    :goto_1
    if-eqz v17, :cond_4

    move-object/from16 v19, v16

    .line 785
    .local v19, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v30

    .line 786
    .local v30, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_2

    .line 788
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v30

    .line 790
    :cond_2
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v30

    .line 792
    if-eqz v17, :cond_5

    move-object/from16 v28, v14

    .line 793
    .local v28, "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v17, :cond_6

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 794
    .local v29, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 795
    .local v8, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 796
    .local v21, "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 798
    .local v27, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 799
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 800
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 801
    .local v22, "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 803
    .local v20, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 781
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 782
    .restart local v17    # "Z1IsOne":Z
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto/16 :goto_2

    .line 792
    .restart local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v30    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v28

    goto/16 :goto_3

    .line 793
    .restart local v28    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v29

    goto/16 :goto_4

    .line 800
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v29    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    goto :goto_5

    .line 808
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 810
    .restart local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    const/16 v17, 0x1

    .line 811
    .restart local v17    # "Z1IsOne":Z
    :goto_6
    if-eqz v17, :cond_a

    move-object/from16 v19, v16

    .line 813
    .restart local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 814
    .local v15, "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 816
    .local v11, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 817
    .local v23, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 820
    .local v24, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 822
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 823
    .local v9, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 848
    .local v10, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_8
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 849
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 851
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 852
    .restart local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_8

    .line 854
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 860
    :cond_8
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 810
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 811
    .restart local v17    # "Z1IsOne":Z
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto/16 :goto_7

    .line 827
    .restart local v11    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v23    # "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v24    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 828
    .restart local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 829
    .restart local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_c

    .line 831
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 845
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15, v13, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .restart local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_8

    .line 835
    .end local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 836
    .local v18, "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v6

    if-ge v2, v6, :cond_d

    .line 838
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_9

    .line 842
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_9

    .line 865
    .end local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v18    # "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v2

    goto/16 :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    .locals 19
    .param p1, "calculateW"    # Z

    .prologue
    .line 1094
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v14, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .local v16, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1096
    .local v10, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1097
    .local v13, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1098
    .local v7, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1099
    .local v15, "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1100
    .local v9, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15, v13, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1101
    .local v8, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1102
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1103
    .local v18, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1104
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1105
    .local v11, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .end local v14    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1107
    .local v17, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 1104
    .end local v11    # "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1105
    .restart local v11    # "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    goto :goto_1
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 21
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 947
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 881
    .restart local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v19

    if-nez v19, :cond_0

    .line 885
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 890
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 891
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-nez v19, :cond_0

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v15

    .line 897
    .local v15, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 899
    .local v14, "coord":I
    sparse-switch v14, :sswitch_data_0

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 903
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 904
    .local v7, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v8, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 906
    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .local v17, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 908
    .local v18, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 910
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object/from16 p1, p0

    .line 917
    goto :goto_0

    .line 925
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 926
    .local v10, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 927
    .local v16, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 929
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 932
    :cond_5
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 933
    .local v2, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 934
    .local v3, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 935
    .local v4, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 936
    .local v5, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 937
    .local v9, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 939
    .local v13, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-direct {v0, v15, v9, v13, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 943
    .end local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :sswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 899
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1002
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
