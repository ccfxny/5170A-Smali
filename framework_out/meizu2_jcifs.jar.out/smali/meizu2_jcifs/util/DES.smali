.class public Lmeizu2_jcifs/util/DES;
.super Ljava/lang/Object;
.source "DES.java"


# static fields
.field private static SP1:[I

.field private static SP2:[I

.field private static SP3:[I

.field private static SP4:[I

.field private static SP5:[I

.field private static SP6:[I

.field private static SP7:[I

.field private static SP8:[I

.field private static bigbyte:[I

.field private static bytebit:[B

.field private static pc1:[B

.field private static pc2:[B

.field private static totrot:[I


# instance fields
.field private decryptKeys:[I

.field private encryptKeys:[I

.field private tempInts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 344
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu2_jcifs/util/DES;->bytebit:[B

    .line 348
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmeizu2_jcifs/util/DES;->bigbyte:[I

    .line 356
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lmeizu2_jcifs/util/DES;->pc1:[B

    .line 366
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmeizu2_jcifs/util/DES;->totrot:[I

    .line 370
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lmeizu2_jcifs/util/DES;->pc2:[B

    .line 381
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP1:[I

    .line 399
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP2:[I

    .line 417
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP3:[I

    .line 435
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP4:[I

    .line 453
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP5:[I

    .line 471
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP6:[I

    .line 489
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP7:[I

    .line 507
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lmeizu2_jcifs/util/DES;->SP8:[I

    return-void

    .line 344
    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data

    .line 348
    :array_1
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    .line 356
    :array_2
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    .line 366
    :array_3
    .array-data 4
        0x1
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0xf
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1b
        0x1c
    .end array-data

    .line 370
    :array_4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    .line 381
    :array_5
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    .line 399
    :array_6
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    .line 417
    :array_7
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    .line 435
    :array_8
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    .line 453
    :array_9
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    .line 471
    :array_a
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    .line 489
    :array_b
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    .line 507
    :array_c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-array v0, v1, [I

    iput-object v0, p0, Lmeizu2_jcifs/util/DES;->encryptKeys:[I

    .line 77
    new-array v0, v1, [I

    iput-object v0, p0, Lmeizu2_jcifs/util/DES;->decryptKeys:[I

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    .line 84
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    const/16 v2, 0x20

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-array v1, v2, [I

    iput-object v1, p0, Lmeizu2_jcifs/util/DES;->encryptKeys:[I

    .line 77
    new-array v1, v2, [I

    iput-object v1, p0, Lmeizu2_jcifs/util/DES;->decryptKeys:[I

    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    .line 88
    array-length v1, p1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 89
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 90
    .local v0, "key8":[B
    invoke-static {p1, v0}, Lmeizu2_jcifs/util/DES;->makeSMBKey([B[B)V

    .line 91
    invoke-virtual {p0, v0}, Lmeizu2_jcifs/util/DES;->setKey([B)V

    .line 95
    .end local v0    # "key8":[B
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lmeizu2_jcifs/util/DES;->setKey([B)V

    goto :goto_0
.end method

.method private cookey([I[I)V
    .locals 10
    .param p1, "raw"    # [I
    .param p2, "KnL"    # [I

    .prologue
    const/high16 v9, 0xfc0000

    const v8, 0x3f000

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v4, 0x0

    .local v4, "rawi":I
    const/4 v0, 0x0

    .local v0, "KnLi":I
    move v5, v4

    .end local v4    # "rawi":I
    .local v5, "rawi":I
    :goto_0
    const/16 v6, 0x10

    if-ge v1, v6, :cond_0

    .line 175
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "rawi":I
    .restart local v4    # "rawi":I
    aget v2, p1, v5

    .line 176
    .local v2, "raw0":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "rawi":I
    .restart local v5    # "rawi":I
    aget v3, p1, v4

    .line 177
    .local v3, "raw1":I
    and-int v6, v2, v9

    shl-int/lit8 v6, v6, 0x6

    aput v6, p2, v0

    .line 178
    aget v6, p2, v0

    and-int/lit16 v7, v2, 0xfc0

    shl-int/lit8 v7, v7, 0xa

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 179
    aget v6, p2, v0

    and-int v7, v3, v9

    ushr-int/lit8 v7, v7, 0xa

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 180
    aget v6, p2, v0

    and-int/lit16 v7, v3, 0xfc0

    ushr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    and-int v6, v2, v8

    shl-int/lit8 v6, v6, 0xc

    aput v6, p2, v0

    .line 183
    aget v6, p2, v0

    and-int/lit8 v7, v2, 0x3f

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 184
    aget v6, p2, v0

    and-int v7, v3, v8

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 185
    aget v6, p2, v0

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "raw0":I
    .end local v3    # "raw1":I
    :cond_0
    return-void
.end method

.method private decrypt([BI[BI)V
    .locals 5
    .param p1, "cipherText"    # [B
    .param p2, "cipherOff"    # I
    .param p3, "clearText"    # [B
    .param p4, "clearOff"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    invoke-static {p1, p2, v0, v3, v4}, Lmeizu2_jcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 203
    iget-object v0, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    iget-object v1, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    iget-object v2, p0, Lmeizu2_jcifs/util/DES;->decryptKeys:[I

    invoke-direct {p0, v0, v1, v2}, Lmeizu2_jcifs/util/DES;->des([I[I[I)V

    .line 204
    iget-object v0, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    invoke-static {v0, v3, p3, p4, v4}, Lmeizu2_jcifs/util/DES;->spreadIntsToBytes([II[BII)V

    .line 205
    return-void
.end method

.method private des([I[I[I)V
    .locals 9
    .param p1, "inInts"    # [I
    .param p2, "outInts"    # [I
    .param p3, "keys"    # [I

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, "keysi":I
    const/4 v7, 0x0

    aget v3, p1, v7

    .line 215
    .local v3, "leftt":I
    const/4 v7, 0x1

    aget v4, p1, v7

    .line 217
    .local v4, "right":I
    ushr-int/lit8 v7, v3, 0x4

    xor-int/2addr v7, v4

    const v8, 0xf0f0f0f

    and-int v6, v7, v8

    .line 218
    .local v6, "work":I
    xor-int/2addr v4, v6

    .line 219
    shl-int/lit8 v7, v6, 0x4

    xor-int/2addr v3, v7

    .line 221
    ushr-int/lit8 v7, v3, 0x10

    xor-int/2addr v7, v4

    const v8, 0xffff

    and-int v6, v7, v8

    .line 222
    xor-int/2addr v4, v6

    .line 223
    shl-int/lit8 v7, v6, 0x10

    xor-int/2addr v3, v7

    .line 225
    ushr-int/lit8 v7, v4, 0x2

    xor-int/2addr v7, v3

    const v8, 0x33333333

    and-int v6, v7, v8

    .line 226
    xor-int/2addr v3, v6

    .line 227
    shl-int/lit8 v7, v6, 0x2

    xor-int/2addr v4, v7

    .line 229
    ushr-int/lit8 v7, v4, 0x8

    xor-int/2addr v7, v3

    const v8, 0xff00ff

    and-int v6, v7, v8

    .line 230
    xor-int/2addr v3, v6

    .line 231
    shl-int/lit8 v7, v6, 0x8

    xor-int/2addr v4, v7

    .line 232
    shl-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v8, v4, 0x1f

    and-int/lit8 v8, v8, 0x1

    or-int v4, v7, v8

    .line 234
    xor-int v7, v3, v4

    const v8, -0x55555556

    and-int v6, v7, v8

    .line 235
    xor-int/2addr v3, v6

    .line 236
    xor-int/2addr v4, v6

    .line 237
    shl-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v8, v3, 0x1f

    and-int/lit8 v8, v8, 0x1

    or-int v3, v7, v8

    .line 239
    const/4 v5, 0x0

    .local v5, "round":I
    move v2, v1

    .end local v1    # "keysi":I
    .local v2, "keysi":I
    :goto_0
    const/16 v7, 0x8

    if-ge v5, v7, :cond_0

    .line 240
    shl-int/lit8 v7, v4, 0x1c

    ushr-int/lit8 v8, v4, 0x4

    or-int v6, v7, v8

    .line 241
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "keysi":I
    .restart local v1    # "keysi":I
    aget v7, p3, v2

    xor-int/2addr v6, v7

    .line 242
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP7:[I

    and-int/lit8 v8, v6, 0x3f

    aget v0, v7, v8

    .line 243
    .local v0, "fval":I
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP5:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 244
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP3:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 245
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP1:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 246
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "keysi":I
    .restart local v2    # "keysi":I
    aget v7, p3, v1

    xor-int v6, v4, v7

    .line 247
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP8:[I

    and-int/lit8 v8, v6, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 248
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP6:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 249
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP4:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 250
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP2:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 251
    xor-int/2addr v3, v0

    .line 252
    shl-int/lit8 v7, v3, 0x1c

    ushr-int/lit8 v8, v3, 0x4

    or-int v6, v7, v8

    .line 253
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "keysi":I
    .restart local v1    # "keysi":I
    aget v7, p3, v2

    xor-int/2addr v6, v7

    .line 254
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP7:[I

    and-int/lit8 v8, v6, 0x3f

    aget v0, v7, v8

    .line 255
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP5:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 256
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP3:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 257
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP1:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 258
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "keysi":I
    .restart local v2    # "keysi":I
    aget v7, p3, v1

    xor-int v6, v3, v7

    .line 259
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP8:[I

    and-int/lit8 v8, v6, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 260
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP6:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 261
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP4:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 262
    sget-object v7, Lmeizu2_jcifs/util/DES;->SP2:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 263
    xor-int/2addr v4, v0

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 266
    .end local v0    # "fval":I
    :cond_0
    shl-int/lit8 v7, v4, 0x1f

    ushr-int/lit8 v8, v4, 0x1

    or-int v4, v7, v8

    .line 267
    xor-int v7, v3, v4

    const v8, -0x55555556

    and-int v6, v7, v8

    .line 268
    xor-int/2addr v3, v6

    .line 269
    xor-int/2addr v4, v6

    .line 270
    shl-int/lit8 v7, v3, 0x1f

    ushr-int/lit8 v8, v3, 0x1

    or-int v3, v7, v8

    .line 271
    ushr-int/lit8 v7, v3, 0x8

    xor-int/2addr v7, v4

    const v8, 0xff00ff

    and-int v6, v7, v8

    .line 272
    xor-int/2addr v4, v6

    .line 273
    shl-int/lit8 v7, v6, 0x8

    xor-int/2addr v3, v7

    .line 274
    ushr-int/lit8 v7, v3, 0x2

    xor-int/2addr v7, v4

    const v8, 0x33333333

    and-int v6, v7, v8

    .line 275
    xor-int/2addr v4, v6

    .line 276
    shl-int/lit8 v7, v6, 0x2

    xor-int/2addr v3, v7

    .line 277
    ushr-int/lit8 v7, v4, 0x10

    xor-int/2addr v7, v3

    const v8, 0xffff

    and-int v6, v7, v8

    .line 278
    xor-int/2addr v3, v6

    .line 279
    shl-int/lit8 v7, v6, 0x10

    xor-int/2addr v4, v7

    .line 280
    ushr-int/lit8 v7, v4, 0x4

    xor-int/2addr v7, v3

    const v8, 0xf0f0f0f

    and-int v6, v7, v8

    .line 281
    xor-int/2addr v3, v6

    .line 282
    shl-int/lit8 v7, v6, 0x4

    xor-int/2addr v4, v7

    .line 283
    const/4 v7, 0x0

    aput v4, p2, v7

    .line 284
    const/4 v7, 0x1

    aput v3, p2, v7

    .line 285
    return-void
.end method

.method private deskey([BZ[I)V
    .locals 10
    .param p1, "keyBlock"    # [B
    .param p2, "encrypting"    # Z
    .param p3, "KnL"    # [I

    .prologue
    .line 127
    const/16 v8, 0x38

    new-array v6, v8, [I

    .line 128
    .local v6, "pc1m":[I
    const/16 v8, 0x38

    new-array v7, v8, [I

    .line 129
    .local v7, "pcr":[I
    const/16 v8, 0x20

    new-array v2, v8, [I

    .line 131
    .local v2, "kn":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v8, 0x38

    if-ge v1, v8, :cond_1

    .line 132
    sget-object v8, Lmeizu2_jcifs/util/DES;->pc1:[B

    aget-byte v3, v8, v1

    .line 133
    .local v3, "l":I
    and-int/lit8 v4, v3, 0x7

    .line 134
    .local v4, "m":I
    ushr-int/lit8 v8, v3, 0x3

    aget-byte v8, p1, v8

    sget-object v9, Lmeizu2_jcifs/util/DES;->bytebit:[B

    aget-byte v9, v9, v4

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_1
    aput v8, v6, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 137
    .end local v3    # "l":I
    .end local v4    # "m":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v8, 0x10

    if-ge v0, v8, :cond_a

    .line 139
    if-eqz p2, :cond_2

    .line 140
    shl-int/lit8 v4, v0, 0x1

    .line 143
    .restart local v4    # "m":I
    :goto_3
    add-int/lit8 v5, v4, 0x1

    .line 144
    .local v5, "n":I
    const/4 v8, 0x0

    aput v8, v2, v5

    aput v8, v2, v4

    .line 145
    const/4 v1, 0x0

    :goto_4
    const/16 v8, 0x1c

    if-ge v1, v8, :cond_4

    .line 146
    sget-object v8, Lmeizu2_jcifs/util/DES;->totrot:[I

    aget v8, v8, v0

    add-int v3, v1, v8

    .line 147
    .restart local v3    # "l":I
    const/16 v8, 0x1c

    if-ge v3, v8, :cond_3

    .line 148
    aget v8, v6, v3

    aput v8, v7, v1

    .line 145
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 142
    .end local v3    # "l":I
    .end local v4    # "m":I
    .end local v5    # "n":I
    :cond_2
    rsub-int/lit8 v8, v0, 0xf

    shl-int/lit8 v4, v8, 0x1

    .restart local v4    # "m":I
    goto :goto_3

    .line 150
    .restart local v3    # "l":I
    .restart local v5    # "n":I
    :cond_3
    add-int/lit8 v8, v3, -0x1c

    aget v8, v6, v8

    aput v8, v7, v1

    goto :goto_5

    .line 152
    .end local v3    # "l":I
    :cond_4
    const/16 v1, 0x1c

    :goto_6
    const/16 v8, 0x38

    if-ge v1, v8, :cond_6

    .line 153
    sget-object v8, Lmeizu2_jcifs/util/DES;->totrot:[I

    aget v8, v8, v0

    add-int v3, v1, v8

    .line 154
    .restart local v3    # "l":I
    const/16 v8, 0x38

    if-ge v3, v8, :cond_5

    .line 155
    aget v8, v6, v3

    aput v8, v7, v1

    .line 152
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 157
    :cond_5
    add-int/lit8 v8, v3, -0x1c

    aget v8, v6, v8

    aput v8, v7, v1

    goto :goto_7

    .line 159
    .end local v3    # "l":I
    :cond_6
    const/4 v1, 0x0

    :goto_8
    const/16 v8, 0x18

    if-ge v1, v8, :cond_9

    .line 160
    sget-object v8, Lmeizu2_jcifs/util/DES;->pc2:[B

    aget-byte v8, v8, v1

    aget v8, v7, v8

    if-eqz v8, :cond_7

    .line 161
    aget v8, v2, v4

    sget-object v9, Lmeizu2_jcifs/util/DES;->bigbyte:[I

    aget v9, v9, v1

    or-int/2addr v8, v9

    aput v8, v2, v4

    .line 162
    :cond_7
    sget-object v8, Lmeizu2_jcifs/util/DES;->pc2:[B

    add-int/lit8 v9, v1, 0x18

    aget-byte v8, v8, v9

    aget v8, v7, v8

    if-eqz v8, :cond_8

    .line 163
    aget v8, v2, v5

    sget-object v9, Lmeizu2_jcifs/util/DES;->bigbyte:[I

    aget v9, v9, v1

    or-int/2addr v8, v9

    aput v8, v2, v5

    .line 159
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 137
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    .end local v4    # "m":I
    .end local v5    # "n":I
    :cond_a
    invoke-direct {p0, v2, p3}, Lmeizu2_jcifs/util/DES;->cookey([I[I)V

    .line 167
    return-void
.end method

.method private encrypt([BI[BI)V
    .locals 5
    .param p1, "clearText"    # [B
    .param p2, "clearOff"    # I
    .param p3, "cipherText"    # [B
    .param p4, "cipherOff"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    invoke-static {p1, p2, v0, v3, v4}, Lmeizu2_jcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 195
    iget-object v0, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    iget-object v1, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    iget-object v2, p0, Lmeizu2_jcifs/util/DES;->encryptKeys:[I

    invoke-direct {p0, v0, v1, v2}, Lmeizu2_jcifs/util/DES;->des([I[I[I)V

    .line 196
    iget-object v0, p0, Lmeizu2_jcifs/util/DES;->tempInts:[I

    invoke-static {v0, v3, p3, p4, v4}, Lmeizu2_jcifs/util/DES;->spreadIntsToBytes([II[BII)V

    .line 197
    return-void
.end method

.method public static makeSMBKey([B[B)V
    .locals 7
    .param p0, "key7"    # [B
    .param p1, "key8"    # [B

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    aget-byte v1, p0, v2

    shr-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 103
    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 104
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x5

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 105
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    .line 106
    aget-byte v1, p0, v5

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x3

    aget-byte v2, p0, v6

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v6

    .line 107
    const/4 v1, 0x5

    aget-byte v2, p0, v6

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x2

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 108
    const/4 v1, 0x6

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x7

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 109
    const/4 v1, 0x7

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 111
    aget-byte v1, p1, v0

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public static spreadIntsToBytes([II[BII)V
    .locals 3
    .param p0, "inInts"    # [I
    .param p1, "inOff"    # I
    .param p2, "outBytes"    # [B
    .param p3, "outOff"    # I
    .param p4, "intLen"    # I

    .prologue
    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 545
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, p1, v0

    aget v2, p0, v2

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 546
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    add-int v2, p1, v0

    aget v2, p0, v2

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 547
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x2

    add-int v2, p1, v0

    aget v2, p0, v2

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 548
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x3

    add-int v2, p1, v0

    aget v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method

.method public static squashBytesToInts([BI[III)V
    .locals 4
    .param p0, "inBytes"    # [B
    .param p1, "inOff"    # I
    .param p2, "outInts"    # [I
    .param p3, "outOff"    # I
    .param p4, "intLen"    # I

    .prologue
    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 532
    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, p2, v1

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt([B[B)V
    .locals 1
    .param p1, "cipherText"    # [B
    .param p2, "clearText"    # [B

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, v0, p2, v0}, Lmeizu2_jcifs/util/DES;->decrypt([BI[BI)V

    .line 297
    return-void
.end method

.method public decrypt([B)[B
    .locals 6
    .param p1, "cipherText"    # [B

    .prologue
    .line 325
    array-length v3, p1

    .line 327
    .local v3, "length":I
    rem-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_1

    .line 328
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Array must be a multiple of 8"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    .line 338
    :cond_0
    return-object v0

    .line 332
    :cond_1
    new-array v0, v3, [B

    .line 333
    .local v0, "clearText":[B
    div-int/lit8 v1, v3, 0x8

    .line 335
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 336
    mul-int/lit8 v4, v2, 0x8

    mul-int/lit8 v5, v2, 0x8

    invoke-direct {p0, p1, v4, v0, v5}, Lmeizu2_jcifs/util/DES;->encrypt([BI[BI)V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public encrypt([B[B)V
    .locals 1
    .param p1, "clearText"    # [B
    .param p2, "cipherText"    # [B

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, p1, v0, p2, v0}, Lmeizu2_jcifs/util/DES;->encrypt([BI[BI)V

    .line 291
    return-void
.end method

.method public encrypt([B)[B
    .locals 6
    .param p1, "clearText"    # [B

    .prologue
    .line 304
    array-length v3, p1

    .line 306
    .local v3, "length":I
    rem-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_1

    .line 307
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Array must be a multiple of 8"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    .line 317
    :cond_0
    return-object v0

    .line 311
    :cond_1
    new-array v0, v3, [B

    .line 312
    .local v0, "cipherText":[B
    div-int/lit8 v1, v3, 0x8

    .line 314
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 315
    mul-int/lit8 v4, v2, 0x8

    mul-int/lit8 v5, v2, 0x8

    invoke-direct {p0, p1, v4, v0, v5}, Lmeizu2_jcifs/util/DES;->encrypt([BI[BI)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setKey([B)V
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 119
    const/4 v0, 0x1

    iget-object v1, p0, Lmeizu2_jcifs/util/DES;->encryptKeys:[I

    invoke-direct {p0, p1, v0, v1}, Lmeizu2_jcifs/util/DES;->deskey([BZ[I)V

    .line 120
    const/4 v0, 0x0

    iget-object v1, p0, Lmeizu2_jcifs/util/DES;->decryptKeys:[I

    invoke-direct {p0, p1, v0, v1}, Lmeizu2_jcifs/util/DES;->deskey([BZ[I)V

    .line 121
    return-void
.end method
