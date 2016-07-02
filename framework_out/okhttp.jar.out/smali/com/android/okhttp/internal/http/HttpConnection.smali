.class public final Lcom/android/okhttp/internal/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpConnection$1;,
        Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;,
        Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;,
        Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;,
        Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;,
        Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;,
        Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final FINAL_CHUNK:[B

.field private static final HEX_DIGITS:[B

.field private static final ON_IDLE_CLOSE:I = 0x2

.field private static final ON_IDLE_HOLD:I = 0x0

.field private static final ON_IDLE_POOL:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final connection:Lcom/android/okhttp/Connection;

.field private onIdle:I

.field private final pool:Lcom/android/okhttp/ConnectionPool;

.field private final sink:Lcom/android/okio/BufferedSink;

.field private final socket:Ljava/net/Socket;

.field private final source:Lcom/android/okio/BufferedSource;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/okhttp/internal/http/HttpConnection;->HEX_DIGITS:[B

    .line 312
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/okhttp/internal/http/HttpConnection;->FINAL_CHUNK:[B

    return-void

    .line 309
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 312
    :array_1
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/android/okhttp/Connection;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 81
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 85
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->pool:Lcom/android/okhttp/ConnectionPool;

    .line 86
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    .line 87
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 88
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Source;)Lcom/android/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;

    .line 89
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    return p1
.end method

.method static synthetic access$400()[B
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/okhttp/internal/http/HttpConnection;->FINAL_CHUNK:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/okhttp/internal/http/HttpConnection;->HEX_DIGITS:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/ConnectionPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->pool:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;

    return-object v0
.end method


# virtual methods
.method public bufferSize()J
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okio/BufferedSource;->buffer()Lcom/android/okio/OkBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Connection;->closeIfOwnedBy(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public closeOnIdle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 114
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 116
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->close()V

    .line 118
    :cond_0
    return-void
.end method

.method public discard(Lcom/android/okio/Source;I)Z
    .locals 4
    .param p1, "in"    # Lcom/android/okio/Source;
    .param p2, "timeoutMillis"    # I

    .prologue
    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 214
    .local v1, "socketTimeout":I
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okio/Source;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 218
    :try_start_2
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 221
    .end local v1    # "socketTimeout":I
    :goto_0
    return v2

    .line 218
    .restart local v1    # "socketTimeout":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    .end local v1    # "socketTimeout":I
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public emptyResponseBody()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(Ljava/net/CacheRequest;J)Lcom/android/okio/Source;

    .line 256
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->flush()V

    .line 131
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 141
    :try_start_0
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 143
    .local v2, "readTimeout":I
    :try_start_1
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 144
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    :try_start_2
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 154
    .end local v2    # "readTimeout":I
    :goto_0
    return v3

    .line 149
    .restart local v2    # "readTimeout":I
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v5
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .end local v2    # "readTimeout":I
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/net/SocketTimeoutException;
    move v3, v4

    .line 152
    goto :goto_0

    .line 153
    .end local v1    # "ignored":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public newChunkedSink()Lcom/android/okio/Sink;
    .locals 3

    .prologue
    .line 226
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 228
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newChunkedSource(Ljava/net/CacheRequest;Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okio/Source;
    .locals 3
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p2, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 262
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;Lcom/android/okhttp/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lcom/android/okio/Sink;
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 232
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 234
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;JLcom/android/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(Ljava/net/CacheRequest;J)Lcom/android/okio/Source;
    .locals 4
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 247
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;J)V

    return-object v0
.end method

.method public newUnknownLengthSource(Ljava/net/CacheRequest;)Lcom/android/okio/Source;
    .locals 3
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 268
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V

    return-object v0
.end method

.method public poolOnIdle()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 100
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->pool:Lcom/android/okhttp/ConnectionPool;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionPool;->recycle(Lcom/android/okhttp/Connection;)V

    .line 104
    :cond_0
    return-void
.end method

.method public readHeaders(Lcom/android/okhttp/Headers$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers$Builder;->addLine(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public readResponse()Lcom/android/okhttp/Response$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget v4, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 175
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "statusLineString":Ljava/lang/String;
    new-instance v2, Lcom/android/okhttp/internal/http/StatusLine;

    invoke-direct {v2, v3}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v4, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v4}, Lcom/android/okhttp/Response$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/android/okhttp/Response$Builder;->statusLine(Lcom/android/okhttp/internal/http/StatusLine;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    sget-object v5, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    sget-object v6, Lcom/android/okhttp/Protocol;->HTTP_11:Lcom/android/okhttp/Protocol;

    iget-object v6, v6, Lcom/android/okhttp/Protocol;->name:Lcom/android/okio/ByteString;

    invoke-virtual {v6}, Lcom/android/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 186
    .local v1, "responseBuilder":Lcom/android/okhttp/Response$Builder;
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 187
    .local v0, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/android/okhttp/Headers$Builder;)V

    .line 188
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 190
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StatusLine;->code()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    .line 191
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 192
    return-object v1
.end method

.method public writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V
    .locals 4
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;

    invoke-interface {v1, p2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    move-result-object v1

    const-string v2, ": "

    invoke-interface {v1, v2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lcom/android/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okio/BufferedSink;

    .line 169
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 170
    return-void
.end method

.method public writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .locals 3
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    .line 240
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okio/BufferedSink;)V

    .line 241
    return-void
.end method
