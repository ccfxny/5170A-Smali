.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 1126
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 2
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    .line 1138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1140
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 1142
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1145
    :cond_2
    if-eqz p2, :cond_3

    .line 1148
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1151
    if-eqz p1, :cond_3

    .line 1153
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1157
    :cond_3
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1160
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
    .line 1164
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1166
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1169
    return-void
.end method

.method private static checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2
    .param p0, "a"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_0

    .line 1243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only points on the same curve can be added or subtracted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 1255
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 1256
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 42
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .prologue
    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p1

    .line 1419
    :goto_0
    return-object v2

    .line 1274
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    .line 1276
    goto :goto_0

    .line 1279
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1280
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v40

    .line 1282
    .local v40, "coord":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v31, v0

    .line 1283
    .local v31, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v32, v0

    .line 1285
    .local v32, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    sparse-switch v40, :sswitch_data_0

    .line 1423
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1289
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v33, v0

    .line 1290
    .local v33, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v34, v0

    .line 1292
    .local v34, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v31 .. v32}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1294
    invoke-virtual/range {v33 .. v34}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    .line 1299
    :cond_2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    .line 1302
    :cond_3
    invoke-virtual/range {v31 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v41

    .line 1303
    .local v41, "sumX":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v33 .. v34}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1305
    .local v17, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1306
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1308
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1312
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v41    # "sumX":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v33, v0

    .restart local v33    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v35, v2, v6

    .line 1313
    .local v35, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v34, v0

    .restart local v34    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v37, v2, v6

    .line 1315
    .local v37, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v37 .. v37}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    const/16 v38, 0x1

    .line 1317
    .local v38, "Z2IsOne":Z
    :goto_1
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1318
    .local v23, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v38, :cond_5

    move-object/from16 v24, v33

    .line 1319
    .local v24, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual/range {v23 .. v24}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1320
    .local v22, "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1321
    .local v26, "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v38, :cond_6

    move-object/from16 v27, v31

    .line 1322
    .local v27, "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual/range {v26 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1324
    .local v25, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1326
    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1315
    .end local v22    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v38    # "Z2IsOne":Z
    :cond_4
    const/16 v38, 0x0

    goto :goto_1

    .line 1318
    .restart local v23    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v38    # "Z2IsOne":Z
    :cond_5
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    goto :goto_2

    .line 1321
    .restart local v22    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v24    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v27

    goto :goto_3

    .line 1331
    .restart local v25    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1334
    :cond_8
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 1335
    .local v28, "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v38, :cond_9

    move-object/from16 v30, v35

    .line 1336
    .local v30, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1338
    .local v12, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1339
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v38, :cond_a

    move-object/from16 v29, v28

    .line 1340
    .local v29, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1341
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v39

    .line 1343
    .local v39, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v39, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1335
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v30

    goto/16 :goto_4

    .line 1339
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v12    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v30    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v29

    goto :goto_5

    .line 1347
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v35    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v38    # "Z2IsOne":Z
    :sswitch_2
    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1349
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    goto/16 :goto_0

    .line 1352
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v18, v0

    .local v18, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v35, v2, v6

    .line 1353
    .restart local v35    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v19, v0

    .local v19, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v37, v2, v6

    .line 1355
    .restart local v37    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    const/16 v36, 0x1

    .line 1356
    .local v36, "Z1IsOne":Z
    :goto_6
    move-object/from16 v24, v32

    .restart local v24    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v19

    .line 1357
    .local v21, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v36, :cond_c

    .line 1359
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 1360
    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1363
    :cond_c
    invoke-virtual/range {v37 .. v37}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_f

    const/16 v38, 0x1

    .line 1364
    .restart local v38    # "Z2IsOne":Z
    :goto_7
    move-object/from16 v23, v31

    .restart local v23    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v18

    .line 1365
    .local v20, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v38, :cond_d

    .line 1367
    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1368
    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1371
    :cond_d
    invoke-virtual/range {v20 .. v21}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1372
    .restart local v12    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v24}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1374
    .local v16, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1376
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1355
    .end local v12    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Z1IsOne":Z
    .end local v38    # "Z2IsOne":Z
    :cond_e
    const/16 v36, 0x0

    goto :goto_6

    .line 1363
    .restart local v21    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v24    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v36    # "Z1IsOne":Z
    :cond_f
    const/16 v38, 0x0

    goto :goto_7

    .line 1381
    .restart local v12    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v20    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v23    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v38    # "Z2IsOne":Z
    :cond_10
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1385
    :cond_11
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v33

    .restart local v33    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v34, v19

    .line 1390
    .restart local v34    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v33 .. v34}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1392
    .restart local v17    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1393
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1394
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v9, v5

    .line 1395
    .local v9, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_8
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v39

    .line 1419
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v39    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_12
    :goto_9
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v2, 0x1

    new-array v10, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v39, v10, v2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v7, v3

    move-object v8, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object v2, v6

    goto/16 :goto_0

    .line 1394
    .end local v9    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v33    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v34    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_13
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_8

    .line 1399
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_14
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1401
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1402
    .local v14, "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1403
    .local v15, "AU2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1404
    .local v13, "ABZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v38, :cond_15

    .line 1406
    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1409
    :cond_15
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1410
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v15 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1412
    .restart local v9    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v39, v13

    .line 1413
    .restart local v39    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v36, :cond_12

    .line 1415
    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v39

    goto :goto_9

    .line 1285
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected checkCurveEquation()V
    .locals 10

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 1650
    :pswitch_0
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1659
    .local v4, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1661
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 1653
    .end local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 1654
    .restart local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 1664
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1665
    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1668
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1669
    .local v3, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1671
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 1677
    .end local v3    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1678
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1679
    .local v2, "XSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1681
    .local v5, "ZSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1682
    .local v6, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1684
    .local v7, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1686
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "F2m Lambda-Projective invariant broken"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1647
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getCompressionYTilde()Z
    .locals 3

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1209
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1211
    const/4 v2, 0x0

    .line 1226
    :goto_0
    return v2

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1216
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1226
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    goto :goto_0

    .line 1222
    :pswitch_0
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    goto :goto_0

    .line 1216
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v4

    .line 1175
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_0

    .line 1201
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    :cond_0
    :goto_0
    return-object v2

    .line 1181
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1183
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    goto :goto_0

    .line 1187
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1188
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1189
    .local v2, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x6

    if-ne v5, v4, :cond_0

    .line 1191
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 1192
    .local v3, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1194
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_0

    .line 1175
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1692
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1724
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    return-object p0

    .line 1697
    .end local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1698
    .restart local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1728
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1708
    .local v7, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1712
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .restart local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v5

    .line 1713
    .local v8, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v5

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1717
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1718
    .local v6, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1723
    .end local v6    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_4
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .restart local v6    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v5

    .line 1724
    .restart local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v5

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 1433
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 1434
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .prologue
    .line 1448
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    goto :goto_0
.end method

