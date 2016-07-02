.class final Lcom/android/okio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/okio/Base64;->MAP:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 18
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 33
    .local v6, "limit":I
    :goto_0
    if-lez v6, :cond_0

    .line 34
    add-int/lit8 v13, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 35
    .local v3, "c":C
    const/16 v13, 0x3d

    if-eq v3, v13, :cond_1

    const/16 v13, 0xa

    if-eq v3, v13, :cond_1

    const/16 v13, 0xd

    if-eq v3, v13, :cond_1

    const/16 v13, 0x20

    if-eq v3, v13, :cond_1

    const/16 v13, 0x9

    if-eq v3, v13, :cond_1

    .line 41
    .end local v3    # "c":C
    :cond_0
    int-to-long v14, v6

    const-wide/16 v16, 0x6

    mul-long v14, v14, v16

    const-wide/16 v16, 0x8

    div-long v14, v14, v16

    long-to-int v13, v14

    new-array v7, v13, [B

    .line 42
    .local v7, "out":[B
    const/4 v8, 0x0

    .line 43
    .local v8, "outCount":I
    const/4 v4, 0x0

    .line 45
    .local v4, "inCount":I
    const/4 v12, 0x0

    .line 46
    .local v12, "word":I
    const/4 v10, 0x0

    .local v10, "pos":I
    move v9, v8

    .end local v8    # "outCount":I
    .local v9, "outCount":I
    :goto_1
    if-ge v10, v6, :cond_9

    .line 47
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 50
    .restart local v3    # "c":C
    const/16 v13, 0x41

    if-lt v3, v13, :cond_2

    const/16 v13, 0x5a

    if-gt v3, v13, :cond_2

    .line 54
    add-int/lit8 v2, v3, -0x41

    .line 76
    .local v2, "bits":I
    :goto_2
    shl-int/lit8 v13, v12, 0x6

    int-to-byte v14, v2

    or-int v12, v13, v14

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    rem-int/lit8 v13, v4, 0x4

    if-nez v13, :cond_d

    .line 81
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 82
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    shr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    .line 83
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    int-to-byte v13, v12

    aput-byte v13, v7, v9

    .line 46
    .end local v2    # "bits":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    goto :goto_1

    .line 33
    .end local v4    # "inCount":I
    .end local v7    # "out":[B
    .end local v9    # "outCount":I
    .end local v10    # "pos":I
    .end local v12    # "word":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 55
    .restart local v4    # "inCount":I
    .restart local v7    # "out":[B
    .restart local v9    # "outCount":I
    .restart local v10    # "pos":I
    .restart local v12    # "word":I
    :cond_2
    const/16 v13, 0x61

    if-lt v3, v13, :cond_3

    const/16 v13, 0x7a

    if-gt v3, v13, :cond_3

    .line 59
    add-int/lit8 v2, v3, -0x47

    .restart local v2    # "bits":I
    goto :goto_2

    .line 60
    .end local v2    # "bits":I
    :cond_3
    const/16 v13, 0x30

    if-lt v3, v13, :cond_4

    const/16 v13, 0x39

    if-gt v3, v13, :cond_4

    .line 64
    add-int/lit8 v2, v3, 0x4

    .restart local v2    # "bits":I
    goto :goto_2

    .line 65
    .end local v2    # "bits":I
    :cond_4
    const/16 v13, 0x2b

    if-ne v3, v13, :cond_5

    .line 66
    const/16 v2, 0x3e

    .restart local v2    # "bits":I
    goto :goto_2

    .line 67
    .end local v2    # "bits":I
    :cond_5
    const/16 v13, 0x2f

    if-ne v3, v13, :cond_6

    .line 68
    const/16 v2, 0x3f

    .restart local v2    # "bits":I
    goto :goto_2

    .line 69
    .end local v2    # "bits":I
    :cond_6
    const/16 v13, 0xa

    if-eq v3, v13, :cond_d

    const/16 v13, 0xd

    if-eq v3, v13, :cond_d

    const/16 v13, 0x20

    if-eq v3, v13, :cond_d

    const/16 v13, 0x9

    if-ne v3, v13, :cond_7

    move v8, v9

    .line 70
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_3

    .line 72
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    :cond_7
    const/4 v7, 0x0

    move v8, v9

    .line 108
    .end local v3    # "c":C
    .end local v7    # "out":[B
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    :cond_8
    :goto_4
    return-object v7

    .line 87
    .end local v8    # "outCount":I
    .restart local v7    # "out":[B
    .restart local v9    # "outCount":I
    :cond_9
    rem-int/lit8 v5, v4, 0x4

    .line 88
    .local v5, "lastWordChars":I
    const/4 v13, 0x1

    if-ne v5, v13, :cond_a

    .line 90
    const/4 v7, 0x0

    move v8, v9

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_4

    .line 91
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    :cond_a
    const/4 v13, 0x2

    if-ne v5, v13, :cond_b

    .line 93
    shl-int/lit8 v12, v12, 0xc

    .line 94
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 103
    :goto_5
    array-length v13, v7

    if-eq v8, v13, :cond_8

    .line 106
    new-array v11, v8, [B

    .line 107
    .local v11, "prefix":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v13, v11, v14, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v7, v11

    .line 108
    goto :goto_4

    .line 95
    .end local v8    # "outCount":I
    .end local v11    # "prefix":[B
    .restart local v9    # "outCount":I
    :cond_b
    const/4 v13, 0x3

    if-ne v5, v13, :cond_c

    .line 97
    shl-int/lit8 v12, v12, 0x6

    .line 98
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    .line 99
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    shr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v8

    :cond_c
    move v8, v9

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_5

    .end local v5    # "lastWordChars":I
    .end local v8    # "outCount":I
    .restart local v3    # "c":C
    .restart local v9    # "outCount":I
    :cond_d
    move v8, v9

    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_3
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 11
    .param p0, "in"    # [B

    .prologue
    const/16 v10, 0x3d

    .line 119
    array-length v7, p0

    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v5, v7, 0x3

    .line 120
    .local v5, "length":I
    new-array v6, v5, [B

    .line 121
    .local v6, "out":[B
    const/4 v3, 0x0

    .local v3, "index":I
    array-length v7, p0

    array-length v8, p0

    rem-int/lit8 v8, v8, 0x3

    sub-int v1, v7, v8

    .line 122
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 123
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 124
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    aget-byte v8, p0, v2

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 125
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 126
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 122
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 128
    :cond_0
    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    :goto_1
    move v3, v4

    .line 143
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_2
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "US-ASCII"

    invoke-direct {v7, v6, v8, v3, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 130
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 131
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 132
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput-byte v10, v6, v4

    .line 133
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aput-byte v10, v6, v3

    move v3, v4

    .line 134
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    .line 136
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :pswitch_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 137
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 138
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    sget-object v7, Lcom/android/okio/Base64;->MAP:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 139
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aput-byte v10, v6, v3

    goto :goto_1

    .line 144
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
