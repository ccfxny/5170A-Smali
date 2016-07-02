.class public Lorg/apache/xml/utils/res/XResources_zh_CN;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_zh_CN.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x5

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "ui_language"

    aput-object v2, v1, v7

    const-string v2, "zh"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "help_language"

    aput-object v2, v1, v7

    const-string v2, "zh"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "language"

    aput-object v2, v1, v7

    const-string v2, "zh"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "alphabet"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x1a

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tradAlphabet"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x1a

    new-array v4, v4, [C

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "orientation"

    aput-object v2, v1, v7

    const-string v2, "LeftToRight"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "numbering"

    aput-object v3, v2, v7

    const-string v3, "multiplicative-additive"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multiplierOrder"

    aput-object v3, v2, v7

    const-string v3, "follows"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "numberGroups"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/IntArrayWrapper;

    new-array v4, v6, [I

    aput v6, v4, v7

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "zero"

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v3, v6, [C

    const v4, 0x96f6

    aput-char v4, v3, v7

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multiplier"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/LongArrayWrapper;

    new-array v4, v8, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/LongArrayWrapper;-><init>([J)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "multiplierChar"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v8, [C

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "digits"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v9, [C

    fill-array-data v4, :array_4

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "tables"

    aput-object v3, v2, v7

    new-instance v3, Lorg/apache/xml/utils/res/StringArrayWrapper;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "digits"

    aput-object v5, v4, v7

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 2
        -0xdfs
        -0xdes
        -0xdds
        -0xdcs
        -0xdbs
        -0xdas
        -0xd9s
        -0xd8s
        -0xd7s
        -0xd6s
        -0xd5s
        -0xd4s
        -0xd3s
        -0xd2s
        -0xd1s
        -0xd0s
        -0xcfs
        -0xces
        -0xcds
        -0xccs
        -0xcbs
        -0xcas
        -0xc9s
        -0xc8s
        -0xc7s
        -0xc6s
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_2
    .array-data 8
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    :array_3
    .array-data 2
        0x4ebfs
        0x4e07s
        0x5343s
        0x767es
        0x5341s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x4e00s
        0x4e8cs
        0x4e09s
        0x56dbs
        0x4e94s
        0x516ds
        0x4e03s
        0x516bs
        0x4e5ds
    .end array-data
.end method
