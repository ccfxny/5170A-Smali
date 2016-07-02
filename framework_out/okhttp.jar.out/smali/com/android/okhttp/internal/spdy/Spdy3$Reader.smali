.class final Lcom/android/okhttp/internal/spdy/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

.field private final source:Lcom/android/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okio/BufferedSource;Z)V
    .locals 2
    .param p1, "source"    # Lcom/android/okio/BufferedSource;
    .param p2, "client"    # Z

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    .line 118
    new-instance v0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;-><init>(Lcom/android/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    .line 119
    iput-boolean p2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    .line 120
    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 7
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 256
    const/16 v3, 0x8

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_GOAWAY length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 258
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v1

    .line 259
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 260
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_1

    .line 261
    const-string v3, "TYPE_GOAWAY unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 263
    :cond_1
    sget-object v3, Lcom/android/okio/ByteString;->EMPTY:Lcom/android/okio/ByteString;

    invoke-interface {p1, v2, v0, v3}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okio/ByteString;)V

    .line 264
    return-void
.end method

.method private readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 232
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v8

    .line 233
    .local v8, "w1":I
    const v0, 0x7fffffff

    and-int v3, v8, v0

    .line 234
    .local v3, "streamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .line 235
    .local v6, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    sget-object v7, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v2, v1

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    .line 236
    return-void
.end method

.method private readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 6
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 249
    const/4 v3, 0x4

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_PING length: %d != 4"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v1

    .line 251
    .local v1, "id":I
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v0, :cond_1

    move v3, v0

    :goto_0
    if-ne v4, v3, :cond_2

    .line 252
    .local v0, "ack":Z
    :goto_1
    invoke-interface {p1, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 253
    return-void

    .end local v0    # "ack":Z
    :cond_1
    move v3, v2

    .line 251
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 7
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 221
    const/16 v3, 0x8

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_RST_STREAM length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 223
    .local v2, "streamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v1

    .line 224
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 225
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_1

    .line 226
    const-string v3, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 228
    :cond_1
    invoke-interface {p1, v2, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    .line 229
    return-void
.end method

.method private readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 12
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 267
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v9}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v4

    .line 268
    .local v4, "numberOfEntries":I
    mul-int/lit8 v9, v4, 0x8

    add-int/lit8 v9, v9, 0x4

    if-eq p3, v9, :cond_0

    .line 269
    const-string v9, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 271
    :cond_0
    new-instance v5, Lcom/android/okhttp/internal/spdy/Settings;

    invoke-direct {v5}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    .line 272
    .local v5, "settings":Lcom/android/okhttp/internal/spdy/Settings;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 273
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v9}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v7

    .line 274
    .local v7, "w1":I
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v9}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v6

    .line 275
    .local v6, "value":I
    const/high16 v9, -0x1000000

    and-int/2addr v9, v7

    ushr-int/lit8 v3, v9, 0x18

    .line 276
    .local v3, "idFlags":I
    const v9, 0xffffff

    and-int v2, v7, v9

    .line 277
    .local v2, "id":I
    invoke-virtual {v5, v2, v3, v6}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "id":I
    .end local v3    # "idFlags":I
    .end local v6    # "value":I
    .end local v7    # "w1":I
    :cond_1
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_2

    .line 280
    .local v0, "clearPrevious":Z
    :goto_1
    invoke-interface {p1, v0, v5}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/spdy/Settings;)V

    .line 281
    return-void

    .end local v0    # "clearPrevious":Z
    :cond_2
    move v0, v8

    .line 279
    goto :goto_1
.end method

