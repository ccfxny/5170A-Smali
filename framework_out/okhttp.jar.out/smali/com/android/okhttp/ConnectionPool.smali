.class public Lcom/android/okhttp/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/ConnectionPool$4;,
        Lcom/android/okhttp/ConnectionPool$CleanMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final MAX_CONNECTIONS_TO_CLEANUP:I = 0x2

.field private static final systemDefault:Lcom/android/okhttp/ConnectionPool;


# instance fields
.field private cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;

.field private final connections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/okhttp/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionsCleanupRunnable:Ljava/lang/Runnable;

.field private final drainModeRunnable:Ljava/lang/Runnable;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 61
    const-string v5, "http.keepAlive"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "keepAlive":Ljava/lang/String;
    const-string v5, "http.keepAliveDuration"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "keepAliveDuration":Ljava/lang/String;
    const-string v5, "http.maxConnections"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "maxIdleConnections":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 66
    .local v2, "keepAliveDurationMs":J
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    .line 73
    :goto_1
    return-void

    .line 64
    .end local v2    # "keepAliveDurationMs":J
    :cond_0
    const-wide/32 v2, 0x493e0

    goto :goto_0

    .line 68
    .restart local v2    # "keepAliveDurationMs":J
    :cond_1
    if-eqz v4, :cond_2

    .line 69
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    goto :goto_1

    .line 71
    :cond_2
    new-instance v5, Lcom/android/okhttp/ConnectionPool;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v5, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    goto :goto_1
.end method

.method public constructor <init>(IJ)V
    .locals 12
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDurationMs"    # J

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v3, 0x1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    .line 82
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    invoke-static {v0, v3}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/okhttp/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 108
    sget-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->NORMAL:Lcom/android/okhttp/ConnectionPool$CleanMode;

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;

    .line 114
    new-instance v0, Lcom/android/okhttp/ConnectionPool$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/ConnectionPool$1;-><init>(Lcom/android/okhttp/ConnectionPool;)V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->drainModeRunnable:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/android/okhttp/ConnectionPool$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/ConnectionPool$2;-><init>(Lcom/android/okhttp/ConnectionPool;)V

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;

    .line 175
    iput p1, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    .line 176
    mul-long v0, p2, v10

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/ConnectionPool;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/okhttp/ConnectionPool;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/okhttp/ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/okhttp/ConnectionPool;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/ConnectionPool$CleanMode;)Lcom/android/okhttp/ConnectionPool$CleanMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionPool;
    .param p1, "x1"    # Lcom/android/okhttp/ConnectionPool$CleanMode;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool;->cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/okhttp/ConnectionPool;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/okhttp/ConnectionPool;->maxIdleConnections:I

    return v0
.end method

.method public static getDefault()Lcom/android/okhttp/ConnectionPool;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/okhttp/ConnectionPool;->systemDefault:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method private scheduleCleanupAsRequired()V
    .locals 2

    .prologue
    .line 351
    sget-object v0, Lcom/android/okhttp/ConnectionPool$4;->$SwitchMap$com$squareup$okhttp$ConnectionPool$CleanMode:[I

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;

    invoke-virtual {v1}, Lcom/android/okhttp/ConnectionPool$CleanMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    :pswitch_0
    return-void

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 361
    :pswitch_2
    sget-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINING:Lcom/android/okhttp/ConnectionPool$CleanMode;

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;

    .line 362
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->drainModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private waitForCleanupCallableToRun()V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/okhttp/ConnectionPool$3;

    invoke-direct {v2, p0}, Lcom/android/okhttp/ConnectionPool$3;-><init>(Lcom/android/okhttp/ConnectionPool;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public enterDrainMode()V
    .locals 2

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    sget-object v0, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINING:Lcom/android/okhttp/ConnectionPool$CleanMode;

    iput-object v0, p0, Lcom/android/okhttp/ConnectionPool;->cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;

    .line 339
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->drainModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 340
    monitor-exit p0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public evictAll()V
    .locals 4

    .prologue
    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Connection;>;"
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 325
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Connection;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 330
    .restart local v0    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Connection;>;"
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_0
    return-void
.end method

.method public declared-synchronized get(Lcom/android/okhttp/Address;)Lcom/android/okhttp/Connection;
    .locals 8
    .param p1, "address"    # Lcom/android/okhttp/Address;

    .prologue
    .line 235
    monitor-enter p0

    const/4 v2, 0x0

    .line 236
    .local v2, "foundConnection":Lcom/android/okhttp/Connection;
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 237
    .local v3, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/okhttp/Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Connection;

    .line 239
    .local v0, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getIdleStartTimeNs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/okhttp/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 244
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 245
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->isSpdy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 247
    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/Platform;->tagSocket(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :cond_1
    move-object v2, v0

    .line 259
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    iget-object v4, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/android/okhttp/ConnectionPool;->scheduleCleanupAsRequired()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    monitor-exit p0

    return-object v2

    .line 248
    .restart local v0    # "connection":Lcom/android/okhttp/Connection;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/net/SocketException;
    :try_start_3
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 251
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to tagSocket(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 235
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v3    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/okhttp/Connection;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getConnectionCount()I
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/okhttp/ConnectionPool;->waitForCleanupCallableToRun()V

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHttpConnectionCount()I
    .locals 4

    .prologue
    .line 226
    monitor-enter p0

    const/4 v2, 0x0

    .line 227
    .local v2, "total":I
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Connection;

    .line 228
    .local v0, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->isSpdy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    :cond_1
    monitor-exit p0

    return v2

    .line 226
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getSpdyConnectionCount()I
    .locals 4

    .prologue
    .line 217
    monitor-enter p0

    const/4 v2, 0x0

    .line 218
    .local v2, "total":I
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Connection;

    .line 219
    .local v0, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->isSpdy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    :cond_1
    monitor-exit p0

    return v2

    .line 217
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isDrained()Z
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->cleanMode:Lcom/android/okhttp/ConnectionPool$CleanMode;

    sget-object v1, Lcom/android/okhttp/ConnectionPool$CleanMode;->DRAINED:Lcom/android/okhttp/ConnectionPool$CleanMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle(Lcom/android/okhttp/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->clearOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 288
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Platform;->untagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->incrementRecycleCount()V

    .line 299
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->resetIdleStartTime()V

    .line 300
    invoke-direct {p0}, Lcom/android/okhttp/ConnectionPool;->scheduleCleanupAsRequired()V

    .line 301
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to untagSocket(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 292
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method public share(Lcom/android/okhttp/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/okhttp/Connection;

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isSpdy()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/android/okhttp/Connection;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 314
    invoke-direct {p0}, Lcom/android/okhttp/ConnectionPool;->scheduleCleanupAsRequired()V

    .line 315
    monitor-exit p0

    .line 317
    :cond_1
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
