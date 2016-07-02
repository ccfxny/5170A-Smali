.class public Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# static fields
.field public static final MAX_REDIRECTS:I = 0x14


# instance fields
.field final client:Lcom/android/okhttp/OkHttpClient;

.field private fixedContentLength:J

.field handshake:Lcom/android/okhttp/Handshake;

.field protected httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private redirectionCount:I

.field private requestHeaders:Lcom/android/okhttp/Headers$Builder;

.field private route:Lcom/android/okhttp/Route;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 77
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    .line 99
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    .line 100
    return-void
.end method

.method private execute(Z)Z
    .locals 3
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 392
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    .line 393
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    .line 396
    if-eqz p1, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    const/4 v2, 0x1

    .line 405
    :goto_1
    return v2

    .line 393
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 403
    .local v1, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v1, :cond_2

    .line 404
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 405
    const/4 v2, 0x0

    goto :goto_1

    .line 409
    :cond_2
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 410
    throw v0
.end method

.method private getResponse()Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 327
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 328
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 350
    :goto_0
    return-object v8

    .line 332
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x3a980

    add-long v6, v8, v10

    .line 336
    .local v6, "stopTime":J
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_2

    .line 337
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Cannot retry due to connection time"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    new-instance v8, Ljava/net/HttpRetryException;

    const-string v9, "Cannot retry due to connection time"

    const/16 v10, 0x193

    invoke-direct {v8, v9, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 341
    :cond_2
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 345
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v2

    .line 347
    .local v2, "response":Lcom/android/okhttp/Response;
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->processResponseHeaders()Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    move-result-object v4

    .line 348
    .local v4, "retry":Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    sget-object v8, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v4, v8, :cond_3

    .line 349
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 350
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto :goto_0

    .line 354
    :cond_3
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 355
    .local v5, "retryMethod":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okio/Sink;

    move-result-object v1

    .line 360
    .local v1, "requestBody":Lcom/android/okio/Sink;
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Response;->code()I

    move-result v3

    .line 361
    .local v3, "responseCode":I
    const/16 v8, 0x12c

    if-eq v3, v8, :cond_4

    const/16 v8, 0x12d

    if-eq v3, v8, :cond_4

    const/16 v8, 0x12e

    if-eq v3, v8, :cond_4

    const/16 v8, 0x12f

    if-ne v3, v8, :cond_5

    .line 365
    :cond_4
    const-string v5, "GET"

    .line 366
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    const-string v9, "Content-Length"

    invoke-virtual {v8, v9}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 367
    const/4 v1, 0x0

    .line 370
    :cond_5
    if-eqz v1, :cond_6

    instance-of v8, v1, Lcom/android/okhttp/internal/http/RetryableSink;

    if-nez v8, :cond_6

    .line 371
    new-instance v8, Ljava/net/HttpRetryException;

    const-string v9, "Cannot retry streamed HTTP body"

    invoke-direct {v8, v9, v3}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 374
    :cond_6
    sget-object v8, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v4, v8, :cond_7

    .line 375
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 378
    :cond_7
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    move-result-object v0

    .line 379
    .local v0, "connection":Lcom/android/okhttp/Connection;
    check-cast v1, Lcom/android/okhttp/internal/http/RetryableSink;

    .end local v1    # "requestBody":Lcom/android/okio/Sink;
    invoke-direct {p0, v5, v0, v1, v2}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v8

    iput-object v8, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto/16 :goto_1
.end method

.method private initHttpEngine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v1, :cond_1

    .line 284
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    .line 270
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    const-string v1, "POST"

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 282
    throw v0

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/android/okhttp/Connection;
    .param p3, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p4, "priorResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 288
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/Request$Body;)Lcom/android/okhttp/Request$Builder;

    move-result-object v8

    .line 291
    .local v8, "builder":Lcom/android/okhttp/Request$Builder;
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v9

    .line 292
    .local v9, "headers":Lcom/android/okhttp/Headers;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/android/okhttp/Headers;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 293
    invoke-virtual {v9, v10}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 292
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 296
    :cond_0
    const/4 v3, 0x0

    .line 297
    .local v3, "bufferRequestBody":Z
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->hasRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 299
    const-string v0, "Content-Length"

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 307
    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    .line 310
    .local v2, "request":Lcom/android/okhttp/Request;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    .line 311
    .local v1, "engineClient":Lcom/android/okhttp/OkHttpClient;
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getOkResponseCache()Lcom/android/okhttp/OkResponseCache;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/okhttp/OkHttpClient;->setOkResponseCache(Lcom/android/okhttp/OkResponseCache;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    .line 315
    :cond_2
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine;

    const/4 v5, 0x0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v0

    .line 300
    .end local v1    # "engineClient":Lcom/android/okhttp/OkHttpClient;
    .end local v2    # "request":Lcom/android/okhttp/Request;
    :cond_3
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_4

    .line 301
    const-string v0, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v8, v0, v4}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_1

    .line 303
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private processResponseHeaders()Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v0

    .line 427
    .local v0, "connection":Lcom/android/okhttp/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    .line 430
    .local v7, "selectedProxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    .line 431
    .local v3, "responseCode":I
    sparse-switch v3, :sswitch_data_0

    .line 482
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    :goto_1
    return-object v9

    .line 427
    .end local v3    # "responseCode":I
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_0
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    goto :goto_0

    .line 433
    .restart local v3    # "responseCode":I
    .restart local v7    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_0
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_1

    .line 434
    new-instance v9, Ljava/net/ProtocolException;

    const-string v10, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 438
    :cond_1
    :sswitch_1
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/OkAuthenticator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v10}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/android/okhttp/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/android/okhttp/OkAuthenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v8

    .line 440
    .local v8, "successorRequest":Lcom/android/okhttp/Request;
    if-nez v8, :cond_2

    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 441
    :cond_2
    invoke-virtual {v8}, Lcom/android/okhttp/Request;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v9

    iput-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    .line 442
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 449
    .end local v8    # "successorRequest":Lcom/android/okhttp/Request;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v9

    if-nez v9, :cond_3

    .line 450
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 452
    :cond_3
    iget v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    const/16 v10, 0x14

    if-le v9, v10, :cond_4

    .line 453
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many redirects: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 455
    :cond_4
    const/16 v9, 0x133

    if-ne v3, v9, :cond_5

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v10, "HEAD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 458
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 460
    :cond_5
    const-string v9, "Location"

    invoke-virtual {p0, v9}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "location":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 462
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 464
    :cond_6
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 465
    .local v2, "previousUrl":Ljava/net/URL;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 466
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 467
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 469
    :cond_7
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 470
    .local v6, "sameProtocol":Z
    if-nez v6, :cond_8

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/android/okhttp/OkHttpClient;->getFollowProtocolRedirects()Z

    move-result v9

    if-nez v9, :cond_8

    .line 471
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 473
    :cond_8
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 474
    .local v4, "sameHost":Z
    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v10}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v10

    if-ne v9, v10, :cond_9

    const/4 v5, 0x1

    .line 475
    .local v5, "samePort":Z
    :goto_2
    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    .line 476
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 474
    .end local v5    # "samePort":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 478
    .restart local v5    # "samePort":Z
    :cond_a
    sget-object v9, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/android/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x133 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private setProtocols(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "protocolsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 578
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v5, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    if-eqz p2, :cond_0

    .line 580
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    :cond_0
    const-string v6, ","

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 584
    .local v4, "protocol":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/android/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okio/ByteString;

    move-result-object v6

    invoke-static {v6}, Lcom/android/okhttp/Protocol;->find(Lcom/android/okio/ByteString;)Lcom/android/okhttp/Protocol;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 589
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v6, v5}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 590
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 551
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_1
    if-nez p2, :cond_2

    .line 559
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 569
    :goto_0
    return-void

    .line 564
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 565
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    goto :goto_0

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_0
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 106
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    .line 107
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 108
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 133
    .local v1, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->code()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponseBodyBytes()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .end local v1    # "response":Lcom/android/okhttp/internal/http/HttpEngine;
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 162
    .local v1, "response":Lcom/android/okhttp/Response;
    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v2

    .line 164
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :goto_0
    return-object v2

    .line 162
    .restart local v1    # "response":Lcom/android/okhttp/Response;
    :cond_0
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 163
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 179
    .local v1, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 181
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :goto_0
    return-object v2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v2, :cond_0

    .line 196
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "This protocol does not support input"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 205
    .local v0, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 206
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_1
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponseBodyBytes()Ljava/io/InputStream;

    move-result-object v1

    .line 210
    .local v1, "result":Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 211
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response body exists; responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_2
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->connect()V

    .line 219
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lcom/android/okio/BufferedSink;

    move-result-object v0

    .line 220
    .local v0, "sink":Lcom/android/okio/BufferedSink;
    if-nez v0, :cond_0

    .line 221
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1
    invoke-interface {v0}, Lcom/android/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    .line 232
    .local v1, "hostPort":I
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 234
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 237
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v3, Ljava/net/SocketPermission;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "connect, resolve"

    invoke-direct {v3, v4, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 241
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->statusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 247
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    .prologue
    .line 601
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 602
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 606
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_2
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    .line 610
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 611
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 7
    .param p1, "newValue"    # J

    .prologue
    .line 538
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 539
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->ifModifiedSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    const-string v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->ifModifiedSince:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_0
.end method

.method public setReadTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 255
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 593
    sget-object v0, Lcom/android/okhttp/internal/http/HttpMethod;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/okhttp/internal/http/HttpMethod;->METHODS:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    if-nez p1, :cond_1

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    if-nez p2, :cond_2

    .line 525
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    goto :goto_0

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_0
.end method

.method public final usingProxy()Z
    .locals 3

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 501
    .local v0, "proxy":Ljava/net/Proxy;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 498
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 501
    .restart local v0    # "proxy":Ljava/net/Proxy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
