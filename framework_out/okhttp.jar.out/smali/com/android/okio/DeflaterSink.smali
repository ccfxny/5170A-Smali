.class public final Lcom/android/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/android/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lcom/android/okio/BufferedSink;


# direct methods
.method public constructor <init>(Lcom/android/okio/Sink;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "sink"    # Lcom/android/okio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okio/DeflaterSink;->sink:Lcom/android/okio/BufferedSink;

    .line 44
    iput-object p2, p0, Lcom/android/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 45
    return-void
.end method

.method private deflate(Z)V
    .locals 8
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v3, p0, Lcom/android/okio/DeflaterSink;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v0

    .line 74
    .local v0, "buffer":Lcom/android/okio/OkBuffer;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/okio/OkBuffer;->writableSegment(I)Lcom/android/okio/Segment;

    move-result-object v2

    .line 80
    .local v2, "s":Lcom/android/okio/Segment;
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lcom/android/okio/Segment;->data:[B

    iget v5, v2, Lcom/android/okio/Segment;->limit:I

    iget v6, v2, Lcom/android/okio/Segment;->limit:I

    rsub-int v6, v6, 0x800

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v1

    .line 84
    .local v1, "deflated":I
    :goto_1
    if-lez v1, :cond_2

    .line 85
    iget v3, v2, Lcom/android/okio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/okio/Segment;->limit:I

    .line 86
    iget-wide v4, v0, Lcom/android/okio/OkBuffer;->size:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/okio/OkBuffer;->size:J

    .line 87
    iget-object v3, p0, Lcom/android/okio/DeflaterSink;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    goto :goto_0

    .line 80
    .end local v1    # "deflated":I
    :cond_1
    iget-object v3, p0, Lcom/android/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lcom/android/okio/Segment;->data:[B

    iget v5, v2, Lcom/android/okio/Segment;->limit:I

    iget v6, v2, Lcom/android/okio/Segment;->limit:I

    rsub-int v6, v6, 0x800

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    goto :goto_1

    .line 88
    .restart local v1    # "deflated":I
    :cond_2
    iget-object v3, p0, Lcom/android/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-boolean v2, p0, Lcom/android/okio/DeflaterSink;->closed:Z

    if-eqz v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 106
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lcom/android/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 107
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/okio/DeflaterSink;->deflate(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :cond_2
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/android/okio/DeflaterSink;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v2}, Lcom/android/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :cond_3
    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okio/DeflaterSink;->closed:Z

    .line 125
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 120
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_3
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/okio/DeflaterSink;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/android/okio/BufferedSink;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;

    .line 130
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/okio/DeflaterSink;->deflate(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/okio/DeflaterSink;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->flush()V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okio/DeflaterSink;->sink:Lcom/android/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okio/OkBuffer;J)V
    .locals 8
    .param p1, "source"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    iget-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 50
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 52
    iget-object v6, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 53
    .local v6, "head":Lcom/android/okio/Segment;
    iget v0, v6, Lcom/android/okio/Segment;->limit:I

    iget v1, v6, Lcom/android/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 54
    .local v7, "toDeflate":I
    iget-object v0, p0, Lcom/android/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, v6, Lcom/android/okio/Segment;->data:[B

    iget v4, v6, Lcom/android/okio/Segment;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okio/DeflaterSink;->deflate(Z)V

    .line 60
    iget-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/android/okio/OkBuffer;->size:J

    .line 61
    iget v0, v6, Lcom/android/okio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lcom/android/okio/Segment;->pos:I

    .line 62
    iget v0, v6, Lcom/android/okio/Segment;->pos:I

    iget v1, v6, Lcom/android/okio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {v6}, Lcom/android/okio/Segment;->pop()Lcom/android/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .line 64
    sget-object v0, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    invoke-virtual {v0, v6}, Lcom/android/okio/SegmentPool;->recycle(Lcom/android/okio/Segment;)V

    .line 67
    :cond_0
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 68
    goto :goto_0

    .line 69
    .end local v6    # "head":Lcom/android/okio/Segment;
    .end local v7    # "toDeflate":I
    :cond_1
    return-void
.end method
