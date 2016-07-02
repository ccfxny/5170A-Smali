.class Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;
.super Ljava/io/FilterOutputStream;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/android/okhttp/HttpResponseCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/android/okhttp/HttpResponseCache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/android/okhttp/HttpResponseCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/OutputStream;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

    iput-object p3, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->val$this$0:Lcom/android/okhttp/HttpResponseCache;

    iput-object p4, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

    iget-object v1, v0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/android/okhttp/HttpResponseCache;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

    # getter for: Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->done:Z
    invoke-static {v0}, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->access$100(Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    monitor-exit v1

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->done:Z
    invoke-static {v0, v2}, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->access$102(Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;Z)Z

    .line 352
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;

    iget-object v0, v0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/android/okhttp/HttpResponseCache;

    # operator++ for: Lcom/android/okhttp/HttpResponseCache;->writeSuccessCount:I
    invoke-static {v0}, Lcom/android/okhttp/HttpResponseCache;->access$208(Lcom/android/okhttp/HttpResponseCache;)I

    .line 353
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 355
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/okhttp/HttpResponseCache$CacheRequestImpl$1;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 362
    return-void
.end method
