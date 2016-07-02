.class public Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;
.super Ljava/lang/Object;
.source "MzAdnRecordUtils.java"


# static fields
.field static final HEX:[B

.field static final LOG_TAG:Ljava/lang/String; = "MzAdnRecordUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->HEX:[B

    return-void

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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 22
    invoke-static {}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->getInstance()Lcom/android/internal/telephony/meizu/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 23
    .local v3, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    .line 28
    .local v2, "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_1

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget-object v4, v2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 37
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_2
    iget-object v4, v2, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 42
    .end local v2    # "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "displayName":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public static gsmToHex(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 132
    if-nez p0, :cond_1

    .line 133
    const/4 v2, 0x0

    .line 144
    :cond_0
    return-object v2

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 137
    .local v3, "strlen":I
    mul-int/lit8 v4, v3, 0x2

    new-array v2, v4, [B

    .line 139
    .local v2, "ret":[B
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, "c":C
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->HEX:[B

    and-int/lit8 v6, v0, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 142
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    sget-object v5, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->HEX:[B

    and-int/lit16 v6, v0, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static gsmToHex([B)[B
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 148
    if-nez p0, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 159
    :cond_0
    return-object v1

    .line 151
    :cond_1
    array-length v2, p0

    .line 153
    .local v2, "strlen":I
    mul-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 155
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 156
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->HEX:[B

    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 157
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/meizu/MzAdnRecordUtils;->HEX:[B

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringToAdnUcs2StartsWith80(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 54
    .local v4, "strlen":I
    const/4 v3, 0x0

    .line 56
    .local v3, "septets":I
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 59
    new-array v2, v3, [B

    .line 60
    .local v2, "ret":[B
    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v2, v5

    .line 62
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 64
    .local v0, "c":C
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    int-to-byte v6, v0

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 65
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "c":C
    :cond_0
    return-object v2
.end method

.method public static stringToAdnUcs2StartsWith81(Ljava/lang/String;)[B
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 72
    .local v6, "strlen":I
    add-int/lit8 v8, v6, 0x3

    new-array v5, v8, [B

    .line 74
    .local v5, "ret":[B
    const/4 v8, 0x0

    const/16 v9, -0x7f

    aput-byte v9, v5, v8

    .line 75
    const/4 v8, 0x1

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 77
    const/4 v2, 0x3

    .line 78
    .local v2, "offset":I
    const/4 v0, 0x0

    .line 79
    .local v0, "base":C
    const/4 v4, 0x0

    .local v4, "pos":I
    move v3, v2

    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 80
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 81
    .local v1, "c":C
    const v8, 0xff80

    and-int/2addr v8, v1

    if-nez v8, :cond_0

    .line 82
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v8, v1, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    .line 79
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 83
    :cond_0
    const v8, 0x8000

    and-int/2addr v8, v1

    if-eqz v8, :cond_2

    move-object v5, v7

    .line 98
    .end local v1    # "c":C
    .end local v5    # "ret":[B
    :cond_1
    :goto_2
    return-object v5

    .line 86
    .restart local v1    # "c":C
    .restart local v5    # "ret":[B
    :cond_2
    if-nez v0, :cond_3

    .line 87
    and-int/lit16 v8, v1, 0x7f80

    int-to-char v0, v8

    .line 88
    const/4 v8, 0x2

    shr-int/lit8 v9, v0, 0x7

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 89
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v8, v1, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    goto :goto_1

    .line 90
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    and-int/lit16 v8, v1, 0x7f80

    int-to-char v8, v8

    if-ne v0, v8, :cond_4

    .line 91
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v8, v1, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    goto :goto_1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    move-object v5, v7

    .line 93
    goto :goto_2
.end method

.method public static stringToAdnUcs2StartsWith82(Ljava/lang/String;)[B
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const v9, 0xff80

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 103
    .local v6, "strlen":I
    add-int/lit8 v7, v6, 0x4

    new-array v5, v7, [B

    .line 105
    .local v5, "ret":[B
    const/4 v7, 0x0

    const/16 v8, -0x7e

    aput-byte v8, v5, v7

    .line 106
    const/4 v7, 0x1

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 108
    const/4 v2, 0x4

    .line 109
    .local v2, "offset":I
    const/4 v0, 0x0

    .line 110
    .local v0, "base":C
    const/4 v4, 0x0

    .local v4, "pos":I
    move v3, v2

    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 111
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 112
    .local v1, "c":C
    and-int v7, v1, v9

    if-nez v7, :cond_0

    .line 113
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 110
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 115
    :cond_0
    if-nez v0, :cond_1

    .line 116
    and-int v7, v1, v9

    int-to-char v0, v7

    .line 117
    const/4 v7, 0x2

    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 118
    const/4 v7, 0x3

    and-int/lit16 v8, v0, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 119
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v7, v1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    goto :goto_1

    .line 120
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    and-int v7, v1, v9

    int-to-char v7, v7

    if-ne v0, v7, :cond_2

    .line 121
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit8 v7, v1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    goto :goto_1

    .line 123
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    const/4 v5, 0x0

    .line 128
    .end local v1    # "c":C
    .end local v5    # "ret":[B
    :cond_3
    return-object v5
.end method
