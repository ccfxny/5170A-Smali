.class public Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA256Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 26
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 26
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 45
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V

    .line 46
    return-void
.end method

.method private Ch(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 252
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Maj(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 260
    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum0(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 266
    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Sum1(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 272
    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta0(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 278
    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private Theta1(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 284
    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 52
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 53
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 54
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 55
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 56
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 57
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 58
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 59
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 61
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 62
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 63
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->finish()V

    .line 111
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 112
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 113
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 114
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 115
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 116
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 117
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 118
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 120
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    .line 122
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "SHA-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 158
    const/16 v9, 0x10

    .local v9, "t":I
    :goto_0
    const/16 v10, 0x3f

    if-gt v9, v10, :cond_0

    .line 160
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v12, v9, -0x2

    aget v11, v11, v12

    invoke-direct {p0, v11}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    move-result v11

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v13, v9, -0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v13, v9, -0xf

    aget v12, v12, v13

    invoke-direct {p0, v12}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v13, v9, -0x10

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v9

    .line 158
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 167
    .local v0, "a":I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 168
    .local v1, "b":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 169
    .local v2, "c":I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 170
    .local v3, "d":I
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 171
    .local v4, "e":I
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 172
    .local v5, "f":I
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 173
    .local v6, "g":I
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 175
    .local v7, "h":I
    const/4 v9, 0x0

    .line 176
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v10, 0x8

    if-ge v8, v10, :cond_1

    .line 179
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 180
    add-int/2addr v3, v7

    .line 181
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 182
    add-int/lit8 v9, v9, 0x1

    .line 185
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 186
    add-int/2addr v2, v6

    .line 187
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v7, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 188
    add-int/lit8 v9, v9, 0x1

    .line 191
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 192
    add-int/2addr v1, v5

    .line 193
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v6, v7, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 194
    add-int/lit8 v9, v9, 0x1

    .line 197
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 198
    add-int/2addr v0, v4

    .line 199
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 200
    add-int/lit8 v9, v9, 0x1

    .line 203
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 204
    add-int/2addr v7, v3

    .line 205
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 206
    add-int/lit8 v9, v9, 0x1

    .line 209
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v7, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 210
    add-int/2addr v6, v2

    .line 211
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 212
    add-int/lit8 v9, v9, 0x1

    .line 215
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v6, v7, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 216
    add-int/2addr v5, v1

    .line 217
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 218
    add-int/lit8 v9, v9, 0x1

    .line 221
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v9

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 222
    add-int/2addr v4, v0

    .line 223
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 224
    add-int/lit8 v9, v9, 0x1

    .line 176
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 227
    :cond_1
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 228
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 229
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 230
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 231
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 232
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 233
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 234
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v10, v7

    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 239
    iput v14, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 240
    const/4 v8, 0x0

    :goto_2
    const/16 v10, 0x10

    if-ge v8, v10, :cond_2

    .line 242
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v14, v10, v8

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 244
    :cond_2
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 96
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-le v0, v4, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 103
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 81
    aget-byte v1, p1, p2

    shl-int/lit8 v0, v1, 0x18

    .line 82
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 83
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 84
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    aput v0, v1, v2

    .line 87
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 91
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 137
    const v1, 0x6a09e667

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 138
    const v1, -0x4498517b

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 139
    const v1, 0x3c6ef372

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 140
    const v1, -0x5ab00ac6

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 141
    const v1, 0x510e527f

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 142
    const v1, -0x64fa9774

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 143
    const v1, 0x1f83d9ab

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 144
    const v1, 0x5be0cd19

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 146
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/org/bouncycastle/util/Memoable;

    .prologue
    .line 309
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    .line 311
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V

    .line 312
    return-void
.end method
