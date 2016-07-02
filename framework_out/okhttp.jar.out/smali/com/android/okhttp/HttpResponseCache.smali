.class public final Lcom/android/okhttp/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Lcom/android/okhttp/OkResponseCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpResponseCache$1;,
        Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;,
        Lcom/android/okhttp/HttpResponseCache$Entry;,
        Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/android/okhttp/internal/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 140
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/android/okhttp/internal/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    .line 141
    return-void
.end method

.method private abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$208(Lcom/android/okhttp/HttpResponseCache;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/okhttp/HttpResponseCache;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/okhttp/HttpResponseCache;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/okhttp/HttpResponseCache;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/okio/BufferedSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/okhttp/HttpResponseCache;->readInt(Lcom/android/okio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method private static isCacheableConnection(Ljava/net/URLConnection;)Z
    .locals 1
    .param p0, "httpConnection"    # Ljava/net/URLConnection;

    .prologue
    .line 192
    instance-of v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/okhttp/internal/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readInt(Lcom/android/okio/BufferedSource;)I
    .locals 5
    .param p0, "source"    # Lcom/android/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-interface {p0}, Lcom/android/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected an integer but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "requst"    # Lcom/android/okhttp/Request;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 295
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    .line 296
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    .line 272
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
    .line 291
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->flush()V

    .line 292
    return-void
.end method

.method public get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 7
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-static {p1}, Lcom/android/okhttp/HttpResponseCache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v6, v2}, Lcom/android/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v4

    .line 165
    .local v4, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v4, :cond_1

    move-object v3, v5

    .line 181
    .end local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_0
    :goto_0
    return-object v3

    .line 168
    .restart local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_1
    new-instance v1, Lcom/android/okhttp/HttpResponseCache$Entry;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/okhttp/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v1, "entry":Lcom/android/okhttp/HttpResponseCache$Entry;
    invoke-virtual {v1, p1, v4}, Lcom/android/okhttp/HttpResponseCache$Entry;->response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;

    move-result-object v3

    .line 176
    .local v3, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v1, p1, v3}, Lcom/android/okhttp/HttpResponseCache$Entry;->matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 177
    invoke-virtual {v3}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v6

    invoke-static {v6}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 178
    goto :goto_0

    .line 169
    .end local v1    # "entry":Lcom/android/okhttp/HttpResponseCache$Entry;
    .end local v3    # "response":Lcom/android/okhttp/Response;
    .end local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v5

    .line 171
    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 148
    .local v0, "request":Lcom/android/okhttp/Request;
    invoke-virtual {p0, v0}, Lcom/android/okhttp/HttpResponseCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v1

    .line 149
    .local v1, "response":Lcom/android/okhttp/Response;
    if-nez v1, :cond_0

    .line 150
    const/4 v2, 0x0

    .line 152
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maybeRemove(Lcom/android/okhttp/Request;)Z
    .locals 2
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/android/okhttp/HttpResponseCache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const/4 v0, 0x1

    .line 237
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Lcom/android/okhttp/Response;)Ljava/net/CacheRequest;
    .locals 7
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/okhttp/HttpResponseCache;->maybeRemove(Lcom/android/okhttp/Request;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v4

    .line 202
    :cond_1
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->hasVaryAll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    new-instance v2, Lcom/android/okhttp/HttpResponseCache$Entry;

    invoke-direct {v2, p1}, Lcom/android/okhttp/HttpResponseCache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 214
    .local v2, "entry":Lcom/android/okhttp/HttpResponseCache$Entry;
    const/4 v1, 0x0

    .line 216
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_0
    iget-object v5, p0, Lcom/android/okhttp/HttpResponseCache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v6

    invoke-static {v6}, Lcom/android/okhttp/HttpResponseCache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v2, v1}, Lcom/android/okhttp/HttpResponseCache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 221
    new-instance v5, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v5, p0, v1}, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/android/okhttp/HttpResponseCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/android/okhttp/HttpResponseCache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p2}, Lcom/android/okhttp/HttpResponseCache;->isCacheableConnection(Ljava/net/URLConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/http/JavaApiConverter;->createOkResponse(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/HttpResponseCache;->put(Lcom/android/okhttp/Response;)Ljava/net/CacheRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackResponse(Lcom/android/okhttp/ResponseSource;)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/ResponseSource;

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/HttpResponseCache;->requestCount:I

    .line 309
    sget-object v0, Lcom/android/okhttp/HttpResponseCache$1;->$SwitchMap$com$squareup$okhttp$ResponseSource:[I

    invoke-virtual {p1}, Lcom/android/okhttp/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/HttpResponseCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 315
    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/android/okhttp/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/HttpResponseCache;->networkCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .locals 5
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;

    .prologue
    .line 241
    new-instance v2, Lcom/android/okhttp/HttpResponseCache$Entry;

    invoke-direct {v2, p2}, Lcom/android/okhttp/HttpResponseCache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 242
    .local v2, "entry":Lcom/android/okhttp/HttpResponseCache$Entry;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/Response$Body;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;

    # getter for: Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {v4}, Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;->access$000(Lcom/android/okhttp/HttpResponseCache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v3

    .line 243
    .local v3, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    .line 245
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v2, v1}, Lcom/android/okhttp/HttpResponseCache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 248
    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/android/okhttp/HttpResponseCache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0
.end method
