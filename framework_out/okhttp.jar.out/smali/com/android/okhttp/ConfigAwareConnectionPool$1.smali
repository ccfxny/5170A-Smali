.class Lcom/android/okhttp/ConfigAwareConnectionPool$1;
.super Llibcore/net/event/NetworkEventListener;
.source "ConfigAwareConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method constructor <init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-direct {p0}, Llibcore/net/event/NetworkEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkConfigurationChanged()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    # getter for: Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;
    invoke-static {v1}, Lcom/android/okhttp/ConfigAwareConnectionPool;->access$000(Lcom/android/okhttp/ConfigAwareConnectionPool;)Lcom/android/okhttp/ConnectionPool;

    move-result-object v0

    .line 90
    .local v0, "oldConnectionPool":Lcom/android/okhttp/ConnectionPool;
    iget-object v1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    const/4 v3, 0x0

    # setter for: Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;
    invoke-static {v1, v3}, Lcom/android/okhttp/ConfigAwareConnectionPool;->access$002(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionPool;->enterDrainMode()V

    .line 94
    :cond_0
    monitor-exit v2

    .line 95
    return-void

    .line 94
    .end local v0    # "oldConnectionPool":Lcom/android/okhttp/ConnectionPool;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
