.class final Lcom/android/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/android/okio/BufferedSink;


# instance fields
.field public final buffer:Lcom/android/okio/OkBuffer;

.field private closed:Z

.field public final sink:Lcom/android/okio/Sink;


# direct methods
.method public constructor <init>(Lcom/android/okio/Sink;)V
    .locals 1
    .param p1, "sink"    # Lcom/android/okio/Sink;

    .prologue
    .line 33
    new-instance v0, Lcom/android/okio/OkBuffer;

    invoke-direct {v0}, Lcom/android/okio/OkBuffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/okio/RealBufferedSink;-><init>(Lcom/android/okio/Sink;Lcom/android/okio/OkBuffer;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/okio/Sink;Lcom/android/okio/OkBuffer;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okio/Sink;
    .param p2, "buffer"    # Lcom/android/okio/OkBuffer;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p2, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    .line 29
    iput-object p1, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/okio/RealBufferedSink;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okio/RealBufferedSink;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    return v0
.end method


# virtual methods
.method public buffer()Lcom/android/okio/OkBuffer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v2, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v1, 0x0

    .line 166
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v2, v2, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    iget-object v3, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    iget-object v4, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v4, v4, Lcom/android/okio/OkBuffer;->size:J

    invoke-interface {v2, v3, v4, v5}, Lcom/android/okio/Sink;->write(Lcom/android/okio/OkBuffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    invoke-interface {v2}, Lcom/android/okio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :cond_3
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    .line 180
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 175
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_2
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    invoke-interface {v0, p1}, Lcom/android/okio/Sink;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Sink;

    .line 185
    return-object p0
.end method

.method public emitCompleteSegments()Lcom/android/okio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v2, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v2}, Lcom/android/okio/OkBuffer;->completeSegmentByteCount()J

    move-result-wide v0

    .line 116
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    iget-object v3, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/okio/Sink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 117
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v0, v0, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    iget-object v1, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    iget-object v2, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v2, v2, Lcom/android/okio/OkBuffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okio/Sink;->write(Lcom/android/okio/OkBuffer;J)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    invoke-interface {v0}, Lcom/android/okio/Sink;->flush()V

    .line 157
    return-void
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/android/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lcom/android/okio/RealBufferedSink$1;-><init>(Lcom/android/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okio/RealBufferedSink;->sink:Lcom/android/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okio/ByteString;)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "byteString"    # Lcom/android/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->write(Lcom/android/okio/ByteString;)Lcom/android/okio/OkBuffer;

    .line 50
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write([B)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->write([B)Lcom/android/okio/OkBuffer;

    .line 62
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    .line 68
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okio/OkBuffer;J)V
    .locals 2
    .param p1, "source"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okio/OkBuffer;->write(Lcom/android/okio/OkBuffer;J)V

    .line 44
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    .line 45
    return-void
.end method

.method public writeByte(I)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    .line 74
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->writeInt(I)Lcom/android/okio/OkBuffer;

    .line 92
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->writeIntLe(I)Lcom/android/okio/BufferedSink;

    .line 98
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lcom/android/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okio/OkBuffer;->writeLong(J)Lcom/android/okio/OkBuffer;

    .line 104
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lcom/android/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okio/OkBuffer;->writeLongLe(J)Lcom/android/okio/BufferedSink;

    .line 110
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->writeShort(I)Lcom/android/okio/OkBuffer;

    .line 80
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->writeShortLe(I)Lcom/android/okio/BufferedSink;

    .line 86
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1}, Lcom/android/okio/OkBuffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/OkBuffer;

    .line 56
    invoke-virtual {p0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method
