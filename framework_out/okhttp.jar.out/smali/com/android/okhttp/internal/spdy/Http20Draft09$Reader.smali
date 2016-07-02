.class final Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;
.super Ljava/lang/Object;
.source "Http20Draft09.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Http20Draft09;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

.field final hpackReader:Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;

.field private final source:Lcom/android/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okio/BufferedSource;IZ)V
    .locals 2
    .param p1, "source"    # Lcom/android/okio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    .line 81
    iput-boolean p3, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->client:Z

    .line 82
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;-><init>(Lcom/android/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

    .line 83
    new-instance v0, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

    invoke-direct {v0, p3, p2, v1}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;-><init>(ZILcom/android/okio/Source;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;

    .line 84
    return-void
.end method

.method private readData(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 2
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 190
    .local v0, "inFinished":Z
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {p1, v0, p4, v1, p2}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->data(ZILcom/android/okio/BufferedSource;I)V

    .line 191
    return-void

    .line 188
    .end local v0    # "inFinished":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 262
    const/16 v5, 0x8

    if-ge p2, v5, :cond_0

    const-string v5, "TYPE_GOAWAY length < 8: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 263
    :cond_0
    if-eqz p4, :cond_1

    const-string v5, "TYPE_GOAWAY streamId != 0"

    new-array v6, v8, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 264
    :cond_1
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v3

    .line 265
    .local v3, "lastStreamId":I
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v2

    .line 266
    .local v2, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 267
    .local v4, "opaqueDataLength":I
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    .line 268
    .local v1, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v1, :cond_2

    .line 269
    const-string v5, "TYPE_GOAWAY unexpected error code: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 271
    :cond_2
    sget-object v0, Lcom/android/okio/ByteString;->EMPTY:Lcom/android/okio/ByteString;

    .line 272
    .local v0, "debugData":Lcom/android/okio/ByteString;
    if-lez v4, :cond_3

    .line 273
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v5, v6, v7}, Lcom/android/okio/BufferedSource;->readByteString(J)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 275
    :cond_3
    invoke-interface {p1, v3, v1, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okio/ByteString;)V

    .line 276
    return-void
.end method

.method private readHeaderBlock(SBI)Ljava/util/List;
    .locals 2
    .param p1, "length"    # S
    .param p2, "flags"    # B
    .param p3, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SBI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

    iput p1, v1, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->left:I

    iput p1, v0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->length:I

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

    iput-byte p2, v0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->flags:B

    .line 177
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;

    iput p3, v0, Lcom/android/okhttp/internal/spdy/Http20Draft09$ContinuationSource;->streamId:I

    .line 179
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->readHeaders()V

    .line 180
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->emitReferenceSet()V

    .line 183
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->getAndReset()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p4, :cond_0

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 159
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 161
    .local v2, "endStream":Z
    :goto_0
    const/4 v5, -0x1

    .line 162
    .local v5, "priority":I
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v0

    const v3, 0x7fffffff

    and-int v5, v0, v3

    .line 164
    add-int/lit8 v0, p2, -0x4

    int-to-short p2, v0

    .line 167
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readHeaderBlock(SBI)Ljava/util/List;

    move-result-object v6

    .line 169
    .local v6, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    const/4 v4, -0x1

    sget-object v7, Lcom/android/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    .line 171
    return-void

    .end local v2    # "endStream":Z
    .end local v5    # "priority":I
    .end local v6    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    :cond_2
    move v2, v1

    .line 159
    goto :goto_0
.end method

.method private readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 7
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 252
    const/16 v4, 0x8

    if-eq p2, v4, :cond_0

    const-string v4, "TYPE_PING length != 8: %s"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v3

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 253
    :cond_0
    if-eqz p4, :cond_1

    const-string v4, "TYPE_PING streamId != 0"

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v4, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 254
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v1

    .line 255
    .local v1, "payload1":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v2

    .line 256
    .local v2, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 257
    .local v0, "ack":Z
    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 258
    return-void

    .end local v0    # "ack":Z
    :cond_2
    move v0, v3

    .line 256
    goto :goto_0
.end method

.method private readPriority(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 6
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_PRIORITY length: %d != 4"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 196
    :cond_0
    if-nez p4, :cond_1

    const-string v2, "TYPE_PRIORITY streamId == 0"

    new-array v3, v5, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v1

    .line 199
    .local v1, "w1":I
    const v2, 0x7fffffff

    and-int v0, v1, v2

    .line 200
    .local v0, "priority":I
    invoke-interface {p1, p4, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->priority(II)V

    .line 201
    return-void
.end method

.method private readPushPromise(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 4
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    if-nez p4, :cond_0

    .line 242
    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int v1, v2, v3

    .line 245
    .local v1, "promisedStreamId":I
    add-int/lit8 v2, p2, -0x4

    int-to-short p2, v2

    .line 246
    invoke-direct {p0, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readHeaderBlock(SBI)Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    invoke-interface {p1, p4, v1, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 248
    return-void
.end method

.method private readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 6
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 205
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 206
    :cond_0
    if-nez p4, :cond_1

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    new-array v3, v5, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v1

    .line 208
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 209
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_2

    .line 210
    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 212
    :cond_2
    invoke-interface {p1, p4, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 213
    return-void
.end method

.method private readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 217
    if-eqz p4, :cond_0

    const-string v5, "TYPE_SETTINGS streamId != 0"

    new-array v6, v8, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 218
    :cond_0
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3

    .line 219
    if-eqz p2, :cond_1

    const-string v5, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v6, v8, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 220
    :cond_1
    invoke-interface {p1}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    .line 237
    :cond_2
    :goto_0
    return-void

    .line 224
    :cond_3
    rem-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_4

    const-string v5, "TYPE_SETTINGS length %% 8 != 0: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 225
    :cond_4
    new-instance v2, Lcom/android/okhttp/internal/spdy/Settings;

    invoke-direct {v2}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    .line 226
    .local v2, "settings":Lcom/android/okhttp/internal/spdy/Settings;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_5

    .line 227
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v4

    .line 228
    .local v4, "w1":I
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v3

    .line 230
    .local v3, "value":I
    const v5, 0xffffff

    and-int v1, v4, v5

    .line 231
    .local v1, "id":I
    invoke-virtual {v2, v1, v8, v3}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    .line 226
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 233
    .end local v1    # "id":I
    .end local v3    # "value":I
    .end local v4    # "w1":I
    :cond_5
    invoke-interface {p1, v8, v2}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/spdy/Settings;)V

    .line 234
    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v5

    if-ltz v5, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/spdy/HpackDraft05$Reader;->maxHeaderTableByteCount(I)V

    goto :goto_0
.end method

.method private readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .locals 6
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v0, v2

    .line 282
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 283
    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 284
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
    .line 287
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->close()V

    .line 288
    return-void
.end method

.method public nextFrame(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v5

    .line 99
    .local v5, "w1":I
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 105
    .local v6, "w2":I
    const/high16 v7, 0x3fff0000    # 1.9921875f

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x10

    int-to-short v2, v7

    .line 106
    .local v2, "length":S
    const v7, 0xff00

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v4, v7

    .line 107
    .local v4, "type":B
    and-int/lit16 v7, v5, 0xff

    int-to-byte v1, v7

    .line 109
    .local v1, "flags":B
    const v7, 0x7fffffff

    and-int v3, v6, v7

    .line 111
    .local v3, "streamId":I
    packed-switch v4, :pswitch_data_0

    .line 150
    :pswitch_0
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    int-to-long v8, v2

    invoke-interface {v7, v8, v9}, Lcom/android/okio/BufferedSource;->skip(J)V

    .line 152
    :goto_0
    const/4 v7, 0x1

    .end local v1    # "flags":B
    .end local v2    # "length":S
    .end local v3    # "streamId":I
    .end local v4    # "type":B
    .end local v5    # "w1":I
    .end local v6    # "w2":I
    :goto_1
    return v7

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    goto :goto_1

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "flags":B
    .restart local v2    # "length":S
    .restart local v3    # "streamId":I
    .restart local v4    # "type":B
    .restart local v5    # "w1":I
    .restart local v6    # "w2":I
    :pswitch_1
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readData(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readPriority(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 125
    :pswitch_4
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 129
    :pswitch_5
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 133
    :pswitch_6
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readPushPromise(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 137
    :pswitch_7
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 141
    :pswitch_8
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 145
    :pswitch_9
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public readConnectionHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->client:Z

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http20Draft09$Reader;->source:Lcom/android/okio/BufferedSource;

    # getter for: Lcom/android/okhttp/internal/spdy/Http20Draft09;->CONNECTION_HEADER:Lcom/android/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$000()Lcom/android/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/okio/BufferedSource;->readByteString(J)Lcom/android/okio/ByteString;

    move-result-object v0

    .line 89
    .local v0, "connectionHeader":Lcom/android/okio/ByteString;
    # getter for: Lcom/android/okhttp/internal/spdy/Http20Draft09;->CONNECTION_HEADER:Lcom/android/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$000()Lcom/android/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "Expected a connection header but was %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    # invokes: Lcom/android/okhttp/internal/spdy/Http20Draft09;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/spdy/Http20Draft09;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
