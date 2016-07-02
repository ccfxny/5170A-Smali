.class Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbstractSource"
.end annotation


# instance fields
.field protected final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field protected closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V
    .locals 1
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 371
    .local v0, "cacheBody":Ljava/io/OutputStream;
    :goto_0
    if-nez v0, :cond_0

    .line 372
    const/4 p2, 0x0

    .line 375
    :cond_0
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheBody:Ljava/io/OutputStream;

    .line 376
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheRequest:Ljava/net/CacheRequest;

    .line 377
    return-void

    .line 370
    .end local v0    # "cacheBody":Ljava/io/OutputStream;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final cacheWrite(Lcom/android/okio/OkBuffer;J)V
    .locals 8
    .param p1, "source"    # Lcom/android/okio/OkBuffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/android/okio/OkBuffer;->size()J

    move-result-wide v0

    sub-long v2, v0, p2

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheBody:Ljava/io/OutputStream;

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okio/Okio;->copy(Lcom/android/okio/OkBuffer;JJLjava/io/OutputStream;)V

    .line 384
    :cond_0
    return-void
.end method

.method protected final endOfInput(Z)V
    .locals 3
    .param p1, "recyclable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$300(Lcom/android/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->access$300(Lcom/android/okhttp/internal/http/HttpConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # setter for: Lcom/android/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/HttpConnection;->access$302(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    .line 398
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$600(Lcom/android/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 399
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # setter for: Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/HttpConnection;->access$602(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    .line 400
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->pool:Lcom/android/okhttp/ConnectionPool;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$800(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpConnection;->access$700(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionPool;->recycle(Lcom/android/okhttp/Connection;)V

    .line 405
    :cond_2
    :goto_0
    return-void

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$600(Lcom/android/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x6

    # setter for: Lcom/android/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->access$302(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    .line 403
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$700(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->close()V

    goto :goto_0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->access$700(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 424
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x6

    # setter for: Lcom/android/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->access$302(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    .line 425
    return-void
.end method
