.class final Lcom/android/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/android/okio/BufferedSource;


# instance fields
.field public final buffer:Lcom/android/okio/OkBuffer;

.field private closed:Z

.field public final source:Lcom/android/okio/Source;


# direct methods
.method public constructor <init>(Lcom/android/okio/Source;)V
    .locals 1
    .param p1, "source"    # Lcom/android/okio/Source;

    .prologue
    .line 36
    new-instance v0, Lcom/android/okio/OkBuffer;

    invoke-direct {v0}, Lcom/android/okio/OkBuffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/okio/RealBufferedSource;-><init>(Lcom/android/okio/Source;Lcom/android/okio/OkBuffer;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/okio/Source;Lcom/android/okio/OkBuffer;)V
    .locals 2
    .param p1, "source"    # Lcom/android/okio/Source;
    .param p2, "buffer"    # Lcom/android/okio/OkBuffer;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    .line 32
    iput-object p1, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/okio/RealBufferedSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okio/RealBufferedSource;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    return v0
.end method


# virtual methods
.method public buffer()Lcom/android/okio/OkBuffer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    .line 198
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    invoke-interface {v0}, Lcom/android/okio/Source;->close()V

    .line 199
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->clear()V

    goto :goto_0
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    invoke-interface {v0, p1}, Lcom/android/okio/Source;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 192
    return-object p0
.end method

.method public exhausted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    iget-object v1, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okio/Source;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(B)J
    .locals 10
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 142
    iget-boolean v6, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    if-eqz v6, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_0
    const-wide/16 v2, 0x0

    .line 145
    .local v2, "start":J
    :cond_1
    iget-object v6, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v6, p1, v2, v3}, Lcom/android/okio/OkBuffer;->indexOf(BJ)J

    move-result-wide v0

    .local v0, "index":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v2, v6, Lcom/android/okio/OkBuffer;->size:J

    .line 147
    iget-object v6, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    iget-object v7, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    const-wide/16 v8, 0x800

    invoke-interface {v6, v7, v8, v9}, Lcom/android/okio/Source;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_1

    move-wide v0, v4

    .line 149
    .end local v0    # "index":J
    :cond_2
    return-wide v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/android/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/android/okio/RealBufferedSource$1;-><init>(Lcom/android/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public read(Lcom/android/okio/OkBuffer;J)J
    .locals 10
    .param p1, "sink"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    .line 44
    cmp-long v6, p2, v8

    if-gez v6, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_0
    iget-boolean v6, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    if-eqz v6, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_1
    iget-object v6, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v6, v6, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 48
    iget-object v6, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    iget-object v7, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    const-wide/16 v8, 0x800

    invoke-interface {v6, v7, v8, v9}, Lcom/android/okio/Source;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    .line 49
    .local v0, "read":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 53
    .end local v0    # "read":J
    :goto_0
    return-wide v4

    .line 52
    :cond_2
    iget-object v4, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v4, v4, Lcom/android/okio/OkBuffer;->size:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 53
    .local v2, "toRead":J
    iget-object v4, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/okio/OkBuffer;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 70
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteString(J)Lcom/android/okio/ByteString;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 75
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okio/OkBuffer;->readByteString(J)Lcom/android/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 111
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 116
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 121
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 126
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 101
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 106
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/android/okio/RealBufferedSource;->require(J)V

    .line 80
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okio/OkBuffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 86
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v2, v2, Lcom/android/okio/OkBuffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v2, v2, Lcom/android/okio/OkBuffer;->size:J

    invoke-virtual {p0, v2, v3}, Lcom/android/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .line 90
    :goto_0
    return-object v2

    .line 87
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okio/OkBuffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 95
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okio/OkBuffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public require(J)V
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v0, v0, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    iget-object v1, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okio/Source;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 66
    :cond_1
    return-void
.end method

.method public skip(J)V
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 130
    iget-boolean v2, p0, Lcom/android/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v2}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 136
    .local v0, "toSkip":J
    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okio/OkBuffer;->skip(J)V

    .line 137
    sub-long/2addr p1, v0

    .line 131
    .end local v0    # "toSkip":J
    :cond_1
    cmp-long v2, p1, v6

    if-lez v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    iget-wide v2, v2, Lcom/android/okio/OkBuffer;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    iget-object v3, p0, Lcom/android/okio/RealBufferedSource;->buffer:Lcom/android/okio/OkBuffer;

    const-wide/16 v4, 0x800

    invoke-interface {v2, v3, v4, v5}, Lcom/android/okio/Source;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 139
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okio/RealBufferedSource;->source:Lcom/android/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
