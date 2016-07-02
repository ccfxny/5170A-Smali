.class public Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 25
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    .line 30
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 48
    return-void

    .line 9
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

.method private decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p4, v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 273
    .local v0, "b1":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 275
    .local v1, "b2":B
    or-int v4, v0, v1

    if-gez v4, :cond_0

    .line 277
    new-instance v4, Ljava/io/IOException;

    const-string v5, "invalid characters encountered at end of base64 data"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :cond_0
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 282
    const/4 v4, 0x1

    .line 316
    :goto_0
    return v4

    .line 284
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_1
    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, v4, :cond_3

    .line 286
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 287
    .restart local v0    # "b1":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 288
    .restart local v1    # "b2":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    .line 290
    .local v2, "b3":B
    or-int v4, v0, v1

    or-int/2addr v4, v2

    if-gez v4, :cond_2

    .line 292
    new-instance v4, Ljava/io/IOException;

    const-string v5, "invalid characters encountered at end of base64 data"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    :cond_2
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 296
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 298
    const/4 v4, 0x2

    goto :goto_0

    .line 302
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    :cond_3
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v4, p2

    .line 303
    .restart local v0    # "b1":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v4, p3

    .line 304
    .restart local v1    # "b2":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v4, p4

    .line 305
    .restart local v2    # "b3":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v4, p5

    .line 307
    .local v3, "b4":B
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_4

    .line 309
    new-instance v4, Ljava/io/IOException;

    const-string v5, "invalid characters encountered at end of base64 data"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_4
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 313
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 314
    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 316
    const/4 v4, 0x3

    goto :goto_0
.end method

