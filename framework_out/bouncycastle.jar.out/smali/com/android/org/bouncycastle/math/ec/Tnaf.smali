.class Lcom/android/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final POW_2_WIDTH:B = 0x10t

.field public static final WIDTH:B = 0x4t

.field public static final alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    .line 51
    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 70
    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "vm"    # Ljava/math/BigInteger;
    .param p3, "a"    # B
    .param p4, "m"    # I
    .param p5, "c"    # I

    .prologue
    .line 286
    add-int/lit8 v7, p4, 0x5

    div-int/lit8 v7, v7, 0x2

    add-int v0, v7, p5

    .line 287
    .local v0, "_k":I
    sub-int v7, p4, v0

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v7, p3

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 289
    .local v6, "ns":Ljava/math/BigInteger;
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 291
    .local v1, "gs":Ljava/math/BigInteger;
    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 293
    .local v3, "hs":Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 295
    .local v4, "js":Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 296
    .local v2, "gsPlusJs":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 297
    .local v5, "ls":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 300
    sget-object v7, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 303
    :cond_0
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v5, p5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 9
    .param p0, "mu"    # B
    .param p1, "k"    # I
    .param p2, "doV"    # Z

    .prologue
    const/4 v8, 0x1

    .line 439
    if-eq p0, v8, :cond_0

    const/4 v6, -0x1

    if-eq p0, v6, :cond_0

    .line 441
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mu must be 1 or -1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 448
    :cond_0
    if-eqz p2, :cond_1

    .line 450
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 451
    .local v3, "u0":Ljava/math/BigInteger;
    int-to-long v6, p0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 459
    .local v4, "u1":Ljava/math/BigInteger;
    :goto_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 462
    const/4 v2, 0x0

    .line 463
    .local v2, "s":Ljava/math/BigInteger;
    if-ne p0, v8, :cond_2

    .line 465
    move-object v2, v4

    .line 473
    :goto_2
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 474
    .local v5, "u2":Ljava/math/BigInteger;
    move-object v3, v4

    .line 475
    move-object v4, v5

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 455
    .end local v0    # "i":I
    .end local v2    # "s":Ljava/math/BigInteger;
    .end local v3    # "u0":Ljava/math/BigInteger;
    .end local v4    # "u1":Ljava/math/BigInteger;
    .end local v5    # "u2":Ljava/math/BigInteger;
    :cond_1
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 456
    .restart local v3    # "u0":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .restart local v4    # "u1":Ljava/math/BigInteger;
    goto :goto_0

    .line 470
    .restart local v0    # "i":I
    .restart local v2    # "s":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_2

    .line 480
    .end local v2    # "s":Ljava/math/BigInteger;
    :cond_3
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    aput-object v4, v1, v8

    .line 481
    .local v1, "retVal":[Ljava/math/BigInteger;
    return-object v1
.end method

.method public static getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B
    .locals 2
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    const/4 v0, -0x1

    .line 420
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "a"    # B

    .prologue
    .line 809
    const/16 v4, 0x10

    new-array v3, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 810
    .local v3, "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    const/4 v4, 0x1

    aput-object p0, v3, v4

    .line 812
    if-nez p1, :cond_0

    .line 814
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 822
    .local v0, "alphaTnaf":[[B
    :goto_0
    array-length v2, v0

    .line 823
    .local v2, "precompLen":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 825
    aget-object v4, v0, v1

    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    aput-object v4, v3, v1

    .line 823
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 819
    .end local v0    # "alphaTnaf":[[B
    .end local v1    # "i":I
    .end local v2    # "precompLen":I
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .restart local v0    # "alphaTnaf":[[B
    goto :goto_0

    .line 828
    .restart local v1    # "i":I
    .restart local v2    # "precompLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 830
    return-object v3
.end method

.method public static getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .locals 14
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 530
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v9

    if-nez v9, :cond_0

    .line 532
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "si is defined for Koblitz curves only"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v5

    .line 536
    .local v5, "m":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 537
    .local v0, "a":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v6

    .line 538
    .local v6, "mu":B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 539
    .local v3, "h":I
    add-int/lit8 v9, v5, 0x3

    sub-int v4, v9, v0

    .line 540
    .local v4, "index":I
    invoke-static {v6, v4, v12}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v8

    .line 544
    .local v8, "ui":[Ljava/math/BigInteger;
    if-ne v6, v11, :cond_1

    .line 546
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 547
    .local v1, "dividend0":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 559
    .local v2, "dividend1":Ljava/math/BigInteger;
    :goto_0
    new-array v7, v13, [Ljava/math/BigInteger;

    .line 561
    .local v7, "si":[Ljava/math/BigInteger;
    if-ne v3, v13, :cond_3

    .line 563
    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 564
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    .line 576
    :goto_1
    return-object v7

    .line 549
    .end local v1    # "dividend0":Ljava/math/BigInteger;
    .end local v2    # "dividend1":Ljava/math/BigInteger;
    .end local v7    # "si":[Ljava/math/BigInteger;
    :cond_1
    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    .line 551
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 552
    .restart local v1    # "dividend0":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2    # "dividend1":Ljava/math/BigInteger;
    goto :goto_0

    .line 556
    .end local v1    # "dividend0":Ljava/math/BigInteger;
    .end local v2    # "dividend1":Ljava/math/BigInteger;
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "mu must be 1 or -1"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 566
    .restart local v1    # "dividend0":Ljava/math/BigInteger;
    .restart local v2    # "dividend1":Ljava/math/BigInteger;
    .restart local v7    # "si":[Ljava/math/BigInteger;
    :cond_3
    const/4 v9, 0x4

    if-ne v3, v9, :cond_4

    .line 568
    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 569
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    goto :goto_1

    .line 573
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "h (Cofactor) must be 2 or 4"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 7
    .param p0, "mu"    # B
    .param p1, "w"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 494
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 496
    if-ne p0, v6, :cond_0

    .line 498
    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 503
    :cond_0
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_1
    invoke-static {p0, p1, v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v3

    .line 510
    .local v3, "us":[Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 511
    .local v1, "twoToW":Ljava/math/BigInteger;
    aget-object v4, v3, v6

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 513
    .local v2, "u1invert":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 516
    .local v0, "tw":Ljava/math/BigInteger;
    goto :goto_0
.end method

.method public static multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "u"    # [B

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 679
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 680
    .local v2, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 682
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 683
    aget-byte v3, p1, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 685
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 680
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 687
    :cond_1
    aget-byte v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 689
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    goto :goto_1

    .line 692
    :cond_2
    return-object v2
.end method

.method public static multiplyRTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 8
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 638
    .local v6, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    .line 639
    .local v1, "m":I
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v2, v0

    .line 640
    .local v2, "a":B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    .line 641
    .local v4, "mu":B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 642
    .local v3, "s":[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    .line 644
    .local v7, "rho":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public static multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 4
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 659
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v1

    .line 660
    .local v1, "mu":B
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v3

    .line 662
    .local v3, "u":[B
    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 664
    .local v2, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    return-object v2
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 6
    .param p0, "mu"    # B
    .param p1, "u"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "v"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 132
    .local v1, "s1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 135
    .local v2, "s2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 137
    .local v3, "s3":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v5, :cond_0

    .line 139
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 150
    .local v0, "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_0
    return-object v0

    .line 141
    .end local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_0
    const/4 v4, -0x1

    if-ne p0, v4, :cond_1

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .restart local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_0

    .line 147
    .end local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    const/4 v6, 0x1

    .line 87
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 90
    .local v1, "s1":Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 93
    .local v2, "s2":Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 95
    .local v3, "s3":Ljava/math/BigInteger;
    if-ne p0, v6, :cond_0

    .line 97
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    .local v0, "norm":Ljava/math/BigInteger;
    :goto_0
    return-object v0

    .line 99
    .end local v0    # "norm":Ljava/math/BigInteger;
    :cond_0
    const/4 v4, -0x1

    if-ne p0, v4, :cond_1

    .line 101
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0    # "norm":Ljava/math/BigInteger;
    goto :goto_0

    .line 105
    .end local v0    # "norm":Ljava/math/BigInteger;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .locals 15
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "m"    # I
    .param p2, "a"    # B
    .param p3, "s"    # [Ljava/math/BigInteger;
    .param p4, "mu"    # B
    .param p5, "c"    # B

    .prologue
    .line 597
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 599
    const/4 v2, 0x0

    aget-object v2, p3, v2

    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 606
    .local v8, "d0":Ljava/math/BigInteger;
    :goto_0
    const/4 v2, 0x1

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v14

    .line 607
    .local v14, "v":[Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v4, v14, v2

    .line 609
    .local v4, "vm":Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v3, p3, v2

    move-object v2, p0

    move/from16 v5, p2

    move/from16 v6, p1

    move/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 612
    .local v9, "lambda0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v2, 0x1

    aget-object v3, p3, v2

    move-object v2, p0

    move/from16 v5, p2

    move/from16 v6, p1

    move/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 615
    .local v10, "lambda1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move/from16 v0, p4

    invoke-static {v9, v10, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v11

    .line 618
    .local v11, "q":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    iget-object v2, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 622
    .local v12, "r0":Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v2, p3, v2

    iget-object v3, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p3, v3

    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 624
    .local v13, "r1":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 603
    .end local v4    # "vm":Ljava/math/BigInteger;
    .end local v8    # "d0":Ljava/math/BigInteger;
    .end local v9    # "lambda0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "lambda1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v11    # "q":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v12    # "r0":Ljava/math/BigInteger;
    .end local v13    # "r1":Ljava/math/BigInteger;
    .end local v14    # "v":[Ljava/math/BigInteger;
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p3, v2

    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .restart local v8    # "d0":Ljava/math/BigInteger;
    goto :goto_0
.end method

.method public static round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .locals 18
    .param p0, "lambda0"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p1, "lambda1"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "mu"    # B

    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v14

    .line 170
    .local v14, "scale":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v14, :cond_0

    .line 172
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "lambda0 and lambda1 do not have same scale"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 176
    :cond_0
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 178
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "mu must be 1 or -1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 181
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v7

    .line 182
    .local v7, "f0":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v8

    .line 184
    .local v8, "f1":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 185
    .local v5, "eta0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v6

    .line 188
    .local v6, "eta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 189
    .local v4, "eta":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 191
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 201
    :goto_0
    invoke-virtual {v6, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v15

    .line 202
    .local v15, "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v15, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 205
    .local v9, "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 207
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 208
    .local v2, "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 217
    .local v3, "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_1
    const/4 v10, 0x0

    .line 218
    .local v10, "h0":B
    const/4 v11, 0x0

    .line 221
    .local v11, "h1":B
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-ltz v16, :cond_7

    .line 223
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_6

    .line 225
    move/from16 v11, p2

    .line 242
    :cond_2
    :goto_2
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_9

    .line 244
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-ltz v16, :cond_8

    .line 246
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v11, v0

    .line 262
    :cond_3
    :goto_3
    int-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 263
    .local v12, "q0":Ljava/math/BigInteger;
    int-to-long v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 264
    .local v13, "q1":Ljava/math/BigInteger;
    new-instance v16, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v16

    .line 196
    .end local v2    # "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v3    # "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9    # "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "h0":B
    .end local v11    # "h1":B
    .end local v12    # "q0":Ljava/math/BigInteger;
    .end local v13    # "q1":Ljava/math/BigInteger;
    .end local v15    # "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_4
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    goto :goto_0

    .line 213
    .restart local v9    # "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .restart local v15    # "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_5
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 214
    .restart local v2    # "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .restart local v3    # "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_1

    .line 229
    .restart local v10    # "h0":B
    .restart local v11    # "h1":B
    :cond_6
    const/4 v10, 0x1

    goto :goto_2

    .line 235
    :cond_7
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-ltz v16, :cond_2

    .line 237
    move/from16 v11, p2

    goto :goto_2

    .line 250
    :cond_8
    const/4 v10, -0x1

    goto :goto_3

    .line 256
    :cond_9
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_3

    .line 258
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v11, v0

    goto :goto_3
.end method

.method public static tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public static tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 14
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    .line 316
    const/4 v11, 0x1

    if-eq p0, v11, :cond_0

    const/4 v11, -0x1

    if-eq p0, v11, :cond_0

    .line 318
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "mu must be 1 or -1"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 321
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 324
    .local v4, "norm":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 327
    .local v2, "log2Norm":I
    const/16 v11, 0x1e

    if-le v2, v11, :cond_2

    add-int/lit8 v3, v2, 0x4

    .line 330
    .local v3, "maxLength":I
    :goto_0
    new-array v10, v3, [B

    .line 331
    .local v10, "u":[B
    const/4 v0, 0x0

    .line 334
    .local v0, "i":I
    const/4 v1, 0x0

    .line 336
    .local v1, "length":I
    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 337
    .local v5, "r0":Ljava/math/BigInteger;
    iget-object v6, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 339
    .local v6, "r1":Ljava/math/BigInteger;
    :goto_1
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 342
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 344
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v10, v0

    .line 347
    aget-byte v11, v10, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 349
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 356
    :goto_2
    move v1, v0

    .line 363
    :goto_3
    move-object v8, v5

    .line 364
    .local v8, "t":Ljava/math/BigInteger;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 365
    .local v7, "s":Ljava/math/BigInteger;
    const/4 v11, 0x1

    if-ne p0, v11, :cond_5

    .line 367
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 375
    :goto_4
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 377
    goto :goto_1

    .line 327
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v3    # "maxLength":I
    .end local v5    # "r0":Ljava/math/BigInteger;
    .end local v6    # "r1":Ljava/math/BigInteger;
    .end local v7    # "s":Ljava/math/BigInteger;
    .end local v8    # "t":Ljava/math/BigInteger;
    .end local v10    # "u":[B
    :cond_2
    const/16 v3, 0x22

    goto :goto_0

    .line 354
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v3    # "maxLength":I
    .restart local v5    # "r0":Ljava/math/BigInteger;
    .restart local v6    # "r1":Ljava/math/BigInteger;
    .restart local v10    # "u":[B
    :cond_3
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_2

    .line 360
    :cond_4
    const/4 v11, 0x0

    aput-byte v11, v10, v0

    goto :goto_3

    .line 372
    .restart local v7    # "s":Ljava/math/BigInteger;
    .restart local v8    # "t":Ljava/math/BigInteger;
    :cond_5
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_4

    .line 379
    .end local v7    # "s":Ljava/math/BigInteger;
    .end local v8    # "t":Ljava/math/BigInteger;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 382
    new-array v9, v1, [B

    .line 383
    .local v9, "tnaf":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 384
    return-object v9
.end method

.method public static tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 15
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .param p2, "width"    # B
    .param p3, "pow2w"    # Ljava/math/BigInteger;
    .param p4, "tw"    # Ljava/math/BigInteger;
    .param p5, "alpha"    # [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    .line 712
    const/4 v13, 0x1

    if-eq p0, v13, :cond_0

    const/4 v13, -0x1

    if-eq p0, v13, :cond_0

    .line 714
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "mu must be 1 or -1"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 717
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 720
    .local v4, "norm":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 723
    .local v2, "log2Norm":I
    const/16 v13, 0x1e

    if-le v2, v13, :cond_3

    add-int/lit8 v13, v2, 0x4

    add-int v3, v13, p2

    .line 726
    .local v3, "maxLength":I
    :goto_0
    new-array v10, v3, [B

    .line 729
    .local v10, "u":[B
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 732
    .local v5, "pow2wMin1":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 733
    .local v6, "r0":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 734
    .local v7, "r1":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 737
    .local v1, "i":I
    :goto_1
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 740
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 743
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 748
    .local v12, "uUnMod":Ljava/math/BigInteger;
    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-ltz v13, :cond_4

    .line 750
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .line 758
    .local v11, "uLocal":B
    :goto_2
    aput-byte v11, v10, v1

    .line 759
    const/4 v8, 0x1

    .line 760
    .local v8, "s":Z
    if-gez v11, :cond_2

    .line 762
    const/4 v8, 0x0

    .line 763
    neg-int v13, v11

    int-to-byte v11, v13

    .line 767
    :cond_2
    if-eqz v8, :cond_5

    .line 769
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 770
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 783
    .end local v8    # "s":Z
    .end local v11    # "uLocal":B
    .end local v12    # "uUnMod":Ljava/math/BigInteger;
    :goto_3
    move-object v9, v6

    .line 785
    .local v9, "t":Ljava/math/BigInteger;
    const/4 v13, 0x1

    if-ne p0, v13, :cond_7

    .line 787
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 794
    :goto_4
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 795
    add-int/lit8 v1, v1, 0x1

    .line 796
    goto :goto_1

    .line 723
    .end local v1    # "i":I
    .end local v3    # "maxLength":I
    .end local v5    # "pow2wMin1":Ljava/math/BigInteger;
    .end local v6    # "r0":Ljava/math/BigInteger;
    .end local v7    # "r1":Ljava/math/BigInteger;
    .end local v9    # "t":Ljava/math/BigInteger;
    .end local v10    # "u":[B
    :cond_3
    add-int/lit8 v3, p2, 0x22

    goto :goto_0

    .line 754
    .restart local v1    # "i":I
    .restart local v3    # "maxLength":I
    .restart local v5    # "pow2wMin1":Ljava/math/BigInteger;
    .restart local v6    # "r0":Ljava/math/BigInteger;
    .restart local v7    # "r1":Ljava/math/BigInteger;
    .restart local v10    # "u":[B
    .restart local v12    # "uUnMod":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .restart local v11    # "uLocal":B
    goto :goto_2

    .line 774
    .restart local v8    # "s":Z
    :cond_5
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 775
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_3

    .line 780
    .end local v8    # "s":Z
    .end local v11    # "uLocal":B
    .end local v12    # "uUnMod":Ljava/math/BigInteger;
    :cond_6
    const/4 v13, 0x0

    aput-byte v13, v10, v1

    goto :goto_3

    .line 792
    .restart local v9    # "t":Ljava/math/BigInteger;
    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_4

    .line 797
    .end local v9    # "t":Ljava/math/BigInteger;
    :cond_8
    return-object v10
.end method
