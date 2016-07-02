.class final Lcom/android/okhttp/Job;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Job$RealResponseBody;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lcom/android/okhttp/OkHttpClient;

.field private final dispatcher:Lcom/android/okhttp/Dispatcher;

.field engine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private redirectionCount:I

.field private request:Lcom/android/okhttp/Request;

.field private final responseReceiver:Lcom/android/okhttp/Response$Receiver;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Dispatcher;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;Lcom/android/okhttp/Response$Receiver;)V
    .locals 4
    .param p1, "dispatcher"    # Lcom/android/okhttp/Dispatcher;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "responseReceiver"    # Lcom/android/okhttp/Response$Receiver;

    .prologue
    .line 55
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iput-object p1, p0, Lcom/android/okhttp/Job;->dispatcher:Lcom/android/okhttp/Dispatcher;

    .line 57
    iput-object p2, p0, Lcom/android/okhttp/Job;->client:Lcom/android/okhttp/OkHttpClient;

    .line 58
    iput-object p3, p0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    .line 59
    iput-object p4, p0, Lcom/android/okhttp/Job;->responseReceiver:Lcom/android/okhttp/Response$Receiver;

    .line 60
    return-void
.end method

.method private processResponse(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .locals 9
    .param p1, "engine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 175
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v2

    .line 176
    .local v2, "request":Lcom/android/okhttp/Request;
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/HttpEngine;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/HttpEngine;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    .line 179
    .local v4, "selectedProxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->code()I

    move-result v3

    .line 181
    .local v3, "responseCode":I
    sparse-switch v3, :sswitch_data_0

    .line 224
    :cond_0
    :goto_1
    return-object v6

    .line 176
    .end local v3    # "responseCode":I
    .end local v4    # "selectedProxy":Ljava/net/Proxy;
    :cond_1
    iget-object v7, p0, Lcom/android/okhttp/Job;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    goto :goto_0

    .line 183
    .restart local v3    # "responseCode":I
    .restart local v4    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_2

    .line 184
    new-instance v6, Ljava/net/ProtocolException;

    const-string v7, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    :cond_2
    :sswitch_1
    iget-object v6, p0, Lcom/android/okhttp/Job;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/OkAuthenticator;

    move-result-object v6

    invoke-static {v6, p2, v4}, Lcom/android/okhttp/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/android/okhttp/OkAuthenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v6

    goto :goto_1

    .line 196
    :sswitch_2
    iget-object v7, p0, Lcom/android/okhttp/Job;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lcom/android/okhttp/OkHttpClient;->getFollowProtocolRedirects()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    iget v7, p0, Lcom/android/okhttp/Job;->redirectionCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/okhttp/Job;->redirectionCount:I

    const/16 v8, 0x14

    if-le v7, v8, :cond_3

    .line 201
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many redirects: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/okhttp/Job;->redirectionCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 204
    :cond_3
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "method":Ljava/lang/String;
    const/16 v7, 0x133

    if-ne v3, v7, :cond_4

    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "HEAD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    :cond_4
    const-string v7, "Location"

    invoke-virtual {p2, v7}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 216
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 217
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    :cond_5
    iget-object v6, p0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v6}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v6

    goto/16 :goto_1

    .line 181
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

.method static sameConnection(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request;)Z
    .locals 2
    .param p0, "a"    # Lcom/android/okhttp/Request;
    .param p1, "b"    # Lcom/android/okhttp/Request;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected execute()V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/Job;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 77
    .local v1, "response":Lcom/android/okhttp/Response;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/okhttp/Job;->canceled:Z

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/okhttp/Job;->responseReceiver:Lcom/android/okhttp/Response$Receiver;

    invoke-interface {v2, v1}, Lcom/android/okhttp/Response$Receiver;->onResponse(Lcom/android/okhttp/Response;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    .line 87
    iget-object v2, p0, Lcom/android/okhttp/Job;->dispatcher:Lcom/android/okhttp/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Job;)V

    .line 89
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/Job;->responseReceiver:Lcom/android/okhttp/Response$Receiver;

    new-instance v3, Lcom/android/okhttp/Failure$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Failure$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Failure$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Failure$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Failure$Builder;->exception(Ljava/lang/Throwable;)Lcom/android/okhttp/Failure$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Failure$Builder;->build()Lcom/android/okhttp/Failure;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/okhttp/Response$Receiver;->onFailure(Lcom/android/okhttp/Failure;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iget-object v2, p0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    .line 87
    iget-object v2, p0, Lcom/android/okhttp/Job;->dispatcher:Lcom/android/okhttp/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Job;)V

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    .line 87
    iget-object v3, p0, Lcom/android/okhttp/Job;->dispatcher:Lcom/android/okhttp/Dispatcher;

    invoke-virtual {v3, p0}, Lcom/android/okhttp/Dispatcher;->finished(Lcom/android/okhttp/Job;)V

    throw v2
