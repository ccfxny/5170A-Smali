.class Lcom/android/org/bouncycastle/math/ec/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# static fields
.field private static final INTERLEAVE_TABLE:[I

.field private static final ZEROES:Ljava/lang/String; = "00000000000000000000000000000000"

.field private static final bitLengths:[B


# instance fields
.field private m_ints:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 15
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->INTERLEAVE_TABLE:[I

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLengths:[B

    return-void

    .line 15
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
        0x100
        0x101
        0x104
        0x105
        0x110
        0x111
        0x114
        0x115
        0x140
        0x141
        0x144
        0x145
        0x150
        0x151
        0x154
        0x155
        0x400
        0x401
        0x404
        0x405
        0x410
        0x411
        0x414
        0x415
        0x440
        0x441
        0x444
        0x445
        0x450
        0x451
        0x454
        0x455
        0x500
        0x501
        0x504
        0x505
        0x510
        0x511
        0x514
        0x515
        0x540
        0x541
        0x544
        0x545
        0x550
        0x551
        0x554
        0x555
        0x1000
        0x1001
        0x1004
        0x1005
        0x1010
        0x1011
        0x1014
        0x1015
        0x1040
        0x1041
        0x1044
        0x1045
        0x1050
        0x1051
        0x1054
        0x1055
        0x1100
        0x1101
        0x1104
        0x1105
        0x1110
        0x1111
        0x1114
        0x1115
        0x1140
        0x1141
        0x1144
        0x1145
        0x1150
        0x1151
        0x1154
        0x1155
        0x1400
        0x1401
        0x1404
        0x1405
        0x1410
        0x1411
        0x1414
        0x1415
        0x1440
        0x1441
        0x1444
        0x1445
        0x1450
        0x1451
        0x1454
        0x1455
        0x1500
        0x1501
        0x1504
        0x1505
        0x1510
        0x1511
        0x1514
        0x1515
        0x1540
        0x1541
        0x1544
        0x1545
        0x1550
        0x1551
        0x1554
        0x1555
        0x4000
        0x4001
        0x4004
        0x4005
        0x4010
        0x4011
        0x4014
        0x4015
        0x4040
        0x4041
        0x4044
        0x4045
        0x4050
        0x4051
        0x4054
        0x4055
        0x4100
        0x4101
        0x4104
        0x4105
        0x4110
        0x4111
        0x4114
        0x4115
        0x4140
        0x4141
        0x4144
        0x4145
        0x4150
        0x4151
        0x4154
        0x4155
        0x4400
        0x4401
        0x4404
        0x4405
        0x4410
        0x4411
        0x4414
        0x4415
        0x4440
        0x4441
        0x4444
        0x4445
        0x4450
        0x4451
        0x4454
        0x4455
        0x4500
        0x4501
        0x4504
        0x4505
        0x4510
        0x4511
        0x4514
        0x4515
        0x4540
        0x4541
        0x4544
        0x4545
        0x4550
        0x4551
        0x4554
        0x4555
        0x5000
        0x5001
        0x5004
        0x5005
        0x5010
        0x5011
        0x5014
        0x5015
        0x5040
        0x5041
        0x5044
        0x5045
        0x5050
        0x5051
        0x5054
        0x5055
        0x5100
        0x5101
        0x5104
        0x5105
        0x5110
        0x5111
        0x5114
        0x5115
        0x5140
        0x5141
        0x5144
        0x5145
        0x5150
        0x5151
        0x5154
        0x5155
        0x5400
        0x5401
        0x5404
        0x5405
        0x5410
        0x5411
        0x5414
        0x5415
        0x5440
        0x5441
        0x5444
        0x5445
        0x5450
        0x5451
        0x5454
        0x5455
        0x5500
        0x5501
        0x5504
        0x5505
        0x5510
        0x5511
        0x5514
        0x5515
        0x5540
        0x5541
        0x5544
        0x5545
        0x5550
        0x5551
        0x5554
        0x5555
    .end array-data

    .line 38
    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "intLen"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 14
    .param p1, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    const/4 v13, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gez v12, :cond_1

    .line 81
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "invalid F2m field value"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_3

    .line 86
    const/4 v12, 0x1

    new-array v12, v12, [I

    aput v13, v12, v13

    iput-object v12, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 129
    :cond_2
    return-void

    .line 90
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 91
    .local v0, "barr":[B
    array-length v4, v0

    .line 92
    .local v4, "barrLen":I
    const/4 v5, 0x0

    .line 93
    .local v5, "barrStart":I
    aget-byte v12, v0, v13

    if-nez v12, :cond_4

    .line 97
    add-int/lit8 v4, v4, -0x1

    .line 98
    const/4 v5, 0x1

    .line 100
    :cond_4
    add-int/lit8 v12, v4, 0x3

    div-int/lit8 v9, v12, 0x4

    .line 101
    .local v9, "intLen":I
    new-array v12, v9, [I

    iput-object v12, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 103
    add-int/lit8 v7, v9, -0x1

    .line 104
    .local v7, "iarrJ":I
    rem-int/lit8 v12, v4, 0x4

    add-int v10, v12, v5

    .line 105
    .local v10, "rem":I
    const/4 v11, 0x0

    .line 106
    .local v11, "temp":I
    move v2, v5

    .line 107
    .local v2, "barrI":I
    if-ge v5, v10, :cond_6

    .line 109
    :goto_0
    if-ge v2, v10, :cond_5

    .line 111
    shl-int/lit8 v11, v11, 0x8

    .line 112
    aget-byte v12, v0, v2

    and-int/lit16 v1, v12, 0xff

    .line 113
    .local v1, "barrBarrI":I
    or-int/2addr v11, v1

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "barrBarrI":I
    :cond_5
    iget-object v12, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "iarrJ":I
    .local v8, "iarrJ":I
    aput v11, v12, v7

    move v7, v8

    .line 118
    .end local v8    # "iarrJ":I
    .restart local v7    # "iarrJ":I
    :cond_6
    :goto_1
    if-ltz v7, :cond_2

    .line 120
    const/4 v11, 0x0

    .line 121
    const/4 v6, 0x0

    .local v6, "i":I
    move v3, v2

    .end local v2    # "barrI":I
    .local v3, "barrI":I
    :goto_2
    const/4 v12, 0x4

    if-ge v6, v12, :cond_7

    .line 123
    shl-int/lit8 v11, v11, 0x8

    .line 124
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "barrI":I
    .restart local v2    # "barrI":I
    aget-byte v12, v0, v3

    and-int/lit16 v1, v12, 0xff

    .line 125
    .restart local v1    # "barrBarrI":I
    or-int/2addr v11, v1

    .line 121
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    .end local v2    # "barrI":I
    .restart local v3    # "barrI":I
    goto :goto_2

    .line 127
    .end local v1    # "barrBarrI":I
    :cond_7
    iget-object v12, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aput v11, v12, v7

    .line 118
    add-int/lit8 v7, v7, -0x1

    move v2, v3

    .end local v3    # "barrI":I
    .restart local v2    # "barrI":I
    goto :goto_1
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "ints"    # [I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 75
    return-void
.end method

.method private static add([I[II)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "count"    # I

    .prologue
    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 367
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method private static addShiftedByBits([II[IIII)I
    .locals 7
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    .prologue
    .line 325
    rsub-int/lit8 v3, p5, 0x20

    .local v3, "shiftInv":I
    const/4 v2, 0x0

    .line 326
    .local v2, "prev":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 328
    add-int v4, p3, v0

    aget v1, p2, v4

    .line 329
    .local v1, "next":I
    add-int v4, p1, v0

    aget v5, p0, v4

    shl-int v6, v1, p5

    or-int/2addr v6, v2

    xor-int/2addr v5, v6

    aput v5, p0, v4

    .line 330
    ushr-int v2, v1, v3

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "next":I
    :cond_0
    return v2
.end method

.method private static addShiftedByBits([I[III)I
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "count"    # I
    .param p3, "shift"    # I

    .prologue
    .line 313
    rsub-int/lit8 v3, p3, 0x20

    .local v3, "shiftInv":I
    const/4 v2, 0x0

    .line 314
    .local v2, "prev":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 316
    aget v1, p1, v0

    .line 317
    .local v1, "next":I
    aget v4, p0, v0

    shl-int v5, v1, p3

    or-int/2addr v5, v2

    xor-int/2addr v4, v5

    aput v4, p0, v0

    .line 318
    ushr-int v2, v1, v3

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "next":I
    :cond_0
    return v2
.end method

.method private addShiftedByBits(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V
    .locals 12
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/IntArray;
    .param p2, "bits"    # I

    .prologue
    .line 280
    ushr-int/lit8 v7, p2, 0x5

    .line 281
    .local v7, "words":I
    and-int/lit8 v5, p2, 0x1f

    .line 283
    .local v5, "shift":I
    if-nez v5, :cond_1

    .line 285
    invoke-virtual {p0, p1, v7}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 290
    .local v3, "otherUsedLen":I
    if-eqz v3, :cond_0

    .line 295
    add-int v8, v3, v7

    add-int/lit8 v1, v8, 0x1

    .line 296
    .local v1, "minLen":I
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v8, v8

    if-le v1, v8, :cond_2

    .line 298
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 301
    :cond_2
    rsub-int/lit8 v6, v5, 0x20

    .local v6, "shiftInv":I
    const/4 v4, 0x0

    .line 302
    .local v4, "prev":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 304
    iget-object v8, p1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v8, v0

    .line 305
    .local v2, "next":I
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v9, v0, v7

    aget v10, v8, v9

    shl-int v11, v2, v5

    or-int/2addr v11, v4

    xor-int/2addr v10, v11

    aput v10, v8, v9

    .line 306
    ushr-int v4, v2, v6

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    .end local v2    # "next":I
    :cond_3
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v9, v3, v7

    aget v10, v8, v9

    xor-int/2addr v10, v4

    aput v10, v8, v9

    goto :goto_0
.end method

.method private static addShiftedByWords([II[II)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "count"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 359
    add-int v1, p1, v0

    aget v2, p0, v1

    aget v3, p2, v0

    xor-int/2addr v2, v3

    aput v2, p0, v1

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method private static bitLength(I)I
    .locals 3
    .param p0, "w"    # I

    .prologue
    .line 198
    ushr-int/lit8 v0, p0, 0x10

    .line 199
    .local v0, "t":I
    if-nez v0, :cond_1

    .line 201
    ushr-int/lit8 v0, p0, 0x8

    .line 202
    if-nez v0, :cond_0

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte v2, v2, p0

    .line 206
    :goto_0
    return v2

    .line 202
    :cond_0
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 205
    :cond_1
    ushr-int/lit8 v1, v0, 0x8

    .line 206
    .local v1, "u":I
    if-nez v1, :cond_2

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x18

    goto :goto_0
.end method

.method private static distribute([IIIII)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "dst1"    # I
    .param p2, "dst2"    # I
    .param p3, "src"    # I
    .param p4, "count"    # I

    .prologue
    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 375
    add-int v2, p3, v0

    aget v1, p0, v2

    .line 376
    .local v1, "v":I
    add-int v2, p1, v0

    aget v3, p0, v2

    xor-int/2addr v3, v1

    aput v3, p0, v2

    .line 377
    add-int v2, p2, v0

    aget v3, p0, v2

    xor-int/2addr v3, v1

    aput v3, p0, v2

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "v":I
    :cond_0
    return-void
.end method

.method public static getWordLength(I)I
    .locals 1
    .param p0, "bits"    # I

    .prologue
    .line 60
    add-int/lit8 v0, p0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private static interleave(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "rounds"    # I

    .prologue
    .line 714
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 716
    const v0, 0xffff

    and-int/2addr v0, p0

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result v0

    ushr-int/lit8 v1, p0, 0x10

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    or-int p0, v0, v1

    goto :goto_0

    .line 718
    :cond_0
    return p0
.end method

.method private static interleave([II[IIII)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "rounds"    # I

    .prologue
    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 708
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    invoke-static {v2, p5}, Lcom/android/org/bouncycastle/math/ec/IntArray;->interleave(II)I

    move-result v2

    aput v2, p2, v1

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    return-void
.end method

.method private static interleave16(I)I
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 723
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->INTERLEAVE_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/IntArray;->INTERLEAVE_TABLE:[I

    ushr-int/lit8 v2, p0, 0x8

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private reduceBitWise(II[I)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .prologue
    .line 646
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 648
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    sub-int v0, v1, p2

    .line 652
    .local v0, "bit":I
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    .line 653
    array-length v2, p3

    .line 654
    .local v2, "j":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 656
    aget v3, p3, v2

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_1

    .line 646
    .end local v0    # "bit":I
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 660
    :cond_1
    return-void
.end method

.method private reduceWordWise(II[I)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .prologue
    .line 664
    sub-int v5, p1, p2

    and-int/lit8 v5, v5, -0x20

    add-int v3, p2, v5

    .line 665
    .local v3, "pos":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 667
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getWord(I)I

    move-result v4

    .line 668
    .local v4, "word":I
    if-eqz v4, :cond_0

    .line 671
    sub-int v0, v1, p2

    .line 672
    .local v0, "bit":I
    invoke-virtual {p0, v0, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipWord(II)V

    .line 673
    array-length v2, p3

    .line 674
    .local v2, "j":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 676
    aget v5, p3, v2

    add-int/2addr v5, v0

    invoke-virtual {p0, v5, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipWord(II)V

    goto :goto_1

    .line 665
    .end local v0    # "bit":I
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x20

    goto :goto_0

    .line 680
    .end local v4    # "word":I
    :cond_1
    return-void
.end method

.method private resizedInts(I)[I
    .locals 4
    .param p1, "newLen"    # I

    .prologue
    const/4 v3, 0x0

    .line 211
    new-array v0, p1, [I

    .line 212
    .local v0, "newInts":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 213
    return-object v0
.end method

.method private static shiftLeft([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "count"    # I

    .prologue
    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "prev":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 261
    aget v1, p0, v0

    .line 262
    .local v1, "next":I
    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v3, v2

    aput v3, p0, v0

    .line 263
    ushr-int/lit8 v2, v1, 0x1f

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "next":I
    :cond_0
    return v2
.end method


# virtual methods
.method public addOneShifted(I)V
    .locals 2
    .param p1, "shift"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 272
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 276
    return-void
.end method

.method public addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V
    .locals 7
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/IntArray;
    .param p2, "words"    # I

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 338
    .local v2, "otherUsedLen":I
    if-nez v2, :cond_1

    .line 353
    :cond_0
    return-void

    .line 343
    :cond_1
    add-int v1, v2, p2

    .line 344
    .local v1, "minLen":I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v3, v3

    if-le v1, v3, :cond_2

    .line 346
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 349
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v4, p2, v0

    aget v5, v3, v4

    iget-object v6, p1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    aput v5, v3, v4

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearBit(I)V
    .locals 6
    .param p1, "n"    # I

    .prologue
    .line 467
    ushr-int/lit8 v2, p1, 0x5

    .line 469
    .local v2, "theInt":I
    and-int/lit8 v1, p1, 0x1f

    .line 470
    .local v1, "theBit":I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 471
    .local v0, "setter":I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v4, v5

    aput v4, v3, v2

    .line 472
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 833
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public degree()I
    .locals 4

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v2

    .line 185
    .local v0, "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 187
    const/4 v2, 0x0

    .line 193
    :goto_0
    return v2

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v2, v0

    .line 191
    .local v1, "w":I
    if-eqz v1, :cond_0

    .line 193
    shl-int/lit8 v2, v0, 0x5

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLength(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 799
    instance-of v4, p1, Lcom/android/org/bouncycastle/math/ec/IntArray;

    if-nez v4, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 803
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/IntArray;

    .line 804
    .local v1, "other":Lcom/android/org/bouncycastle/math/ec/IntArray;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 805
    .local v2, "usedLen":I
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 809
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 811
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    iget-object v5, v1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 816
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public flipBit(I)V
    .locals 5
    .param p1, "n"    # I

    .prologue
    .line 447
    ushr-int/lit8 v2, p1, 0x5

    .line 449
    .local v2, "theInt":I
    and-int/lit8 v1, p1, 0x1f

    .line 450
    .local v1, "theBit":I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 451
    .local v0, "flipper":I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    xor-int/2addr v4, v0

    aput v4, v3, v2

    .line 452
    return-void
.end method

.method public flipWord(II)V
    .locals 6
    .param p1, "bit"    # I
    .param p2, "word"    # I

    .prologue
    .line 388
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v3

    .line 389
    .local v0, "len":I
    ushr-int/lit8 v1, p1, 0x5

    .line 390
    .local v1, "n":I
    if-ge v1, v0, :cond_0

    .line 392
    and-int/lit8 v2, p1, 0x1f

    .line 393
    .local v2, "shift":I
    if-nez v2, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v1

    xor-int/2addr v4, p2

    aput v4, v3, v1

    .line 406
    .end local v2    # "shift":I
    :cond_0
    :goto_0
    return-void

    .line 399
    .restart local v2    # "shift":I
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v1

    shl-int v5, p2, v2

    xor-int/2addr v4, v5

    aput v4, v3, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 402
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v1

    rsub-int/lit8 v5, v2, 0x20

    ushr-int v5, p2, v5

    xor-int/2addr v4, v5

    aput v4, v3, v1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public getUsedLengthFrom(I)I
    .locals 3
    .param p1, "from"    # I

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 152
    .local v0, "a":[I
    array-length v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 154
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 177
    :goto_0
    return v1

    .line 160
    :cond_0
    aget v2, v0, v1

    if-eqz v2, :cond_2

    .line 162
    :cond_1
    add-int/lit8 p1, p1, -0x1

    aget v1, v0, p1

    if-eqz v1, :cond_1

    .line 165
    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget v2, v0, p1

    if-eqz v2, :cond_3

    .line 172
    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    .line 175
    :cond_3
    if-gtz p1, :cond_2

    goto :goto_0
.end method

.method public getWord(I)I
    .locals 6
    .param p1, "bit"    # I

    .prologue
    .line 410
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v4

    .line 411
    .local v0, "len":I
    ushr-int/lit8 v1, p1, 0x5

    .line 412
    .local v1, "n":I
    if-lt v1, v0, :cond_1

    .line 414
    const/4 v2, 0x0

    .line 426
    :cond_0
    :goto_0
    return v2

    .line 416
    :cond_1
    and-int/lit8 v3, p1, 0x1f

    .line 417
    .local v3, "shift":I
    if-nez v3, :cond_2

    .line 419
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v4, v1

    goto :goto_0

    .line 421
    :cond_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    ushr-int v2, v4, v3

    .line 422
    .local v2, "result":I
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 424
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    rsub-int/lit8 v5, v3, 0x20

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 822
    .local v2, "usedLen":I
    const/4 v0, 0x1

    .line 823
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 825
    mul-int/lit8 v0, v0, 0x1f

    .line 826
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v1

    xor-int/2addr v0, v3

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    :cond_0
    return v0
.end method

.method public isZero()Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 134
    .local v0, "a":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 136
    aget v2, v0, v1

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 141
    :goto_1
    return v2

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .locals 12
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 732
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->degree()I

    move-result v7

    .line 733
    .local v7, "uzDegree":I
    if-ne v7, v11, :cond_0

    .line 794
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/IntArray;
    :goto_0
    return-object p0

    .line 739
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/IntArray;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/IntArray;

    .line 741
    .local v5, "uz":Lcom/android/org/bouncycastle/math/ec/IntArray;
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getWordLength(I)I

    move-result v4

    .line 744
    .local v4, "t":I
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 745
    .local v8, "vz":Lcom/android/org/bouncycastle/math/ec/IntArray;
    invoke-virtual {v8, p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 746
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 747
    aget v9, p2, v10

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 748
    array-length v9, p2

    if-le v9, v11, :cond_1

    .line 750
    aget v9, p2, v11

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 751
    const/4 v9, 0x2

    aget v9, p2, v9

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 755
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 756
    .local v0, "g1z":Lcom/android/org/bouncycastle/math/ec/IntArray;
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 757
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 759
    .local v2, "g2z":Lcom/android/org/bouncycastle/math/ec/IntArray;
    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    .line 762
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/IntArray;->degree()I

    move-result v9

    sub-int v3, v7, v9

    .line 765
    .local v3, "j":I
    if-gez v3, :cond_3

    .line 767
    move-object v6, v5

    .line 768
    .local v6, "uzCopy":Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object v5, v8

    .line 769
    move-object v8, v6

    .line 771
    move-object v1, v0

    .line 772
    .local v1, "g1zCopy":Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object v0, v2

    .line 773
    move-object v2, v1

    .line 775
    neg-int v3, v3

    .line 784
    .end local v1    # "g1zCopy":Lcom/android/org/bouncycastle/math/ec/IntArray;
    .end local v6    # "uzCopy":Lcom/android/org/bouncycastle/math/ec/IntArray;
    :cond_3
    invoke-direct {v5, v8, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShiftedByBits(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    .line 785
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/IntArray;->degree()I

    move-result v7

    .line 789
    if-eqz v7, :cond_2

    .line 791
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShiftedByBits(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    goto :goto_1

    .end local v3    # "j":I
    :cond_4
    move-object p0, v2

    .line 794
    goto :goto_0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/IntArray;I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .locals 32
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/IntArray;
    .param p2, "m"    # I

    .prologue
    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v7

    .line 477
    .local v7, "aLen":I
    if-nez v7, :cond_0

    .line 479
    new-instance v27, Lcom/android/org/bouncycastle/math/ec/IntArray;

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 580
    :goto_0
    return-object v27

    .line 482
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v21

    .line 483
    .local v21, "bLen":I
    if-nez v21, :cond_1

    .line 485
    new-instance v27, Lcom/android/org/bouncycastle/math/ec/IntArray;

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    goto :goto_0

    .line 488
    :cond_1
    move-object/from16 v15, p0

    .local v15, "A":Lcom/android/org/bouncycastle/math/ec/IntArray;
    move-object/from16 v16, p1

    .line 489
    .local v16, "B":Lcom/android/org/bouncycastle/math/ec/IntArray;
    move/from16 v0, v21

    if-le v7, v0, :cond_2

    .line 491
    move-object/from16 v15, p1

    move-object/from16 v16, p0

    .line 492
    move/from16 v30, v7

    .local v30, "tmp":I
    move/from16 v7, v21

    move/from16 v21, v30

    .line 495
    .end local v30    # "tmp":I
    :cond_2
    const/4 v3, 0x1

    if-ne v7, v3, :cond_6

    .line 497
    iget-object v3, v15, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v4, 0x0

    aget v18, v3, v4

    .line 498
    .local v18, "a":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    move-object/from16 v20, v0

    .line 499
    .local v20, "b":[I
    add-int v3, v7, v21

    new-array v5, v3, [I

    .line 500
    .local v5, "c":[I
    and-int/lit8 v3, v18, 0x1

    if-eqz v3, :cond_3

    .line 502
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->add([I[II)V

    .line 504
    :cond_3
    const/16 v26, 0x1

    .line 505
    .local v26, "k":I
    :goto_1
    ushr-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_5

    .line 507
    and-int/lit8 v3, v18, 0x1

    if-eqz v3, :cond_4

    .line 509
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-static {v5, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShiftedByBits([I[III)I

    .line 511
    :cond_4
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 513
    :cond_5
    new-instance v27, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    goto :goto_0

    .line 517
    .end local v5    # "c":[I
    .end local v18    # "a":I
    .end local v20    # "b":[I
    .end local v26    # "k":I
    :cond_6
    const/16 v3, 0x8

    if-gt v7, v3, :cond_8

    const/4 v8, 0x1

    .line 519
    .local v8, "complexity":I
    :goto_2
    const/4 v3, 0x1

    shl-int v31, v3, v8

    .line 520
    .local v31, "width":I
    const/16 v3, 0x20

    ushr-int v29, v3, v8

    .line 522
    .local v29, "shifts":I
    move/from16 v6, v21

    .line 523
    .local v6, "bExt":I
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v4, v21, -0x1

    aget v3, v3, v4

    rsub-int/lit8 v4, v29, 0x21

    ushr-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 525
    add-int/lit8 v6, v6, 0x1

    .line 528
    :cond_7
    add-int v13, v6, v7

    .line 530
    .local v13, "cLen":I
    shl-int v3, v13, v31

    new-array v5, v3, [I

    .line 531
    .restart local v5    # "c":[I
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v4, 0x0

    const/4 v9, 0x0

    move/from16 v0, v21

    invoke-static {v3, v4, v5, v9, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 532
    iget-object v3, v15, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/IntArray;->interleave([II[IIII)V

    .line 534
    const/4 v3, 0x1

    shl-int v3, v3, v31

    new-array v0, v3, [I

    move-object/from16 v22, v0

    .line 535
    .local v22, "ci":[I
    const/16 v24, 0x1

    .local v24, "i":I
    :goto_3
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v24

    if-ge v0, v3, :cond_9

    .line 537
    add-int/lit8 v3, v24, -0x1

    aget v3, v22, v3

    add-int/2addr v3, v13

    aput v3, v22, v24

    .line 535
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 517
    .end local v5    # "c":[I
    .end local v6    # "bExt":I
    .end local v8    # "complexity":I
    .end local v13    # "cLen":I
    .end local v22    # "ci":[I
    .end local v24    # "i":I
    .end local v29    # "shifts":I
    .end local v31    # "width":I
    :cond_8
    const/4 v8, 0x2

    goto :goto_2

    .line 540
    .restart local v5    # "c":[I
    .restart local v6    # "bExt":I
    .restart local v8    # "complexity":I
    .restart local v13    # "cLen":I
    .restart local v22    # "ci":[I
    .restart local v24    # "i":I
    .restart local v29    # "shifts":I
    .restart local v31    # "width":I
    :cond_9
    const/4 v3, 0x1

    shl-int v3, v3, v31

    add-int/lit8 v17, v3, -0x1

    .line 542
    .local v17, "MASK":I
    const/16 v26, 0x0

    .line 545
    .restart local v26    # "k":I
    :goto_4
    const/16 v19, 0x0

    .local v19, "aPos":I
    :goto_5
    move/from16 v0, v19

    if-ge v0, v7, :cond_b

    .line 547
    add-int v3, v6, v19

    aget v3, v5, v3

    ushr-int v3, v3, v26

    and-int v25, v3, v17

    .line 548
    .local v25, "index":I
    if-eqz v25, :cond_a

    .line 550
    aget v3, v22, v25

    add-int v3, v3, v19

    invoke-static {v5, v3, v5, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShiftedByWords([II[II)V

    .line 545
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 554
    .end local v25    # "index":I
    :cond_b
    add-int v26, v26, v31

    const/16 v3, 0x20

    move/from16 v0, v26

    if-lt v0, v3, :cond_c

    .line 562
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "ciPos":I
    ushr-int/lit8 v28, v23, 0x1

    .local v28, "pow2":I
    const/16 v14, 0x20

    .line 563
    .local v14, "offset":I
    :goto_6
    add-int/lit8 v23, v23, -0x1

    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_e

    .line 565
    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 567
    sub-int v14, v14, v29

    .line 568
    const/4 v3, 0x1

    aget v10, v22, v3

    aget v12, v22, v28

    move-object v9, v5

    move-object v11, v5

    invoke-static/range {v9 .. v14}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShiftedByBits([II[IIII)I

    .line 569
    ushr-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 559
    .end local v14    # "offset":I
    .end local v23    # "ciPos":I
    .end local v28    # "pow2":I
    :cond_c
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;->shiftLeft([II)I

    goto :goto_4

    .line 573
    .restart local v14    # "offset":I
    .restart local v23    # "ciPos":I
    .restart local v28    # "pow2":I
    :cond_d
    aget v3, v22, v28

    sub-int v4, v23, v28

    aget v4, v22, v4

    aget v9, v22, v23

    invoke-static {v5, v3, v4, v9, v13}, Lcom/android/org/bouncycastle/math/ec/IntArray;->distribute([IIIII)V

    goto :goto_6

    .line 578
    :cond_e
    new-instance v27, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 579
    .local v27, "p":Lcom/android/org/bouncycastle/math/ec/IntArray;
    const/4 v3, 0x1

    aget v3, v22, v3

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v9, 0x0

    invoke-static {v5, v3, v4, v9, v13}, Ljava/lang/System;->arraycopy([II[III)V

    goto/16 :goto_0
.end method

.method public reduce(I[I)V
    .locals 10
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 612
    .local v2, "len":I
    add-int/lit8 v6, p1, 0x1f

    ushr-int/lit8 v3, v6, 0x5

    .line 613
    .local v3, "mLen":I
    if-ge v2, v3, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    shl-int/lit8 v0, p1, 0x1

    .line 619
    .local v0, "_2m":I
    add-int/lit8 v6, v0, -0x2

    shl-int/lit8 v7, v2, 0x5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 621
    .local v5, "pos":I
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    aget v1, p2, v6

    .line 622
    .local v1, "kMax":I
    add-int/lit8 v6, p1, -0x1f

    if-ge v1, v6, :cond_3

    .line 624
    invoke-direct {p0, v5, p1, p2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->reduceWordWise(II[I)V

    .line 632
    :goto_1
    and-int/lit8 v4, p1, 0x1f

    .line 633
    .local v4, "partial":I
    if-eqz v4, :cond_2

    .line 635
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v7, v3, -0x1

    aget v8, v6, v7

    const/4 v9, 0x1

    shl-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    aput v8, v6, v7

    .line 638
    :cond_2
    if-le v2, v3, :cond_0

    .line 640
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_0

    .line 628
    .end local v4    # "partial":I
    :cond_3
    invoke-direct {p0, v5, p1, p2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->reduceBitWise(II[I)V

    goto :goto_1
.end method

.method public setBit(I)V
    .locals 5
    .param p1, "n"    # I

    .prologue
    .line 457
    ushr-int/lit8 v2, p1, 0x5

    .line 459
    .local v2, "theInt":I
    and-int/lit8 v1, p1, 0x1f

    .line 460
    .local v1, "theBit":I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 461
    .local v0, "setter":I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    or-int/2addr v4, v0

    aput v4, v3, v2

    .line 462
    return-void
.end method

.method public square(I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .locals 8
    .param p1, "m"    # I

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    .line 685
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 701
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/IntArray;
    :goto_0
    return-object p0

    .line 690
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/IntArray;
    :cond_0
    shl-int/lit8 v0, v1, 0x1

    .line 691
    .local v0, "_2len":I
    new-array v5, v0, [I

    .line 693
    .local v5, "r":[I
    const/4 v3, 0x0

    .local v3, "pos":I
    move v4, v3

    .line 694
    .end local v3    # "pos":I
    .local v4, "pos":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 696
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    ushr-int/lit8 v7, v4, 0x1

    aget v2, v6, v7

    .line 697
    .local v2, "mi":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    const v6, 0xffff

    and-int/2addr v6, v2

    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result v6

    aput v6, v5, v4

    .line 698
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    ushr-int/lit8 v6, v2, 0x10

    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result v6

    aput v6, v5, v3

    goto :goto_1

    .line 701
    .end local v2    # "mi":I
    :cond_1
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/IntArray;
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    goto :goto_0
.end method

.method public testBit(I)Z
    .locals 5
    .param p1, "n"    # I

    .prologue
    const/4 v3, 0x1

    .line 437
    ushr-int/lit8 v2, p1, 0x5

    .line 439
    .local v2, "theInt":I
    and-int/lit8 v1, p1, 0x1f

    .line 440
    .local v1, "theBit":I
    shl-int v0, v3, v1

    .line 441
    .local v0, "tester":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v2

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public testBitZero()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 431
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 13

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v10

    .line 219
    .local v10, "usedLen":I
    if-nez v10, :cond_0

    .line 221
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 253
    :goto_0
    return-object v11

    .line 224
    :cond_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v12, v10, -0x1

    aget v4, v11, v12

    .line 225
    .local v4, "highestInt":I
    const/4 v11, 0x4

    new-array v7, v11, [B

    .line 226
    .local v7, "temp":[B
    const/4 v1, 0x0

    .line 227
    .local v1, "barrI":I
    const/4 v9, 0x0

    .line 228
    .local v9, "trailingZeroBytesDone":Z
    const/4 v6, 0x3

    .local v6, "j":I
    move v2, v1

    .end local v1    # "barrI":I
    .local v2, "barrI":I
    :goto_1
    if-ltz v6, :cond_2

    .line 230
    mul-int/lit8 v11, v6, 0x8

    ushr-int v11, v4, v11

    int-to-byte v8, v11

    .line 231
    .local v8, "thisByte":B
    if-nez v9, :cond_1

    if-eqz v8, :cond_6

    .line 233
    :cond_1
    const/4 v9, 0x1

    .line 234
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    aput-byte v8, v7, v2

    .line 228
    :goto_2
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1    # "barrI":I
    .restart local v2    # "barrI":I
    goto :goto_1

    .line 238
    .end local v8    # "thisByte":B
    :cond_2
    add-int/lit8 v11, v10, -0x1

    mul-int/lit8 v11, v11, 0x4

    add-int v3, v11, v2

    .line 239
    .local v3, "barrLen":I
    new-array v0, v3, [B

    .line 240
    .local v0, "barr":[B
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_3

    .line 242
    aget-byte v11, v7, v6

    aput-byte v11, v0, v6

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 246
    :cond_3
    add-int/lit8 v5, v10, -0x2

    .local v5, "iarrJ":I
    move v1, v2

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    :goto_4
    if-ltz v5, :cond_5

    .line 248
    const/4 v6, 0x3

    move v2, v1

    .end local v1    # "barrI":I
    .restart local v2    # "barrI":I
    :goto_5
    if-ltz v6, :cond_4

    .line 250
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v11, v11, v5

    mul-int/lit8 v12, v6, 0x8

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v2

    .line 248
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1    # "barrI":I
    .restart local v2    # "barrI":I
    goto :goto_5

    .line 246
    :cond_4
    add-int/lit8 v5, v5, -0x1

    move v1, v2

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    goto :goto_4

    .line 253
    :cond_5
    new-instance v11, Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    .end local v0    # "barr":[B
    .end local v1    # "barrI":I
    .end local v3    # "barrLen":I
    .end local v5    # "iarrJ":I
    .restart local v2    # "barrI":I
    .restart local v8    # "thisByte":B
    :cond_6
    move v1, v2

    .end local v2    # "barrI":I
    .restart local v1    # "barrI":I
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    .line 839
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 841
    const-string v4, "0"

    .line 858
    :goto_0
    return-object v4

    .line 844
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 845
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 847
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 851
    .local v1, "len":I
    const/16 v4, 0x20

    if-ge v1, v4, :cond_1

    .line 853
    const-string v4, "00000000000000000000000000000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 856
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 858
    .end local v1    # "len":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
