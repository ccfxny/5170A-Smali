.class public Lorg/apache/xml/utils/XMLChar;
.super Ljava/lang/Object;
.source "XMLChar.java"


# static fields
.field private static final CHARS:[B

.field public static final MASK_CONTENT:I = 0x20

.field public static final MASK_NAME:I = 0x8

.field public static final MASK_NAME_START:I = 0x4

.field public static final MASK_NCNAME:I = 0x80

.field public static final MASK_NCNAME_START:I = 0x40

.field public static final MASK_PUBID:I = 0x10

.field public static final MASK_SPACE:I = 0x2

.field public static final MASK_VALID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .prologue
    .line 54
    const/high16 v17, 0x10000

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    sput-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    .line 98
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 106
    .local v1, "charRange":[I
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v15, v0, [I

    fill-array-data v15, :array_1

    .line 115
    .local v15, "spaceChar":[I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [I

    fill-array-data v11, :array_2

    .line 123
    .local v11, "nameChar":[I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [I

    fill-array-data v12, :array_3

    .line 131
    .local v12, "nameStartChar":[I
    const/16 v17, 0x9

    move/from16 v0, v17

    new-array v13, v0, [I

    fill-array-data v13, :array_4

    .line 136
    .local v13, "pubidChar":[I
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v14, v0, [I

    fill-array-data v14, :array_5

    .line 144
    .local v14, "pubidRange":[I
    const/16 v17, 0x12e

    move/from16 v0, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_6

    .line 187
    .local v10, "letterRange":[I
    const/16 v17, 0x35

    move/from16 v0, v17

    new-array v9, v0, [I

    fill-array-data v9, :array_7

    .line 204
    .local v9, "letterChar":[I
    const/16 v17, 0x84

    move/from16 v0, v17

    new-array v3, v0, [I

    fill-array-data v3, :array_8

    .line 224
    .local v3, "combiningCharRange":[I
    const/16 v17, 0x1d

    move/from16 v0, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_9

    .line 235
    .local v2, "combiningCharChar":[I
    const/16 v17, 0x1e

    move/from16 v0, v17

    new-array v4, v0, [I

    fill-array-data v4, :array_a

    .line 246
    .local v4, "digitRange":[I
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v6, v0, [I

    fill-array-data v6, :array_b

    .line 250
    .local v6, "extenderRange":[I
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v5, v0, [I

    fill-array-data v5, :array_c

    .line 258
    .local v5, "extenderChar":[I
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_d

    .line 267
    .local v16, "specialChar":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v1

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 268
    aget v8, v1, v7

    .local v8, "j":I
    :goto_1
    add-int/lit8 v17, v7, 0x1

    aget v17, v1, v17

    move/from16 v0, v17

    if-gt v8, v0, :cond_0

    .line 269
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v18, v17, v8

    or-int/lit8 v18, v18, 0x21

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v8

    .line 268
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 267
    :cond_0
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 274
    .end local v8    # "j":I
    :cond_1
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 275
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v16, v7

    sget-object v19, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v20, v16, v7

    aget-byte v19, v19, v20

    and-int/lit8 v19, v19, -0x21

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 274
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 279
    :cond_2
    const/4 v7, 0x0

    :goto_3
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 280
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v15, v7

    aget-byte v19, v17, v18

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 284
    :cond_3
    const/4 v7, 0x0

    :goto_4
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 285
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v12, v7

    aget-byte v19, v17, v18

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0xcc

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 284
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 288
    :cond_4
    const/4 v7, 0x0

    :goto_5
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 289
    aget v8, v10, v7

    .restart local v8    # "j":I
    :goto_6
    add-int/lit8 v17, v7, 0x1

    aget v17, v10, v17

    move/from16 v0, v17

    if-gt v8, v0, :cond_5

    .line 290
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v18, v17, v8

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0xcc

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v8

    .line 289
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 288
    :cond_5
    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    .line 294
    .end local v8    # "j":I
    :cond_6
    const/4 v7, 0x0

    :goto_7
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 295
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v9, v7

    aget-byte v19, v17, v18

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0xcc

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 300
    :cond_7
    const/4 v7, 0x0

    :goto_8
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_8

    .line 301
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v11, v7

    aget-byte v19, v17, v18

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x88

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 300
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 303
    :cond_8
    const/4 v7, 0x0

    :goto_9
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    .line 304
    aget v8, v4, v7

    .restart local v8    # "j":I
    :goto_a
    add-int/lit8 v17, v7, 0x1

    aget v17, v4, v17

    move/from16 v0, v17

    if-gt v8, v0, :cond_9

    .line 305
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v18, v17, v8

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x88

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v8

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 303
    :cond_9
    add-int/lit8 v7, v7, 0x2

    goto :goto_9

    .line 308
    .end local v8    # "j":I
    :cond_a
    const/4 v7, 0x0

    :goto_b
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_c

    .line 309
    aget v8, v3, v7

    .restart local v8    # "j":I
    :goto_c
    add-int/lit8 v17, v7, 0x1

    aget v17, v3, v17

    move/from16 v0, v17

    if-gt v8, v0, :cond_b

    .line 310
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v18, v17, v8

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x88

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v8

    .line 309
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 308
    :cond_b
    add-int/lit8 v7, v7, 0x2

    goto :goto_b

    .line 313
    .end local v8    # "j":I
    :cond_c
    const/4 v7, 0x0

    :goto_d
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_d

    .line 314
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v2, v7

    aget-byte v19, v17, v18

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x88

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 313
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 316
    :cond_d
    const/4 v7, 0x0

    :goto_e
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_f

    .line 317
    aget v8, v6, v7

    .restart local v8    # "j":I
    :goto_f
    add-int/lit8 v17, v7, 0x1

    aget v17, v6, v17

    move/from16 v0, v17

    if-gt v8, v0, :cond_e

    .line 318
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v18, v17, v8

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x88

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v8

    .line 317
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 316
    :cond_e
    add-int/lit8 v7, v7, 0x2

    goto :goto_e

    .line 321
    .end local v8    # "j":I
    :cond_f
    const/4 v7, 0x0

    :goto_10
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_10

    .line 322
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v5, v7

    aget-byte v19, v17, v18

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x88

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 321
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 326
    :cond_10
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    const/16 v18, 0x3a

    aget-byte v19, v17, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, -0xc1

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 329
    const/4 v7, 0x0

    :goto_11
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_11

    .line 330
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v18, v13, v7

    aget-byte v19, v17, v18

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 329
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 332
    :cond_11
    const/4 v7, 0x0

    :goto_12
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_13

    .line 333
    aget v8, v14, v7

    .restart local v8    # "j":I
    :goto_13
    add-int/lit8 v17, v7, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    if-gt v8, v0, :cond_12

    .line 334
    sget-object v17, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v18, v17, v8

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v8

    .line 333
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 332
    :cond_12
    add-int/lit8 v7, v7, 0x2

    goto :goto_12

    .line 338
    .end local v8    # "j":I
    :cond_13
    return-void

    .line 98
    :array_0
    .array-data 4
        0x9
        0xa
        0xd
        0xd
        0x20
        0xd7ff
        0xe000
        0xfffd
    .end array-data

    .line 106
    :array_1
    .array-data 4
        0x20
        0x9
        0xd
        0xa
    .end array-data

    .line 115
    :array_2
    .array-data 4
        0x2d
        0x2e
    .end array-data

    .line 123
    :array_3
    .array-data 4
        0x3a
        0x5f
    .end array-data

    .line 131
    :array_4
    .array-data 4
        0xa
        0xd
        0x20
        0x21
        0x23
        0x24
        0x25
        0x3d
        0x5f
    .end array-data

    .line 136
    :array_5
    .array-data 4
        0x27
        0x3b
        0x3f
        0x5a
        0x61
        0x7a
    .end array-data

    .line 144
    :array_6
    .array-data 4
        0x41
        0x5a
        0x61
        0x7a
        0xc0
        0xd6
        0xd8
        0xf6
        0xf8
        0x131
        0x134
        0x13e
        0x141
        0x148
        0x14a
        0x17e
        0x180
        0x1c3
        0x1cd
        0x1f0
        0x1f4
        0x1f5
        0x1fa
        0x217
        0x250
        0x2a8
        0x2bb
        0x2c1
        0x388
        0x38a
        0x38e
        0x3a1
        0x3a3
        0x3ce
        0x3d0
        0x3d6
        0x3e2
        0x3f3
        0x401
        0x40c
        0x40e
        0x44f
        0x451
        0x45c
        0x45e
        0x481
        0x490
        0x4c4
        0x4c7
        0x4c8
        0x4cb
        0x4cc
        0x4d0
        0x4eb
        0x4ee
        0x4f5
        0x4f8
        0x4f9
        0x531
        0x556
        0x561
        0x586
        0x5d0
        0x5ea
        0x5f0
        0x5f2
        0x621
        0x63a
        0x641
        0x64a
        0x671
        0x6b7
        0x6ba
        0x6be
        0x6c0
        0x6ce
        0x6d0
        0x6d3
        0x6e5
        0x6e6
        0x905
        0x939
        0x958
        0x961
        0x985
        0x98c
        0x98f
        0x990
        0x993
        0x9a8
        0x9aa
        0x9b0
        0x9b6
        0x9b9
        0x9dc
        0x9dd
        0x9df
        0x9e1
        0x9f0
        0x9f1
        0xa05
        0xa0a
        0xa0f
        0xa10
        0xa13
        0xa28
        0xa2a
        0xa30
        0xa32
        0xa33
        0xa35
        0xa36
        0xa38
        0xa39
        0xa59
        0xa5c
        0xa72
        0xa74
        0xa85
        0xa8b
        0xa8f
        0xa91
        0xa93
        0xaa8
        0xaaa
        0xab0
        0xab2
        0xab3
        0xab5
        0xab9
        0xb05
        0xb0c
        0xb0f
        0xb10
        0xb13
        0xb28
        0xb2a
        0xb30
        0xb32
        0xb33
        0xb36
        0xb39
        0xb5c
        0xb5d
        0xb5f
        0xb61
        0xb85
        0xb8a
        0xb8e
        0xb90
        0xb92
        0xb95
        0xb99
        0xb9a
        0xb9e
        0xb9f
        0xba3
        0xba4
        0xba8
        0xbaa
        0xbae
        0xbb5
        0xbb7
        0xbb9
        0xc05
        0xc0c
        0xc0e
        0xc10
        0xc12
        0xc28
        0xc2a
        0xc33
        0xc35
        0xc39
        0xc60
        0xc61
        0xc85
        0xc8c
        0xc8e
        0xc90
        0xc92
        0xca8
        0xcaa
        0xcb3
        0xcb5
        0xcb9
        0xce0
        0xce1
        0xd05
        0xd0c
        0xd0e
        0xd10
        0xd12
        0xd28
        0xd2a
        0xd39
        0xd60
        0xd61
        0xe01
        0xe2e
        0xe32
        0xe33
        0xe40
        0xe45
        0xe81
        0xe82
        0xe87
        0xe88
        0xe94
        0xe97
        0xe99
        0xe9f
        0xea1
        0xea3
        0xeaa
        0xeab
        0xead
        0xeae
        0xeb2
        0xeb3
        0xec0
        0xec4
        0xf40
        0xf47
        0xf49
        0xf69
        0x10a0
        0x10c5
        0x10d0
        0x10f6
        0x1102
        0x1103
        0x1105
        0x1107
        0x110b
        0x110c
        0x110e
        0x1112
        0x1154
        0x1155
        0x115f
        0x1161
        0x116d
        0x116e
        0x1172
        0x1173
        0x11ae
        0x11af
        0x11b7
        0x11b8
        0x11bc
        0x11c2
        0x1e00
        0x1e9b
        0x1ea0
        0x1ef9
        0x1f00
        0x1f15
        0x1f18
        0x1f1d
        0x1f20
        0x1f45
        0x1f48
        0x1f4d
        0x1f50
        0x1f57
        0x1f5f
        0x1f7d
        0x1f80
        0x1fb4
        0x1fb6
        0x1fbc
        0x1fc2
        0x1fc4
        0x1fc6
        0x1fcc
        0x1fd0
        0x1fd3
        0x1fd6
        0x1fdb
        0x1fe0
        0x1fec
        0x1ff2
        0x1ff4
        0x1ff6
        0x1ffc
        0x212a
        0x212b
        0x2180
        0x2182
        0x3041
        0x3094
        0x30a1
        0x30fa
        0x3105
        0x312c
        0xac00
        0xd7a3
        0x3021
        0x3029
        0x4e00
        0x9fa5
    .end array-data

    .line 187
    :array_7
    .array-data 4
        0x386
        0x38c
        0x3da
        0x3dc
        0x3de
        0x3e0
        0x559
        0x6d5
        0x93d
        0x9b2
        0xa5e
        0xa8d
        0xabd
        0xae0
        0xb3d
        0xb9c
        0xcde
        0xe30
        0xe84
        0xe8a
        0xe8d
        0xea5
        0xea7
        0xeb0
        0xebd
        0x1100
        0x1109
        0x113c
        0x113e
        0x1140
        0x114c
        0x114e
        0x1150
        0x1159
        0x1163
        0x1165
        0x1167
        0x1169
        0x1175
        0x119e
        0x11a8
        0x11ab
        0x11ba
        0x11eb
        0x11f0
        0x11f9
        0x1f59
        0x1f5b
        0x1f5d
        0x1fbe
        0x2126
        0x212e
        0x3007
    .end array-data

    .line 204
    :array_8
    .array-data 4
        0x300
        0x345
        0x360
        0x361
        0x483
        0x486
        0x591
        0x5a1
        0x5a3
        0x5b9
        0x5bb
        0x5bd
        0x5c1
        0x5c2
        0x64b
        0x652
        0x6d6
        0x6dc
        0x6dd
        0x6df
        0x6e0
        0x6e4
        0x6e7
        0x6e8
        0x6ea
        0x6ed
        0x901
        0x903
        0x93e
        0x94c
        0x951
        0x954
        0x962
        0x963
        0x981
        0x983
        0x9c0
        0x9c4
        0x9c7
        0x9c8
        0x9cb
        0x9cd
        0x9e2
        0x9e3
        0xa40
        0xa42
        0xa47
        0xa48
        0xa4b
        0xa4d
        0xa70
        0xa71
        0xa81
        0xa83
        0xabe
        0xac5
        0xac7
        0xac9
        0xacb
        0xacd
        0xb01
        0xb03
        0xb3e
        0xb43
        0xb47
        0xb48
        0xb4b
        0xb4d
        0xb56
        0xb57
        0xb82
        0xb83
        0xbbe
        0xbc2
        0xbc6
        0xbc8
        0xbca
        0xbcd
        0xc01
        0xc03
        0xc3e
        0xc44
        0xc46
        0xc48
        0xc4a
        0xc4d
        0xc55
        0xc56
        0xc82
        0xc83
        0xcbe
        0xcc4
        0xcc6
        0xcc8
        0xcca
        0xccd
        0xcd5
        0xcd6
        0xd02
        0xd03
        0xd3e
        0xd43
        0xd46
        0xd48
        0xd4a
        0xd4d
        0xe34
        0xe3a
        0xe47
        0xe4e
        0xeb4
        0xeb9
        0xebb
        0xebc
        0xec8
        0xecd
        0xf18
        0xf19
        0xf71
        0xf84
        0xf86
        0xf8b
        0xf90
        0xf95
        0xf99
        0xfad
        0xfb1
        0xfb7
        0x20d0
        0x20dc
        0x302a
        0x302f
    .end array-data

    .line 224
    :array_9
    .array-data 4
        0x5bf
        0x5c4
        0x670
        0x93c
        0x94d
        0x9bc
        0x9be
        0x9bf
        0x9d7
        0xa02
        0xa3c
        0xa3e
        0xa3f
        0xabc
        0xb3c
        0xbd7
        0xd57
        0xe31
        0xeb1
        0xf35
        0xf37
        0xf39
        0xf3e
        0xf3f
        0xf97
        0xfb9
        0x20e1
        0x3099
        0x309a
    .end array-data

    .line 235
    :array_a
    .array-data 4
        0x30
        0x39
        0x660
        0x669
        0x6f0
        0x6f9
        0x966
        0x96f
        0x9e6
        0x9ef
        0xa66
        0xa6f
        0xae6
        0xaef
        0xb66
        0xb6f
        0xbe7
        0xbef
        0xc66
        0xc6f
        0xce6
        0xcef
        0xd66
        0xd6f
        0xe50
        0xe59
        0xed0
        0xed9
        0xf20
        0xf29
    .end array-data

    .line 246
    :array_b
    .array-data 4
        0x3031
        0x3035
        0x309d
        0x309e
        0x30fc
        0x30fe
    .end array-data

    .line 250
    :array_c
    .array-data 4
        0xb7
        0x2d0
        0x2d1
        0x387
        0x640
        0xe46
        0xec6
        0x3005
    .end array-data

    .line 258
    :array_d
    .array-data 4
        0x3c
        0x26
        0xa
        0xd
        0x5d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static highSurrogate(I)C
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 370
    const/high16 v0, 0x10000

    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static isContent(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 431
    if-ge p0, v1, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    :cond_0
    if-gt v1, p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHighSurrogate(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 388
    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInvalid(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 422
    invoke-static {p0}, Lorg/apache/xml/utils/XMLChar;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowSurrogate(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 397
    const v0, 0xdc00

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMarkup(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 442
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNCName(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 496
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNCNameStart(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 485
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isName(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 474
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNameStart(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 463
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPubid(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 507
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpace(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 452
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupplemental(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 350
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 412
    if-ge p0, v1, :cond_0

    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    if-gt v1, p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidIANAEncoding(Ljava/lang/String;)Z
    .locals 9
    .param p0, "ianaEncoding"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/16 v6, 0x5a

    const/16 v5, 0x41

    const/4 v3, 0x0

    .line 599
    if-eqz p0, :cond_5

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 601
    .local v2, "length":I
    if-lez v2, :cond_5

    .line 602
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 603
    .local v0, "c":C
    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_1

    :cond_0
    if-lt v0, v7, :cond_5

    if-gt v0, v8, :cond_5

    .line 604
    :cond_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 605
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 606
    if-lt v0, v5, :cond_2

    if-le v0, v6, :cond_6

    :cond_2
    if-lt v0, v7, :cond_3

    if-le v0, v8, :cond_6

    :cond_3
    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_6

    :cond_4
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_6

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_6

    .line 616
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_5
    :goto_1
    return v3

    .line 604
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    :cond_7
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isValidJavaEncoding(Ljava/lang/String;)Z
    .locals 5
    .param p0, "javaEncoding"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 628
    if-eqz p0, :cond_3

    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 630
    .local v2, "length":I
    if-lez v2, :cond_3

    .line 631
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 632
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 633
    .local v0, "c":C
    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x5a

    if-le v0, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7a

    if-le v0, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-le v0, v4, :cond_4

    :cond_2
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_4

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_4

    .line 642
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3
    :goto_1
    return v3

    .line 631
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v0    # "c":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isValidNCName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "ncName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v2

    .line 550
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 551
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/utils/XMLChar;->isNCNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 554
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 555
    invoke-static {v0}, Lorg/apache/xml/utils/XMLChar;->isNCName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 559
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v2

    .line 523
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 524
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/utils/XMLChar;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 527
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 528
    invoke-static {v0}, Lorg/apache/xml/utils/XMLChar;->isName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 532
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidNmtoken(Ljava/lang/String;)Z
    .locals 4
    .param p0, "nmtoken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v2

    .line 575
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 576
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 577
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/utils/XMLChar;->isName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    .end local v0    # "ch":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidQName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 652
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 654
    .local v0, "colon":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    .line 664
    :cond_0
    :goto_0
    return v3

    .line 658
    :cond_1
    if-lez v0, :cond_2

    .line 659
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "localPart":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/xml/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 664
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lorg/apache/xml/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public static lowSurrogate(I)C
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 379
    const/high16 v0, 0x10000

    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static supplemental(CC)I
    .locals 2
    .param p0, "h"    # C
    .param p1, "l"    # C

    .prologue
    .line 361
    const v0, 0xd800

    sub-int v0, p0, v0

    mul-int/lit16 v0, v0, 0x400

    const v1, 0xdc00

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    return v0
.end method