.end method

.method getResponse()Lcom/android/okhttp/Response;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/16 v16, 0x0

    .line 99
    .local v16, "redirectedBy":Lcom/android/okhttp/Response;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->body()Lcom/android/okhttp/Request$Body;

    move-result-object v10

    .line 100
    .local v10, "body":Lcom/android/okhttp/Request$Body;
    if-eqz v10, :cond_1

    .line 101
    invoke-virtual {v10}, Lcom/android/okhttp/Request$Body;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v11

    .line 102
    .local v11, "contentType":Lcom/android/okhttp/MediaType;
    if-nez v11, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "contentType == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v17

    .line 105
    .local v17, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    const-string v2, "Content-Type"

    invoke-virtual {v11}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 107
    invoke-virtual {v10}, Lcom/android/okhttp/Request$Body;->contentLength()J

    move-result-wide v12

    .line 108
    .local v12, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_2

    .line 109
    const-string v2, "Content-Length"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 110
    const-string v2, "Transfer-Encoding"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 116
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    .line 120
    .end local v11    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v12    # "contentLength":J
    .end local v17    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_1
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/Job;->client:Lcom/android/okhttp/OkHttpClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 123
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/okhttp/Job;->canceled:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 151
    :goto_2
    return-object v2

    .line 112
    .restart local v11    # "contentType":Lcom/android/okhttp/MediaType;
    .restart local v12    # "contentLength":J
    .restart local v17    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_2
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 113
    const-string v2, "Content-Length"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_0

    .line 126
    .end local v11    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v12    # "contentLength":J
    .end local v17    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 128
    if-eqz v10, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okio/Okio;->buffer(Lcom/android/okio/Sink;)Lcom/android/okio/BufferedSink;

    move-result-object v20

    .line 130
    .local v20, "sink":Lcom/android/okio/BufferedSink;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/okhttp/Request$Body;->writeTo(Lcom/android/okio/BufferedSink;)V

    .line 131
    invoke-interface/range {v20 .. v20}, Lcom/android/okio/BufferedSink;->flush()V

    .line 134
    .end local v20    # "sink":Lcom/android/okio/BufferedSink;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v18

    .line 147
    .local v18, "response":Lcom/android/okhttp/Response;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/okhttp/Job;->processResponse(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    move-result-object v15

    .line 149
    .local v15, "redirect":Lcom/android/okhttp/Request;
    if-nez v15, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 151
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/okhttp/Job$RealResponseBody;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponseBody()Lcom/android/okio/Source;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v4}, Lcom/android/okhttp/Job$RealResponseBody;-><init>(Lcom/android/okhttp/Response;Lcom/android/okio/Source;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/Response$Body;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v2

    goto :goto_2

    .line 135
    .end local v15    # "redirect":Lcom/android/okhttp/Request;
    .end local v18    # "response":Lcom/android/okhttp/Response;
    :catch_0
    move-exception v14

    .line 136
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2, v14}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v19

    .line 137
    .local v19, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v19, :cond_5

    .line 138
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto/16 :goto_1

    .line 143
    :cond_5
    throw v14

    .line 157
    .end local v14    # "e":Ljava/io/IOException;
    .end local v19    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    .restart local v15    # "redirect":Lcom/android/okhttp/Request;
    .restart local v18    # "response":Lcom/android/okhttp/Response;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    invoke-static {v2, v15}, Lcom/android/okhttp/Job;->sameConnection(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    .line 161
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    move-result-object v6

    .line 162
    .local v6, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v16

    .line 163
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    .line 164
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/Job;->client:Lcom/android/okhttp/OkHttpClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/okhttp/Job;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto/16 :goto_1
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/android/okhttp/Request;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/okhttp/Job;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
