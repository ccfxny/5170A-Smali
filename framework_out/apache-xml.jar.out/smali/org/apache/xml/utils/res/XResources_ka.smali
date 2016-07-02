.class public Lorg/apache/xml/utils/res/XResources_ka;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_ka.java"


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
    const/4 v9, 0x4

    const/16 v5, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "ui_language"

    aput-object v2, v1, v6

    const-string v2, "ka"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "help_language"

    aput-object v2, v1, v6

    const-string v2, "ka"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "language"

    aput-object v2, v1, v6

    const-string v2, "ka"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "alphabet"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v4, 0x24

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "tradAlphabet"

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v3, 0x1a

    new-array v3, v3, [C

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "orientation"

    aput-object v3, v2, v6

    const-string v3, "LeftToRight"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "numbering"

    aput-object v3, v2, v6

    const-string v3, "additive"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "numberGroups"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/IntArrayWrapper;

    new-array v4, v9, [I

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "digits"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v5, [C

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "tens"

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v3, v5, [C

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "hundreds"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v5, [C

    fill-array-data v4, :array_5

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "thousands"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v5, [C

    fill-array-data v4, :array_6

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "tables"

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/xml/utils/res/StringArrayWrapper;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "thousands"

    aput-object v5, v4, v6

    const-string v5, "hundreds"

    aput-object v5, v4, v7

    const-string v5, "tens"

    aput-object v5, v4, v8

    const/4 v5, 0x3

    const-string v6, "digits"

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 2
        0x10d0s
        0x10d1s
        0x10d2s
        0x10d3s
        0x10d4s
        0x10d5s
        0x10d6s
        0x10f1s
        0x10d7s
        0x10d8s
        0x10d9s
        0x10das
        0x10dbs
        0x10dcs
        0x10f2s
        0x10dds
        0x10des
        0x10dfs
        0x10e0s
        0x10e1s
        0x10e2s
        0x10e3s
        0x10e4s
        0x10e5s
        0x10e6s
        0x10e7s
        0x10e8s
        0x10e9s
        0x10eas
        0x10ebs
        0x10ecs
        0x10eds
        0x10ees
        0x10f4s
        0x10efs
        0x10f0s
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
    .array-data 4
        0x3e8
        0x64
        0xa
        0x1
    .end array-data

    :array_3
    .array-data 2
        0x10d0s
        0x10d1s
        0x10d2s
        0x10d3s
        0x10d4s
        0x10d5s
        0x10d6s
        0x10f1s
        0x10d7s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x10d8s
        0x10d9s
        0x10das
        0x10dbs
        0x10dcs
        0x10f2s
        0x10dds
        0x10des
        0x10dfs
    .end array-data

    nop

    :array_5
    .array-data 2
        0x10e0s
        0x10e1s
        0x10e2s
        0x10e3s
        0x10e4s
        0x10e5s
        0x10e6s
        0x10e7s
        0x10e8s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x10e9s
        0x10eas
        0x10ebs
        0x10ecs
        0x10eds
        0x10ees
        0x10f4s
        0x10efs
        0x10f0s
    .end array-data
.end method
