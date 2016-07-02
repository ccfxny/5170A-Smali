.class public abstract Lcom/android/org/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static DEFAULT_WINDOW_SIZE_CUTOFFS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 12
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x1

    .line 11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_0

    .line 13
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 16
    :cond_0
    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 18
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .line 19
    .local v3, "digits":I
    add-int/lit8 v11, v3, 0x1

    shr-int/lit8 v11, v11, 0x1

    new-array v8, v11, [I

    .line 21
    .local v8, "naf":[I
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v9, 0x0

    .line 22
    .local v9, "zeroes":I
    const/4 v4, 0x1

    .local v4, "i":I
    move v7, v6

    .end local v6    # "length":I
    .local v7, "length":I
    :goto_0
    if-gt v4, v3, :cond_3

    .line 24
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    .line 25
    .local v1, "_3kBit":Z
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    .line 27
    .local v5, "kBit":Z
    if-ne v1, v5, :cond_1

    .line 29
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    .line 22
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_0

    .line 33
    :cond_1
    if-eqz v5, :cond_2

    const/4 v2, -0x1

    .line 34
    .local v2, "digit":I
    :goto_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    shl-int/lit8 v11, v2, 0x10

    or-int/2addr v11, v9

    aput v11, v8, v7

    .line 35
    const/4 v9, 0x0

    goto :goto_1

    .end local v2    # "digit":I
    .end local v6    # "length":I
    .restart local v7    # "length":I
    :cond_2
    move v2, v10

    .line 33
    goto :goto_2

    .line 39
    .end local v1    # "_3kBit":Z
    .end local v5    # "kBit":Z
    :cond_3
    array-length v10, v8

    if-le v10, v7, :cond_4

    .line 41
    invoke-static {v8, v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    .line 44
    :cond_4
    return-object v8
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 12
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 49
    if-ne p0, v11, :cond_1

    .line 51
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v8

    .line 106
    :cond_0
    :goto_0
    return-object v8

    .line 54
    :cond_1
    if-lt p0, v11, :cond_2

    const/16 v11, 0x10

    if-le p0, v11, :cond_3

    .line 56
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'width\' must be in the range [2, 16]"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 58
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_4

    .line 60
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 63
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    div-int/2addr v11, p0

    add-int/lit8 v11, v11, 0x1

    new-array v8, v11, [I

    .line 66
    .local v8, "wnaf":[I
    shl-int v6, v10, p0

    .line 67
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 68
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 70
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 71
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 73
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    if-gt v5, v11, :cond_a

    .line 75
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-ne v11, v0, :cond_5

    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    and-int v1, v11, v4

    .line 84
    .local v1, "digit":I
    if-eqz v0, :cond_6

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 89
    :cond_6
    and-int v11, v1, v7

    if-eqz v11, :cond_8

    move v0, v10

    .line 90
    :goto_2
    if-eqz v0, :cond_7

    .line 92
    sub-int/2addr v1, v6

    .line 95
    :cond_7
    if-lez v2, :cond_9

    add-int/lit8 v9, v5, -0x1

    .line 96
    .local v9, "zeroes":I
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    shl-int/lit8 v11, v1, 0x10

    or-int/2addr v11, v9

    aput v11, v8, v2

    .line 97
    move v5, p0

    move v2, v3

    .line 98
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_1

    .line 89
    .end local v9    # "zeroes":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    move v9, v5

    .line 95
    goto :goto_3

    .line 101
    .end local v1    # "digit":I
    :cond_a
    array-length v10, v8

    if-le v10, v2, :cond_0

    .line 103
    invoke-static {v8, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    goto :goto_0
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 14
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 112
    .local v2, "digits":I
    new-array v5, v2, [B

    .line 114
    .local v5, "jsf":[B
    move-object v6, p0

    .local v6, "k0":Ljava/math/BigInteger;
    move-object v7, p1

    .line 115
    .local v7, "k1":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v0, 0x0

    .local v0, "d0":I
    const/4 v1, 0x0

    .line 117
    .local v1, "d1":I
    :goto_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gtz v12, :cond_0

    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gtz v12, :cond_0

    if-gtz v0, :cond_0

    if-lez v1, :cond_5

    .line 119
    :cond_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    add-int/2addr v12, v0

    and-int/lit8 v8, v12, 0x7

    .local v8, "n0":I
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    add-int/2addr v12, v1

    and-int/lit8 v9, v12, 0x7

    .line 121
    .local v9, "n1":I
    and-int/lit8 v10, v8, 0x1

    .line 122
    .local v10, "u0":I
    if-eqz v10, :cond_1

    .line 124
    and-int/lit8 v12, v8, 0x2

    sub-int/2addr v10, v12

    .line 125
    add-int v12, v8, v10

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1

    and-int/lit8 v12, v9, 0x3

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 127
    neg-int v10, v10

    .line 131
    :cond_1
    and-int/lit8 v11, v9, 0x1

    .line 132
    .local v11, "u1":I
    if-eqz v11, :cond_2

    .line 134
    and-int/lit8 v12, v9, 0x2

    sub-int/2addr v11, v12

    .line 135
    add-int v12, v9, v11

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    and-int/lit8 v12, v8, 0x3

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 137
    neg-int v11, v11

    .line 141
    :cond_2
    shl-int/lit8 v12, v0, 0x1

    add-int/lit8 v13, v10, 0x1

    if-ne v12, v13, :cond_3

    .line 143
    rsub-int/lit8 v0, v0, 0x1

    .line 145
    :cond_3
    shl-int/lit8 v12, v1, 0x1

    add-int/lit8 v13, v11, 0x1

    if-ne v12, v13, :cond_4

    .line 147
    rsub-int/lit8 v1, v1, 0x1

    .line 150
    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 151
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 153
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    shl-int/lit8 v12, v10, 0x4

    and-int/lit8 v13, v11, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v3

    move v3, v4

    .line 154
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 157
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v10    # "u0":I
    .end local v11    # "u1":I
    :cond_5
    array-length v12, v5

    if-le v12, v3, :cond_6

    .line 159
    invoke-static {v5, v3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v5

    .line 162
    :cond_6
    return-object v5
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 9
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x1

    .line 167
    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 169
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 170
    .local v2, "digits":I
    new-array v5, v2, [B

    .line 172
    .local v5, "naf":[B
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 174
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    .line 175
    .local v1, "_3kBit":Z
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    .line 177
    .local v4, "kBit":Z
    add-int/lit8 v8, v3, -0x1

    if-ne v1, v4, :cond_0

    const/4 v6, 0x0

    :goto_1
    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    if-eqz v4, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_1

    .line 180
    .end local v1    # "_3kBit":Z
    .end local v4    # "kBit":Z
    :cond_2
    return-object v5
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 11
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 197
    if-ne p0, v10, :cond_1

    .line 199
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v8

    .line 250
    :cond_0
    :goto_0
    return-object v8

    .line 202
    :cond_1
    if-lt p0, v10, :cond_2

    const/16 v10, 0x8

    if-le p0, v10, :cond_3

    .line 204
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "\'width\' must be in the range [2, 8]"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 207
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    new-array v8, v10, [B

    .line 210
    .local v8, "wnaf":[B
    shl-int v6, v9, p0

    .line 211
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 212
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 214
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 215
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 217
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt v5, v10, :cond_9

    .line 219
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v0, :cond_4

    .line 221
    add-int/lit8 v5, v5, 0x1

    .line 222
    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int v1, v10, v4

    .line 228
    .local v1, "digit":I
    if-eqz v0, :cond_5

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 233
    :cond_5
    and-int v10, v1, v7

    if-eqz v10, :cond_8

    move v0, v9

    .line 234
    :goto_2
    if-eqz v0, :cond_6

    .line 236
    sub-int/2addr v1, v6

    .line 239
    :cond_6
    if-lez v2, :cond_7

    add-int/lit8 v5, v5, -0x1

    .end local v5    # "pos":I
    :cond_7
    add-int/2addr v2, v5

    .line 240
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    int-to-byte v10, v1

    aput-byte v10, v8, v2

    .line 241
    move v5, p0

    .restart local v5    # "pos":I
    move v2, v3

    .line 242
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_1

    .line 233
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 245
    .end local v1    # "digit":I
    :cond_9
    array-length v9, v8

    if-le v9, v2, :cond_0

    .line 247
    invoke-static {v8, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v8

    goto :goto_0
.end method

.method public static getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .prologue
    .line 255
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    .line 257
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 260
    .end local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :goto_0
    return-object p0

    .restart local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_0
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .end local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    goto :goto_0
.end method

.method public static getWindowSize(I)I
    .locals 1
    .param p0, "bits"    # I

    .prologue
    .line 271
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .locals 2
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "w":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 286
    aget v1, p1, v0

    if-ge p0, v1, :cond_1

    .line 291
    :cond_0
    add-int/lit8 v1, v0, 0x2

    return v1

    .line 284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 12
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 297
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 299
    .local v8, "wnafPreCompInfo":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 300
    .local v3, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v3, :cond_0

    .line 302
    new-array v3, v11, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .end local v3    # "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    aput-object p0, v3, v10

    .line 305
    .restart local v3    # "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_0
    array-length v4, v3

    .line 306
    .local v4, "preCompLen":I
    add-int/lit8 v9, p1, -0x2

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    shl-int v6, v11, v9

    .line 308
    .local v6, "reqPreCompLen":I
    if-ge v4, v6, :cond_3

    .line 310
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwiceP()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 311
    .local v7, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v7, :cond_1

    .line 313
    aget-object v9, v3, v10

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 314
    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwiceP(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 317
    :cond_1
    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 323
    move v1, v4

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 329
    add-int/lit8 v9, v1, -0x1

    aget-object v9, v3, v9

    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v3, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 338
    .end local v1    # "i":I
    .end local v7    # "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_3
    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 340
    if-eqz p2, :cond_7

    .line 342
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 345
    .local v5, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v5, :cond_5

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, "pos":I
    new-array v5, v6, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 359
    :cond_4
    :goto_1
    if-ge v2, v6, :cond_6

    .line 361
    aget-object v9, v3, v2

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v5, v2

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    .end local v2    # "pos":I
    :cond_5
    array-length v2, v5

    .line 353
    .restart local v2    # "pos":I
    if-ge v2, v6, :cond_4

    .line 355
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_1

    .line 365
    :cond_6
    invoke-virtual {v8, v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 368
    .end local v2    # "pos":I
    .end local v5    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_7
    invoke-virtual {v0, p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 370
    return-object v8
.end method

.method private static resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "a"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 389
    new-array v0, p1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 390
    .local v0, "result":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    return-object v0
.end method

.method private static trim([BI)[B
    .locals 3
    .param p0, "a"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 375
    new-array v0, p1, [B

    .line 376
    .local v0, "result":[B
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 377
    return-object v0
.end method

.method private static trim([II)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 382
    new-array v0, p1, [I

    .line 383
    .local v0, "result":[I
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 384
    return-object v0
.end method
