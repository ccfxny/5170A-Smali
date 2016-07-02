.class public final Lcom/android/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static append([BB)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .prologue
    const/4 v3, 0x0

    .line 743
    if-nez p0, :cond_0

    .line 745
    const/4 v2, 0x1

    new-array v1, v2, [B

    aput-byte p1, v1, v3

    .line 752
    :goto_0
    return-object v1

    .line 748
    :cond_0
    array-length v0, p0

    .line 749
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 750
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 751
    aput-byte p1, v1, v0

    goto :goto_0
.end method

.method public static append([II)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 757
    if-nez p0, :cond_0

    .line 759
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p1, v1, v3

    .line 766
    :goto_0
    return-object v1

    .line 762
    :cond_0
    array-length v0, p0

    .line 763
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 764
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 765
    aput p1, v1, v0

    goto :goto_0
.end method

.method public static areEqual([B[B)Z
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 91
    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 96
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 98
    goto :goto_0

    .line 94
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([C[C)Z
    .locals 5
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 56
    goto :goto_0

    .line 59
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 61
    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 66
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 68
    goto :goto_0

    .line 64
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([I[I)Z
    .locals 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 153
    goto :goto_0

    .line 156
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 163
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 165
    goto :goto_0

    .line 161
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([J[J)Z
    .locals 8
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 188
    goto :goto_0

    .line 191
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 193
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    .line 195
    goto :goto_0

    .line 191
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 210
    goto :goto_0

    .line 212
    :cond_3
    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 214
    goto :goto_0

    .line 216
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p0

    if-eq v0, v5, :cond_0

    .line 218
    aget-object v1, p0, v0

    .local v1, "objA":Ljava/lang/Object;
    aget-object v2, p1, v0

    .line 219
    .local v2, "objB":Ljava/lang/Object;
    if-nez v1, :cond_5

    .line 221
    if-eqz v2, :cond_6

    move v3, v4

    .line 223
    goto :goto_0

    .line 226
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v3, v4

    .line 228
    goto :goto_0

    .line 216
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([Z[Z)Z
    .locals 5
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 26
    goto :goto_0

    .line 29
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 31
    goto :goto_0

    .line 34
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 36
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 38
    goto :goto_0

    .line 34
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clone([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 441
    if-nez p0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 449
    :goto_0
    return-object v0

    .line 445
    :cond_0
    array-length v1, p0

    new-array v0, v1, [B

    .line 447
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static clone([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    .prologue
    const/4 v2, 0x0

    .line 454
    if-nez p0, :cond_0

    .line 456
    const/4 p1, 0x0

    .line 463
    .end local p1    # "existing":[B
    :goto_0
    return-object p1

    .line 458
    .restart local p1    # "existing":[B
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 460
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    goto :goto_0

    .line 462
    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 3
    .param p0, "data"    # [I

    .prologue
    const/4 v2, 0x0

    .line 502
    if-nez p0, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 506
    :cond_0
    array-length v1, p0

    new-array v0, v1, [I

    .line 508
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 3
    .param p0, "data"    # [J

    .prologue
    const/4 v2, 0x0

    .line 515
    if-nez p0, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 523
    :goto_0
    return-object v0

    .line 519
    :cond_0
    array-length v1, p0

    new-array v0, v1, [J

    .line 521
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method

.method public static clone([J[J)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    .prologue
    const/4 v2, 0x0

    .line 528
    if-nez p0, :cond_0

    .line 530
    const/4 p1, 0x0

    .line 537
    .end local p1    # "existing":[J
    :goto_0
    return-object p1

    .line 532
    .restart local p1    # "existing":[J
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 534
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object p1

    goto :goto_0

    .line 536
    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 555
    if-nez p0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 563
    :goto_0
    return-object v0

    .line 559
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Ljava/math/BigInteger;

    .line 561
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 3
    .param p0, "data"    # [S

    .prologue
    const/4 v2, 0x0

    .line 542
    if-nez p0, :cond_0

    .line 544
    const/4 v0, 0x0

    .line 550
    :goto_0
    return-object v0

    .line 546
    :cond_0
    array-length v1, p0

    new-array v0, v1, [S

    .line 548
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    goto :goto_0
.end method

.method public static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B

    .prologue
    .line 468
    if-nez p0, :cond_0

    .line 470
    const/4 v2, 0x0

    check-cast v2, [[B

    .line 480
    :goto_0
    return-object v2

    .line 473
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[B

    .line 475
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 477
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 480
    goto :goto_0
.end method

.method public static clone([[[B)[[[B
    .locals 3
    .param p0, "data"    # [[[B

    .prologue
    .line 485
    if-nez p0, :cond_0

    .line 487
    const/4 v2, 0x0

    check-cast v2, [[[B

    .line 497
    :goto_0
    return-object v2

    .line 490
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[[B

    .line 492
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 494
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 497
    goto :goto_0
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 771
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 773
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 775
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 776
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 786
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 780
    :cond_0
    if-eqz p1, :cond_1

    .line 782
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 786
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    .prologue
    const/4 v3, 0x0

    .line 792
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 794
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 796
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 797
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 798
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 808
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 802
    :cond_0
    if-nez p1, :cond_1

    .line 804
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_1
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    .prologue
    const/4 v3, 0x0

    .line 814
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 816
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 818
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 819
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 820
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 821
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 839
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 825
    :cond_0
    if-nez p3, :cond_1

    .line 827
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_1
    if-nez p2, :cond_2

    .line 831
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_2
    if-nez p1, :cond_3

    .line 835
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 124
    goto :goto_0

    .line 127
    :cond_3
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 129
    goto :goto_0

    .line 132
    :cond_4
    const/4 v1, 0x0

    .line 134
    .local v1, "nonEqual":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-eq v0, v4, :cond_5

    .line 136
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_5
    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "n"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 250
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 255
    :goto_1
    return v1

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "a"    # [S
    .param p1, "n"    # S

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 238
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 240
    const/4 v1, 0x1

    .line 243
    :goto_1
    return v1

    .line 236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 568
    new-array v0, p1, [B

    .line 570
    .local v0, "tmp":[B
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 572
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 579
    :goto_0
    return-object v0

    .line 576
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static copyOf([CI)[C
    .locals 3
    .param p0, "data"    # [C
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 584
    new-array v0, p1, [C

    .line 586
    .local v0, "tmp":[C
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 588
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 595
    :goto_0
    return-object v0

    .line 592
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 600
    new-array v0, p1, [I

    .line 602
    .local v0, "tmp":[I
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 604
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 611
    :goto_0
    return-object v0

    .line 608
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 616
    new-array v0, p1, [J

    .line 618
    .local v0, "tmp":[J
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 620
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 627
    :goto_0
    return-object v0

    .line 624
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 632
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 634
    .local v0, "tmp":[Ljava/math/BigInteger;
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 636
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    :goto_0
    return-object v0

    .line 640
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 659
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 661
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 663
    .local v1, "tmp":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 665
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 672
    :goto_0
    return-object v1

    .line 669
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static copyOfRange([III)[I
    .locals 4
    .param p0, "data"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 677
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 679
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 681
    .local v1, "tmp":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 683
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 690
    :goto_0
    return-object v1

    .line 687
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public static copyOfRange([JII)[J
    .locals 4
    .param p0, "data"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 695
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 697
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 699
    .local v1, "tmp":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 701
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 708
    :goto_0
    return-object v1

    .line 705
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 713
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 715
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 717
    .local v1, "tmp":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 719
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 726
    :goto_0
    return-object v1

    .line 723
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 264
    aput-byte p1, p0, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 274
    aput-char p1, p0, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 304
    aput p1, p0, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 284
    aput-wide p1, p0, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 294
    aput-short p1, p0, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method private static getLength(II)I
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 731
    sub-int v0, p1, p0

    .line 732
    .local v0, "newLength":I
    if-gez v0, :cond_0

    .line 734
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 735
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 736
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 738
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return v0
.end method

.method public static hashCode([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 310
    if-nez p0, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 324
    :cond_0
    return v0

    .line 315
    :cond_1
    array-length v1, p0

    .line 316
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 318
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 320
    mul-int/lit16 v0, v0, 0x101

    .line 321
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 3
    .param p0, "data"    # [C

    .prologue
    .line 329
    if-nez p0, :cond_1

    .line 331
    const/4 v0, 0x0

    .line 343
    :cond_0
    return v0

    .line 334
    :cond_1
    array-length v1, p0

    .line 335
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 337
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 339
    mul-int/lit16 v0, v0, 0x101

    .line 340
    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 3
    .param p0, "data"    # [I

    .prologue
    .line 360
    if-nez p0, :cond_1

    .line 362
    const/4 v0, 0x0

    .line 374
    :cond_0
    return v0

    .line 365
    :cond_1
    array-length v1, p0

    .line 366
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 368
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 370
    mul-int/lit16 v0, v0, 0x101

    .line 371
    aget v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3
    .param p0, "data"    # [Ljava/lang/Object;

    .prologue
    .line 422
    if-nez p0, :cond_1

    .line 424
    const/4 v0, 0x0

    .line 436
    :cond_0
    return v0

    .line 427
    :cond_1
    array-length v1, p0

    .line 428
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 430
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 432
    mul-int/lit16 v0, v0, 0x101

    .line 433
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([S)I
    .locals 3
    .param p0, "data"    # [S

    .prologue
    .line 403
    if-nez p0, :cond_1

    .line 405
    const/4 v0, 0x0

    .line 417
    :cond_0
    return v0

    .line 408
    :cond_1
    array-length v1, p0

    .line 409
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 411
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 413
    mul-int/lit16 v0, v0, 0x101

    .line 414
    aget-short v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([[I)I
    .locals 4
    .param p0, "ints"    # [[I

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 352
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return v0
.end method

.method public static hashCode([[S)I
    .locals 4
    .param p0, "shorts"    # [[S

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 395
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return v0
.end method

.method public static hashCode([[[S)I
    .locals 4
    .param p0, "shorts"    # [[[S

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 383
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_0
    return v0
.end method

.method public static prepend([BB)[B
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 845
    if-nez p0, :cond_0

    .line 847
    new-array v1, v4, [B

    aput-byte p1, v1, v3

    .line 854
    :goto_0
    return-object v1

    .line 850
    :cond_0
    array-length v0, p0

    .line 851
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 852
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 853
    aput-byte p1, v1, v3

    goto :goto_0
.end method
