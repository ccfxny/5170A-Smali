.class public Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static implMontgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;II)V
    .locals 8
    .param p0, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 73
    new-array v0, p2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 74
    .local v0, "c":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v6, 0x0

    aget-object v7, p0, p1

    aput-object v7, v0, v6

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    .line 79
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    add-int v7, p1, v1

    aget-object v7, p0, v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v1

    goto :goto_0

    .line 82
    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .local v5, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move v2, v1

    .line 84
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_1

    .line 86
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v3, p1, v2

    .line 87
    .local v3, "j":I
    aget-object v4, p0, v3

    .line 88
    .local v4, "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    aget-object v6, v0, v1

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, p0, v3

    .line 89
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    move v2, v1

    .line 90
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 92
    .end local v3    # "j":I
    .end local v4    # "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    aput-object v5, p0, p1

    .line 93
    return-void
.end method

.method static implShamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 17
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    .line 99
    .local v5, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 102
    .local v8, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 103
    .local v2, "PaddQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 105
    .local v3, "PsubQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v15, 0x4

    new-array v13, v15, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v15, 0x0

    aput-object p2, v13, v15

    const/4 v15, 0x1

    aput-object v3, v13, v15

    const/4 v15, 0x2

    aput-object p0, v13, v15

    const/4 v15, 0x3

    aput-object v2, v13, v15

    .line 106
    .local v13, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 108
    const/16 v15, 0x9

    new-array v14, v15, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v15, 0x0

    const/16 v16, 0x3

    aget-object v16, v13, v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x2

    aget-object v16, v13, v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x1

    aget-object v16, v13, v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aget-object v16, v13, v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    aput-object v8, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const/16 v16, 0x1

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const/16 v16, 0x3

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    .line 113
    .local v14, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v9

    .line 115
    .local v9, "jsf":[B
    move-object v4, v8

    .line 117
    .local v4, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v6, v9

    .line 118
    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    .line 120
    aget-byte v10, v9, v6

    .line 121
    .local v10, "jsfi":I
    shr-int/lit8 v11, v10, 0x4

    .local v11, "kDigit":I
    shl-int/lit8 v15, v10, 0x1c

    shr-int/lit8 v12, v15, 0x1c

    .line 123
    .local v12, "lDigit":I
    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x4

    add-int v7, v15, v12

    .line 124
    .local v7, "index":I
    aget-object v15, v14, v7

    invoke-virtual {v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 125
    goto :goto_0

    .line 127
    .end local v7    # "index":I
    .end local v10    # "jsfi":I
    .end local v11    # "kDigit":I
    .end local v12    # "lDigit":I
    :cond_0
    return-object v4
.end method

.method public static importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 57
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static shamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 49
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 11
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 14
    instance-of v2, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 16
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 17
    .local v1, "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 23
    .end local v1    # "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0
.end method
