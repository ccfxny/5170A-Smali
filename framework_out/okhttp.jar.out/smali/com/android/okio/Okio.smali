.class public final Lcom/android/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p0, "sink"    # Lcom/android/okio/Sink;

    .prologue
    .line 33
    new-instance v0, Lcom/android/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/android/okio/RealBufferedSink;-><init>(Lcom/android/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;
    .locals 1
    .param p0, "source"    # Lcom/android/okio/Source;

    .prologue
    .line 29
    new-instance v0, Lcom/android/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/android/okio/RealBufferedSource;-><init>(Lcom/android/okio/Source;)V

    return-object v0
.end method

.method public static copy(Lcom/android/okio/OkBuffer;JJLjava/io/OutputStream;)V
    .locals 9
    .param p0, "source"    # Lcom/android/okio/OkBuffer;
    .param p1, "offset"    # J
    .param p3, "byteCount"    # J
    .param p5, "sink"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/android/okio/OkBuffer;->size:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 42
    iget-object v7, p0, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 43
    .local v7, "s":Lcom/android/okio/Segment;
    :goto_0
    iget v0, v7, Lcom/android/okio/Segment;->limit:I

    iget v1, v7, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 44
    iget v0, v7, Lcom/android/okio/Segment;->limit:I

    iget v1, v7, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 45
    iget-object v7, v7, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 50
    iget v0, v7, Lcom/android/okio/Segment;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v6, v0

    .line 51
    .local v6, "pos":I
    iget v0, v7, Lcom/android/okio/Segment;->limit:I

    sub-int/2addr v0, v6

    int-to-long v0, v0

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 52
    .local v8, "toWrite":I
    iget-object v0, v7, Lcom/android/okio/Segment;->data:[B

    invoke-virtual {p5, v0, v6, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    int-to-long v0, v8

    sub-long/2addr p3, v0

    .line 54
    const-wide/16 p1, 0x0

    .line 55
    goto :goto_1

    .line 56
    .end local v6    # "pos":I
    .end local v8    # "toWrite":I
    :cond_1
    return-void
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/android/okio/Sink;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    new-instance v0, Lcom/android/okio/Okio$1;

    invoke-direct {v0, p0}, Lcom/android/okio/Okio$1;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/android/okio/Source;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 105
    new-instance v0, Lcom/android/okio/Okio$2;

    invoke-direct {v0, p0}, Lcom/android/okio/Okio$2;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