.method private readSynReply(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 213
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v8

    .line 214
    .local v8, "w1":I
    const v0, 0x7fffffff

    and-int v3, v8, v0

    .line 215
    .local v3, "streamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    add-int/lit8 v5, p3, -0x4

    invoke-virtual {v0, v5}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .line 216
    .local v6, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 217
    .local v2, "inFinished":Z
    :goto_0
    sget-object v7, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    .line 218
    return-void

    .end local v2    # "inFinished":Z
    :cond_0
    move v2, v1

    .line 216
    goto :goto_0
.end method

.method private readSynStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 12
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v11, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 197
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v9

    .line 198
    .local v9, "w1":I
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v10

    .line 199
    .local v10, "w2":I
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v7}, Lcom/android/okio/BufferedSource;->readShort()S

    move-result v8

    .line 200
    .local v8, "s3":I
    and-int v3, v9, v11

    .line 201
    .local v3, "streamId":I
    and-int v4, v10, v11

    .line 202
    .local v4, "associatedStreamId":I
    const v7, 0xe000

    and-int/2addr v7, v8

    ushr-int/lit8 v5, v7, 0xd

    .line 204
    .local v5, "priority":I
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    add-int/lit8 v11, p3, -0xa

    invoke-virtual {v7, v11}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .line 206
    .local v6, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/spdy/Header;>;"
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_0

    move v2, v1

    .line 207
    .local v2, "inFinished":Z
    :goto_0
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_1

    .line 208
    .local v1, "outFinished":Z
    :goto_1
    sget-object v7, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    .line 210
    return-void

    .end local v1    # "outFinished":Z
    .end local v2    # "inFinished":Z
    :cond_0
    move v2, v0

    .line 206
    goto :goto_0

    .restart local v2    # "inFinished":Z
    :cond_1
    move v1, v0

    .line 207
    goto :goto_1
.end method

.method private readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 239
    const/16 v5, 0x8

    if-eq p3, v5, :cond_0

    const-string v5, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 240
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v3

    .line 241
    .local v3, "w1":I
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v4

    .line 242
    .local v4, "w2":I
    and-int v2, v3, v6

    .line 243
    .local v2, "streamId":I
    and-int v5, v4, v6

    int-to-long v0, v5

    .line 244
    .local v0, "increment":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    const-string v5, "windowSizeIncrement was 0"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 245
    :cond_1
    invoke-interface {p1, v2, v0, v1}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 246
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
    .line 288
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->close()V

    .line 289
    return-void
.end method

.method public nextFrame(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 14
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 133
    :try_start_0
    iget-object v11, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v11}, Lcom/android/okio/BufferedSource;->readInt()I

    move-result v8

    .line 134
    .local v8, "w1":I
    iget-object v11, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v11}, Lcom/android/okio/BufferedSource;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 139
    .local v9, "w2":I
    const/high16 v11, -0x80000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_0

    move v0, v10

    .line 140
    .local v0, "control":Z
    :goto_0
    const/high16 v11, -0x1000000

    and-int/2addr v11, v9

    ushr-int/lit8 v2, v11, 0x18

    .line 141
    .local v2, "flags":I
    const v11, 0xffffff

    and-int v4, v9, v11

    .line 143
    .local v4, "length":I
    if-eqz v0, :cond_2

    .line 144
    const/high16 v11, 0x7fff0000

    and-int/2addr v11, v8

    ushr-int/lit8 v7, v11, 0x10

    .line 145
    .local v7, "version":I
    const v11, 0xffff

    and-int v6, v8, v11

    .line 147
    .local v6, "type":I
    const/4 v11, 0x3

    if-eq v7, v11, :cond_1

    .line 148
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "version != 3: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 135
    .end local v0    # "control":Z
    .end local v2    # "flags":I
    .end local v4    # "length":I
    .end local v6    # "type":I
    .end local v7    # "version":I
    .end local v8    # "w1":I
    .end local v9    # "w2":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v10, v3

    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v10

    .restart local v8    # "w1":I
    .restart local v9    # "w2":I
    :cond_0
    move v0, v3

    .line 139
    goto :goto_0

    .line 151
    .restart local v0    # "control":Z
    .restart local v2    # "flags":I
    .restart local v4    # "length":I
    .restart local v6    # "type":I
    .restart local v7    # "version":I
    :cond_1
    packed-switch v6, :pswitch_data_0

    .line 185
    :pswitch_0
    iget-object v11, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    int-to-long v12, v4

    invoke-interface {v11, v12, v13}, Lcom/android/okio/BufferedSource;->skip(J)V

    goto :goto_1

    .line 153
    :pswitch_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readSynStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 157
    :pswitch_2
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readSynReply(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 161
    :pswitch_3
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 165
    :pswitch_4
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 169
    :pswitch_5
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 173
    :pswitch_6
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 177
    :pswitch_7
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 181
    :pswitch_8
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 189
    .end local v6    # "type":I
    .end local v7    # "version":I
    :cond_2
    const v11, 0x7fffffff

    and-int v5, v8, v11

    .line 190
    .local v5, "streamId":I
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_3

    move v3, v10

    .line 191
    .local v3, "inFinished":Z
    :cond_3
    iget-object v11, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {p1, v3, v5, v11, v4}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->data(ZILcom/android/okio/BufferedSource;I)V

    goto :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionHeader()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
