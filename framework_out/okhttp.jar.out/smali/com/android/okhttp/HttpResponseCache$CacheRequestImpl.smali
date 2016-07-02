.class final Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;
.super Ljava/net/CacheRequest;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Ljava/io/OutputStream;

.field private cacheOut:Ljava/io/OutputStream;

.field private done:Z

.field private final editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/android/okhttp/HttpResponseCache;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/HttpResponseCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 2
    .param p2, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/android/okhttp/HttpResponseCache;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 344
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    .line 345
    new-instance v0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;-><init>(Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/android/okhttp/HttpResponseCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    .line 364
    return-void
.end method

.method static synthetic access$100(Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/android/okhttp/HttpResponseCache;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    .line 369
    monitor-exit v1

    .line 379
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->done:Z

    .line 372
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/android/okhttp/HttpResponseCache;

    # operator++ for: Lcom/android/okhttp/HttpResponseCache;->writeAbortCount:I
    invoke-static {v0}, Lcom/android/okhttp/HttpResponseCache;->access$308(Lcom/android/okhttp/HttpResponseCache;)I

    .line 373
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    return-object v0
.end method