.method private ignore(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 119
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextI(Ljava/lang/String;II)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .prologue
    .line 322
    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return p2
.end method

.method private nextI([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .prologue
    .line 192
    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return p2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 17
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/16 v16, 0x0

    .line 213
    .local v16, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 215
    .local v12, "end":I
    :goto_0
    if-lez v12, :cond_0

    .line 217
    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :cond_0
    const/4 v14, 0x0

    .line 226
    .local v14, "i":I
    add-int/lit8 v13, v12, -0x4

    .line 228
    .local v13, "finish":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    move v15, v14

    .line 230
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_1
    if-ge v15, v13, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v8, v2, v3

    .line 234
    .local v8, "b1":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v9, v2, v3

    .line 238
    .local v9, "b2":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    .line 240
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v10, v2, v3

    .line 242
    .local v10, "b3":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    .line 244
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v11, v2, v3

    .line 246
    .local v11, "b4":B
    or-int v2, v8, v9

    or-int/2addr v2, v10

    or-int/2addr v2, v11

    if-gez v2, :cond_2

    .line 248
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid characters encountered in base64 data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    .end local v13    # "finish":I
    .end local v15    # "i":I
    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 251
    .restart local v8    # "b1":B
    .restart local v9    # "b2":B
    .restart local v10    # "b3":B
    .restart local v11    # "b4":B
    .restart local v13    # "finish":I
    .restart local v15    # "i":I
    :cond_2
    shl-int/lit8 v2, v8, 0x2

    shr-int/lit8 v3, v9, 0x4

    or-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 252
    shl-int/lit8 v2, v9, 0x4

    shr-int/lit8 v3, v10, 0x2

    or-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 253
    shl-int/lit8 v2, v10, 0x6

    or-int/2addr v2, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 255
    add-int/lit8 v16, v16, 0x3

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move v15, v14

    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    .line 260
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    :cond_3
    add-int/lit8 v2, v12, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v12, -0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v12, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v2

    add-int v16, v16, v2

    .line 262
    return v16
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 17
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/16 v16, 0x0

    .line 138
    .local v16, "outLen":I
    add-int v12, p2, p3

    .line 140
    .local v12, "end":I
    :goto_0
    move/from16 v0, p2

    if-le v12, v0, :cond_0

    .line 142
    add-int/lit8 v2, v12, -0x1

    aget-byte v2, p1, v2

    int-to-char v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    move/from16 v14, p2

    .line 151
    .local v14, "i":I
    add-int/lit8 v13, v12, -0x4

    .line 153
    .local v13, "finish":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    move v15, v14

    .line 155
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_1
    if-ge v15, v13, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    aget-byte v3, p1, v15

    aget-byte v8, v2, v3

    .line 159
    .local v8, "b1":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    aget-byte v9, v2, v3

    .line 163
    .local v9, "b2":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    .line 165
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    aget-byte v10, v2, v3

    .line 167
    .local v10, "b3":B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    .line 169
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    aget-byte v11, v2, v3

    .line 171
    .local v11, "b4":B
    or-int v2, v8, v9

    or-int/2addr v2, v10

    or-int/2addr v2, v11

    if-gez v2, :cond_2

    .line 173
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid characters encountered in base64 data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    .end local v13    # "finish":I
    .end local v15    # "i":I
    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 176
    .restart local v8    # "b1":B
    .restart local v9    # "b2":B
    .restart local v10    # "b3":B
    .restart local v11    # "b4":B
    .restart local v13    # "finish":I
    .restart local v15    # "i":I
    :cond_2
    shl-int/lit8 v2, v8, 0x2

    shr-int/lit8 v3, v9, 0x4

    or-int/2addr v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 177
    shl-int/lit8 v2, v9, 0x4

    shr-int/lit8 v3, v10, 0x2

    or-int/2addr v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 178
    shl-int/lit8 v2, v10, 0x6

    or-int/2addr v2, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 180
    add-int/lit8 v16, v16, 0x3

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    .end local v15    # "i":I
    .restart local v14    # "i":I
    move v15, v14

    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_1

    .line 185
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    :cond_3
    add-int/lit8 v2, v12, -0x4

    aget-byte v2, p1, v2

    int-to-char v4, v2

    add-int/lit8 v2, v12, -0x3

    aget-byte v2, p1, v2

    int-to-char v5, v2

    add-int/lit8 v2, v12, -0x2

    aget-byte v2, p1, v2

    int-to-char v6, v2

    add-int/lit8 v2, v12, -0x1

    aget-byte v2, p1, v2

    int-to-char v7, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v2

    add-int v16, v16, v2

    .line 187
    return v16
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 15
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    rem-int/lit8 v11, p3, 0x3

    .line 63
    .local v11, "modulus":I
    sub-int v9, p3, v11

    .line 66
    .local v9, "dataLength":I
    move/from16 v10, p2

    .local v10, "i":I
    :goto_0
    add-int v12, p2, v9

    if-ge v10, v12, :cond_0

    .line 68
    aget-byte v12, p1, v10

    and-int/lit16 v1, v12, 0xff

    .line 69
    .local v1, "a1":I
    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v2, v12, 0xff

    .line 70
    .local v2, "a2":I
    add-int/lit8 v12, v10, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v3, v12, 0xff

    .line 72
    .local v3, "a3":I
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v13, v1, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 73
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v13, v1, 0x4

    ushr-int/lit8 v14, v2, 0x4

    or-int/2addr v13, v14

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 74
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v13, v2, 0x2

    ushr-int/lit8 v14, v3, 0x6

    or-int/2addr v13, v14

    and-int/lit8 v13, v13, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 75
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v13, v3, 0x3f

    aget-byte v12, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 66
    add-int/lit8 v10, v10, 0x3

    goto :goto_0

    .line 84
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 113
    :goto_1
    :pswitch_0
    div-int/lit8 v12, v9, 0x3

    mul-int/lit8 v13, v12, 0x4

    if-nez v11, :cond_1

    const/4 v12, 0x0

    :goto_2
    add-int/2addr v12, v13

    return v12

    .line 89
    :pswitch_1
    add-int v12, p2, v9

    aget-byte v12, p1, v12

    and-int/lit16 v7, v12, 0xff

    .line 90
    .local v7, "d1":I
    ushr-int/lit8 v12, v7, 0x2

    and-int/lit8 v4, v12, 0x3f

    .line 91
    .local v4, "b1":I
    shl-int/lit8 v12, v7, 0x4

    and-int/lit8 v5, v12, 0x3f

    .line 93
    .local v5, "b2":I
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 94
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 95
    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 96
    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 99
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v7    # "d1":I
    :pswitch_2
    add-int v12, p2, v9

    aget-byte v12, p1, v12

    and-int/lit16 v7, v12, 0xff

    .line 100
    .restart local v7    # "d1":I
    add-int v12, p2, v9

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v8, v12, 0xff

    .line 102
    .local v8, "d2":I
    ushr-int/lit8 v12, v7, 0x2

    and-int/lit8 v4, v12, 0x3f

    .line 103
    .restart local v4    # "b1":I
    shl-int/lit8 v12, v7, 0x4

    ushr-int/lit8 v13, v8, 0x4

    or-int/2addr v12, v13

    and-int/lit8 v5, v12, 0x3f

    .line 104
    .restart local v5    # "b2":I
    shl-int/lit8 v12, v8, 0x2

    and-int/lit8 v6, v12, 0x3f

    .line 106
    .local v6, "b3":I
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 107
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 108
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v12, v12, v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 109
    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 113
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v6    # "b3":I
    .end local v7    # "d1":I
    .end local v8    # "d2":I
    :cond_1
    const/4 v12, 0x4

    goto :goto_2

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_1
    return-void
.end method
