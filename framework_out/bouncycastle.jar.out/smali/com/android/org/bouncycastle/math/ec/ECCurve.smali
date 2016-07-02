.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    }
.end annotation


# static fields
.field public static final COORD_AFFINE:I = 0x0

.field public static final COORD_HOMOGENEOUS:I = 0x1

.field public static final COORD_JACOBIAN:I = 0x2

.field public static final COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final COORD_LAMBDA_AFFINE:I = 0x5

.field public static final COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final COORD_SKEWED:I = 0x7


# instance fields
.field protected a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected coord:I

.field protected multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 467
    return-void
.end method

.method public static getAllCoordinateSystems()[I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method protected checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 292
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'point\' must be non-null and on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    return-void
.end method

.method protected checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 4
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 307
    aget-object v1, p1, v0

    .line 308
    .local v1, "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    if-eq p0, v2, :cond_1

    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' entries must be null or on this curve"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_2
    return-void
.end method

.method protected abstract cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end method

.method public configure()Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/ECMultiplier;)V

    return-object v0
.end method

.method protected createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 9
    .param p1, "encoded"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v2, v5, 0x8

    .line 242
    .local v2, "expectedLength":I
    aget-byte v5, p1, v8

    packed-switch v5, :pswitch_data_0

    .line 284
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid point encoding 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v8

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 246
    :pswitch_1
    array-length v5, p1

    if-eq v5, v7, :cond_0

    .line 248
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Incorrect length for infinity encoding"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 287
    :goto_0
    return-object v3

    .line 257
    :pswitch_2
    array-length v5, p1

    add-int/lit8 v6, v2, 0x1

    if-eq v5, v6, :cond_1

    .line 259
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Incorrect length for compressed encoding"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_1
    aget-byte v5, p1, v8

    and-int/lit8 v4, v5, 0x1

    .line 263
    .local v4, "yTilde":I
    invoke-static {p1, v7, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 265
    .local v0, "X":Ljava/math/BigInteger;
    invoke-virtual {p0, v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 266
    goto :goto_0

    .line 272
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v4    # "yTilde":I
    :pswitch_3
    array-length v5, p1

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    if-eq v5, v6, :cond_2

    .line 274
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Incorrect length for uncompressed/hybrid encoding"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_2
    invoke-static {p1, v7, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 278
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v5, v2, 0x1

    invoke-static {p1, v5, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 280
    .local v1, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 281
    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getCoordinateSystem()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    return-object v0
.end method

.method public getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .locals 1
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 115
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    return-object v0
.end method

.method public importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_0

    move-object v0, p1

    .line 148
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 10
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    const/4 v9, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v8

    if-nez v8, :cond_1

    .line 198
    :cond_0
    return-void

    .line 173
    :cond_1
    array-length v8, p1

    new-array v7, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 174
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    array-length v8, p1

    new-array v4, v8, [I

    .line 175
    .local v4, "indices":[I
    const/4 v0, 0x0

    .line 176
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_3

    .line 178
    aget-object v6, p1, v2

    .line 179
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v8

    if-nez v8, :cond_2

    .line 181
    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v0

    .line 182
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v4, v0

    move v0, v1

    .line 176
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_3
    if-eqz v0, :cond_0

    .line 191
    invoke-static {v7, v9, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implMontgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;II)V

    .line 193
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 195
    aget v3, v4, v5

    .line 196
    .local v3, "index":I
    aget-object v8, p1, v3

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, p1, v3

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V
    .locals 0
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 131
    iput-object p2, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 132
    return-void
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
