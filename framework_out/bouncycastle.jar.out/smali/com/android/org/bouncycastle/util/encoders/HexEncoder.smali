.class public Lcom/android/org/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    .line 18
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    .line 42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    .line 43
    return-void

    .line 9
    :array_0
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static ignore(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 71
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v5, 0x0

    .line 146
    .local v5, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 148
    .local v2, "end":I
    :goto_0
    if-lez v2, :cond_0

    .line 150
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 158
    :cond_0
    const/4 v3, 0x0

    .line 159
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    move v4, v3

    .line 161
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 155
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 166
    .restart local v4    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v0, v6, v7

    .local v0, "b1":B
    move v4, v3

    .line 168
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 170
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 173
    :cond_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v1, v6, v7

    .line 175
    .local v1, "b2":B
    or-int v6, v0, v1

    if-gez v6, :cond_4

    .line 177
    new-instance v6, Ljava/io/IOException;

    const-string v7, "invalid characters encountered in Hex string"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 180
    :cond_4
    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v6, v1

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_5
    return v5
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 8
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
    .line 88
    const/4 v5, 0x0

    .line 90
    .local v5, "outLen":I
    add-int v2, p2, p3

    .line 92
    .local v2, "end":I
    :goto_0
    if-le v2, p2, :cond_0

    .line 94
    add-int/lit8 v6, v2, -0x1

    aget-byte v6, p1, v6

    int-to-char v6, v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 102
    :cond_0
    move v3, p2

    .line 103
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    move v4, v3

    .line 105
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_2

    aget-byte v6, p1, v4

    int-to-char v6, v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 99
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 110
    .restart local v4    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p1, v4

    aget-byte v0, v6, v7

    .local v0, "b1":B
    move v4, v3

    .line 112
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    aget-byte v6, p1, v4

    int-to-char v6, v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 117
    :cond_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p1, v4

    aget-byte v1, v6, v7

    .line 119
    .local v1, "b2":B
    or-int v6, v0, v1

    if-gez v6, :cond_4

    .line 121
    new-instance v6, Ljava/io/IOException;

    const-string v7, "invalid characters encountered in Hex data"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 124
    :cond_4
    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v6, v1

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_5
    return v5
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 4
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
    .line 57
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    .line 59
    aget-byte v2, p1, v0

    and-int/lit16 v1, v2, 0xff

    .line 61
    .local v1, "v":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 62
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 v3, v1, 0xf

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "v":I
    :cond_0
    mul-int/lit8 v2, p3, 0x2

    return v2
.end method

.method protected initialiseDecodingTable()V
    .locals 5

    .prologue
    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x41

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x61

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 33
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x62

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 34
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x43

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x63

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 35
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x44

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x64

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x45

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x65

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 37
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x46

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v4, 0x66

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 38
    return-void
.end method
