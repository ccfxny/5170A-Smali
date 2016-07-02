.class Lcom/android/org/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBodyLength(I)I
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 67
    const/4 v0, 0x1

    .line 69
    .local v0, "count":I
    const/16 v4, 0x7f

    if-le p0, v4, :cond_1

    .line 71
    const/4 v2, 0x1

    .line 72
    .local v2, "size":I
    move v3, p0

    .line 74
    .local v3, "val":I
    :goto_0
    ushr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v1, v4, 0x8

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 79
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 85
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "val":I
    :cond_1
    return v0
.end method

.method static calculateTagLength(I)I
    .locals 4
    .param p0, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 93
    .local v0, "length":I
    const/16 v3, 0x1f

    if-lt p0, v3, :cond_0

    .line 95
    const/16 v3, 0x80

    if-ge p0, v3, :cond_1

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    const/4 v3, 0x5

    new-array v2, v3, [B

    .line 102
    .local v2, "stack":[B
    array-length v1, v2

    .line 104
    .local v1, "pos":I
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 108
    :cond_2
    shr-int/lit8 p0, p0, 0x7

    .line 109
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 111
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_2

    .line 113
    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const-wide/32 v6, 0x7fffffff

    .line 23
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v1, :cond_0

    .line 25
    check-cast p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v1

    .line 60
    .local v2, "maxMemory":J
    :goto_0
    return v1

    .line 27
    .end local v2    # "maxMemory":J
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    if-eqz v1, :cond_1

    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v1

    goto :goto_0

    .line 31
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_1
    instance-of v1, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_2

    .line 33
    check-cast p0, Ljava/io/ByteArrayInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    goto :goto_0

    .line 35
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_2
    instance-of v1, p0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_4

    .line 39
    :try_start_0
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 40
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 42
    .local v4, "size":J
    :goto_1
    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 44
    long-to-int v1, v4

    goto :goto_0

    .end local v4    # "size":J
    :cond_3
    move-wide v4, v6

    .line 40
    goto :goto_1

    .line 47
    :catch_0
    move-exception v1

    .line 54
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 55
    .restart local v2    # "maxMemory":J
    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    .line 57
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    const v1, 0x7fffffff

    goto :goto_0

    .line 60
    :cond_5
    long-to-int v1, v2

    goto :goto_0
.end method