.method public tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1459
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .local v6, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v8, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "coord":I
    :goto_0
    return-object p0

    .line 1464
    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v6    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "coord":I
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1465
    .restart local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v9

    .line 1467
    .restart local v9    # "coord":I
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1469
    .restart local v6    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v9, :pswitch_data_0

    .line 1485
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported coordinate system"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1475
    .restart local v7    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1480
    .end local v7    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .restart local v7    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v10

    .line 1481
    .restart local v8    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    aput-object v5, v4, v10

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 35

    .prologue
    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1570
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v29, "coord":I
    :goto_0
    return-object p0

    .line 1497
    .end local v3    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "coord":I
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1499
    .restart local v3    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v17, v0

    .line 1500
    .restart local v17    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1503
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1506
    :cond_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v29

    .line 1508
    .restart local v29    # "coord":I
    sparse-switch v29, :sswitch_data_0

    .line 1574
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1512
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    .line 1514
    .local v20, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1516
    .local v12, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1517
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1519
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v2

    goto :goto_0

    .line 1523
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    .restart local v20    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v22, v2, v6

    .line 1525
    .local v22, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    const/16 v23, 0x1

    .line 1526
    .local v23, "Z1IsOne":Z
    :goto_1
    if-eqz v23, :cond_3

    move-object/from16 v19, v17

    .line 1527
    .local v19, "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    if-eqz v23, :cond_4

    move-object/from16 v21, v20

    .line 1529
    .local v21, "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1530
    .local v18, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1531
    .local v14, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v19

    .line 1532
    .local v16, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v34

    .line 1533
    .local v34, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v30

    .line 1535
    .local v30, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1536
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1537
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1539
    .local v25, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v25, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v2

    goto/16 :goto_0

    .line 1525
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "Z1IsOne":Z
    .end local v25    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    const/16 v23, 0x0

    goto :goto_1

    .line 1526
    .restart local v23    # "Z1IsOne":Z
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto :goto_2

    .line 1527
    .restart local v19    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    goto :goto_3

    .line 1543
    .end local v19    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "Z1IsOne":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .restart local v12    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v22, v2, v6

    .line 1545
    .restart local v22    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    const/16 v23, 0x1

    .line 1546
    .restart local v23    # "Z1IsOne":Z
    :goto_4
    if-eqz v23, :cond_6

    move-object v13, v12

    .line 1547
    .local v13, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    if-eqz v23, :cond_7

    move-object/from16 v24, v22

    .line 1548
    .local v24, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1549
    .local v26, "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v23, :cond_8

    move-object/from16 v27, v26

    .line 1550
    .local v27, "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1552
    .local v15, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1553
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v23, :cond_9

    move-object/from16 v25, v15

    .line 1555
    .restart local v25    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_8
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 1557
    .local v28, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    if-ge v2, v6, :cond_a

    .line 1559
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 1560
    .local v31, "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 1561
    .local v32, "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v33

    .line 1562
    .local v33, "t3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {v32 .. v33}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1570
    .end local v31    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v33    # "t3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_9
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v2, 0x1

    new-array v10, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v25, v10, v2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v7, v3

    move-object v8, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v6

    goto/16 :goto_0

    .line 1545
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "Z1IsOne":Z
    .end local v24    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 1546
    .restart local v23    # "Z1IsOne":Z
    :cond_6
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    goto/16 :goto_5

    .line 1547
    .restart local v13    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    goto/16 :goto_6

    .line 1549
    .restart local v24    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v27

    goto/16 :goto_7

    .line 1553
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    goto/16 :goto_8

    .line 1566
    .restart local v25    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v28    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    if-eqz v23, :cond_b

    move-object/from16 v19, v17

    .line 1567
    .restart local v19    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v15, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .restart local v9    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_9

    .line 1566
    .end local v9    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto :goto_a

    .line 1508
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 25
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 1581
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1634
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 1585
    .restart local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1590
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1592
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    .line 1593
    .local v16, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1599
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v24

    .line 1601
    .local v24, "coord":I
    packed-switch v24, :pswitch_data_0

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1606
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v18, v0

    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v22, v2, v6

    .line 1607
    .local v22, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    .line 1609
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1612
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v10, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v20, v2, v6

    .line 1613
    .local v20, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1615
    .local v13, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1616
    .local v17, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1617
    .local v11, "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1618
    .local v21, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1620
    .local v12, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1621
    .local v15, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1622
    .local v14, "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1623
    .local v8, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1624
    .local v19, "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1626
    .local v9, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1627
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1628
    .local v23, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1630
    .local v5, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 1601
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
