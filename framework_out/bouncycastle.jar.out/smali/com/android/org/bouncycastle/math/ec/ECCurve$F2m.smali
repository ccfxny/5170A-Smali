.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I


# instance fields
.field private h:Ljava/math/BigInteger;

.field private infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private n:Ljava/math/BigInteger;

.field private si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p6, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p7, "n"    # Ljava/math/BigInteger;
    .param p8, "h"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 684
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>()V

    .line 521
    iput-byte v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    .line 528
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 685
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 686
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 687
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 688
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 689
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    .line 690
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    .line 692
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 693
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 694
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 695
    iput v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 696
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    .line 609
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 610
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;
    .param p7, "n"    # Ljava/math/BigInteger;
    .param p8, "h"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 644
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>()V

    .line 521
    iput-byte v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    .line 528
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 645
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 646
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 647
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 648
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 649
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    .line 650
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    .line 652
    if-nez p2, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    if-nez p3, :cond_1

    .line 659
    if-eqz p4, :cond_3

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    if-gt p3, p2, :cond_2

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_2
    if-gt p4, p3, :cond_3

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_3
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 678
    invoke-virtual {p0, p5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 679
    invoke-virtual {p0, p6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 680
    iput v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 681
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 550
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 551
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .param p5, "n"    # Ljava/math/BigInteger;
    .param p6, "h"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 578
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 579
    return-void
.end method

.method private solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "beta"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 874
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 904
    .end local p1    # "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p1

    .line 879
    .restart local p1    # "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    sget-object v8, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 881
    .local v7, "zeroElement":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v6, 0x0

    .line 882
    .local v6, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v0, 0x0

    .line 884
    .local v0, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 887
    .local v2, "rand":Ljava/util/Random;
    :cond_1
    new-instance v8, Ljava/math/BigInteger;

    iget v9, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    invoke-direct {v8, v9, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 888
    .local v3, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v7

    .line 889
    move-object v4, p1

    .line 890
    .local v4, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v8, v8, -0x1

    if-gt v1, v8, :cond_2

    .line 892
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 893
    .local v5, "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 894
    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 896
    .end local v5    # "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_3

    .line 898
    const/4 p1, 0x0

    goto :goto_0

    .line 900
    :cond_3
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_1

    move-object p1, v6

    .line 904
    goto :goto_0
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 9

    .prologue
    .line 700
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    .line 723
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    goto :goto_0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 740
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getCoordinateSystem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 758
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 745
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    .prologue
    .line 763
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 9
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x1

    .line 820
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 821
    .local v2, "xp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x0

    .line 822
    .local v3, "yp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 824
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .end local v3    # "yp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 825
    .restart local v3    # "yp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 827
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    .end local v1    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 833
    .local v0, "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 834
    .local v4, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v4, :cond_1

    .line 836
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid point compression"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 838
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v7

    if-ne p1, v6, :cond_4

    move v5, v6

    :goto_1
    if-eq v7, v5, :cond_2

    .line 840
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 843
    :cond_2
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 845
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getCoordinateSystem()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 860
    .end local v0    # "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    :goto_2
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v5, p0, v2, v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v5

    .line 838
    .restart local v0    # "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v4    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 850
    :pswitch_0
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 851
    goto :goto_2

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 910
    if-ne p1, p0, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v1

    .line 915
    :cond_1
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-nez v3, :cond_2

    move v1, v2

    .line 917
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 920
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 922
    .local v0, "other":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 733
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    .prologue
    .line 959
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method declared-synchronized getMu()B
    .locals 1

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    if-nez v0, :cond_0

    .line 790
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    .line 792
    :cond_0
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 804
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isKoblitz()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 777
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrinomial()Z
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 705
    sparse-switch p1, :sswitch_data_0

    .line 712
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 710
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 705
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
