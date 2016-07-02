.class public final Lcom/android/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/android/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lcom/android/okio/InflaterSource;

.field private section:I

.field private final source:Lcom/android/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/android/okio/Source;)V
    .locals 3
    .param p1, "source"    # Lcom/android/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okio/GzipSource;->section:I

    .line 54
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/android/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    .line 57
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/android/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 58
    invoke-static {p1}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    .line 59
    new-instance v0, Lcom/android/okio/InflaterSource;

    iget-object v1, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    iget-object v2, p0, Lcom/android/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lcom/android/okio/InflaterSource;-><init>(Lcom/android/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcom/android/okio/GzipSource;->inflaterSource:Lcom/android/okio/InflaterSource;

    .line 60
    return-void
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # I
    .param p3, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    if-eq p3, p2, :cond_0

    .line 196
    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    return-void
.end method

.method private consumeHeader()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lcom/android/okio/BufferedSource;->require(J)V

    .line 110
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/okio/OkBuffer;->getByte(J)B

    move-result v7

    .line 111
    .local v7, "flags":B
    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v6, 0x1

    .line 112
    .local v6, "fhcrc":Z
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okio/GzipSource;->updateCrc(Lcom/android/okio/OkBuffer;JJ)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->readShort()S

    move-result v8

    .line 115
    .local v8, "id1id2":S
    const-string v0, "ID1ID2"

    const/16 v1, 0x1f8b

    invoke-direct {p0, v0, v1, v8}, Lcom/android/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 116
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lcom/android/okio/BufferedSource;->skip(J)V

    .line 122
    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lcom/android/okio/BufferedSource;->require(J)V

    .line 124
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okio/GzipSource;->updateCrc(Lcom/android/okio/OkBuffer;JJ)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->readShortLe()S

    move-result v9

    .line 126
    .local v9, "xlen":I
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lcom/android/okio/BufferedSource;->require(J)V

    .line 127
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okio/GzipSource;->updateCrc(Lcom/android/okio/OkBuffer;JJ)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lcom/android/okio/BufferedSource;->skip(J)V

    .line 135
    .end local v9    # "xlen":I
    :cond_3
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 136
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/okio/BufferedSource;->indexOf(B)J

    move-result-wide v10

    .line 137
    .local v10, "index":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 111
    .end local v6    # "fhcrc":Z
    .end local v8    # "id1id2":S
    .end local v10    # "index":J
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 138
    .restart local v6    # "fhcrc":Z
    .restart local v8    # "id1id2":S
    .restart local v10    # "index":J
    :cond_5
    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okio/GzipSource;->updateCrc(Lcom/android/okio/OkBuffer;JJ)V

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v10

    invoke-interface {v0, v2, v3}, Lcom/android/okio/BufferedSource;->skip(J)V

    .line 146
    .end local v10    # "index":J
    :cond_7
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 147
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/okio/BufferedSource;->indexOf(B)J

    move-result-wide v10

    .line 148
    .restart local v10    # "index":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 149
    :cond_8
    if-eqz v6, :cond_9

    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/okio/GzipSource;->updateCrc(Lcom/android/okio/OkBuffer;JJ)V

    .line 150
    :cond_9
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v10

    invoke-interface {v0, v2, v3}, Lcom/android/okio/BufferedSource;->skip(J)V

    .line 157
    .end local v10    # "index":J
    :cond_a
    if-eqz v6, :cond_b

    .line 158
    const-string v0, "FHCRC"

    iget-object v1, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okio/BufferedSource;->readShortLe()S

    move-result v1

    iget-object v2, p0, Lcom/android/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 159
    iget-object v0, p0, Lcom/android/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 161
    :cond_b
    return-void
.end method

.method private consumeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v0, "CRC"

    iget-object v1, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/android/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 169
    const-string v0, "ISIZE"

    iget-object v1, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/android/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 170
    return-void
.end method

.method private updateCrc(Lcom/android/okio/OkBuffer;JJ)V
    .locals 8
    .param p1, "buffer"    # Lcom/android/okio/OkBuffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .prologue
    .line 183
    iget-object v0, p1, Lcom/android/okio/OkBuffer;->head:Lcom/android/okio/Segment;

    .local v0, "s":Lcom/android/okio/Segment;
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_1

    .line 184
    iget v3, v0, Lcom/android/okio/Segment;->limit:I

    iget v4, v0, Lcom/android/okio/Segment;->pos:I

    sub-int v1, v3, v4

    .line 185
    .local v1, "segmentByteCount":I
    int-to-long v4, v1

    cmp-long v3, p2, v4

    if-gez v3, :cond_0

    .line 186
    int-to-long v4, v1

    sub-long/2addr v4, p2

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 187
    .local v2, "toUpdate":I
    iget-object v3, p0, Lcom/android/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v4, v0, Lcom/android/okio/Segment;->data:[B

    iget v5, v0, Lcom/android/okio/Segment;->pos:I

    int-to-long v6, v5

    add-long/2addr v6, p2

    long-to-int v5, v6

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 188
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 190
    .end local v2    # "toUpdate":I
    :cond_0
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 183
    iget-object v0, v0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    goto :goto_0

    .line 192
    .end local v1    # "segmentByteCount":I
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/okio/GzipSource;->inflaterSource:Lcom/android/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/android/okio/InflaterSource;->close()V

    .line 179
    return-void
.end method

.method public deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;
    .locals 1
    .param p1, "deadline"    # Lcom/android/okio/Deadline;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0, p1}, Lcom/android/okio/BufferedSource;->deadline(Lcom/android/okio/Deadline;)Lcom/android/okio/Source;

    .line 174
    return-object p0
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
    const-wide/16 v0, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    .line 63
    cmp-long v6, p2, v4

    if-gez v6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    cmp-long v6, p2, v4

    if-nez v6, :cond_1

    .line 99
    :goto_0
    return-wide v4

    .line 67
    :cond_1
    iget v6, p0, Lcom/android/okio/GzipSource;->section:I

    if-nez v6, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/android/okio/GzipSource;->consumeHeader()V

    .line 69
    iput v7, p0, Lcom/android/okio/GzipSource;->section:I

    .line 73
    :cond_2
    iget v6, p0, Lcom/android/okio/GzipSource;->section:I

    if-ne v6, v7, :cond_4

    .line 74
    iget-wide v2, p1, Lcom/android/okio/OkBuffer;->size:J

    .line 75
    .local v2, "offset":J
    iget-object v6, p0, Lcom/android/okio/GzipSource;->inflaterSource:Lcom/android/okio/InflaterSource;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/okio/InflaterSource;->read(Lcom/android/okio/OkBuffer;J)J

    move-result-wide v4

    .line 76
    .local v4, "result":J
    cmp-long v6, v4, v0

    if-eqz v6, :cond_3

    move-object v0, p0

    move-object v1, p1

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/android/okio/GzipSource;->updateCrc(Lcom/android/okio/OkBuffer;JJ)V

    goto :goto_0

    .line 80
    :cond_3
    iput v8, p0, Lcom/android/okio/GzipSource;->section:I

    .line 86
    .end local v2    # "offset":J
    .end local v4    # "result":J
    :cond_4
    iget v6, p0, Lcom/android/okio/GzipSource;->section:I

    if-ne v6, v8, :cond_5

    .line 87
    invoke-direct {p0}, Lcom/android/okio/GzipSource;->consumeTrailer()V

    .line 88
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/okio/GzipSource;->section:I

    .line 94
    iget-object v6, p0, Lcom/android/okio/GzipSource;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v6}, Lcom/android/okio/BufferedSource;->exhausted()Z

    move-result v6

    if-nez v6, :cond_5

    .line 95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-wide v4, v0

    .line 99
    goto :goto_0
.end method
