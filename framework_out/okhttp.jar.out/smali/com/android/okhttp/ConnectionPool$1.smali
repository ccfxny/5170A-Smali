.class Lcom/android/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/android/okhttp/ConnectionPool;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    # getter for: Lcom/android/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/okhttp/ConnectionPool;->access$000(Lcom/android/okhttp/ConnectionPool;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 119
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    # getter for: Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/okhttp/ConnectionPool;->access$100(Lcom/android/okhttp/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 126
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    # getter for: Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J
    invoke-static {v2}, Lcom/android/okhttp/ConnectionPool;->access$200(Lcom/android/okhttp/ConnectionPool;)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    .line 127
    .local v0, "keepAliveDurationMillis":J
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v0    # "keepAliveDurationMillis":J
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    # getter for: Lcom/android/okhttp/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2}, Lcom/android/okhttp/ConnectionPool;->access$300(Lcom/android/okhttp/ConnectionPool;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 137
    :goto_1
    monitor-exit v3

    .line 138
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/ConnectionPool$1;->this$0:Lcom/android/okhttp/ConnectionPool;

    sget-object v4, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINED:Lcom/android/okhttp/ConnectionPool$CleanMode;

    # setter for: Lcom/android/okhttp/ConnectionPool;->cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;
    invoke-static {v2, v4}, Lcom/android/okhttp/ConnectionPool;->access$402(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/ConnectionPool$CleanMode;)Lcom/android/okhttp/ConnectionPool$CleanMode;

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 128
    :catch_0
    move-exception v2

    goto :goto_0
.end method
