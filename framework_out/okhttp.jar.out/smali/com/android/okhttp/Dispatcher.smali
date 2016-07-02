.class public final Lcom/android/okhttp/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyJobs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final runningJobs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyJobs:Ljava/util/Deque;

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyJobs:Ljava/util/Deque;

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    .line 48
    iput-object p1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 49
    return-void
.end method

.method private promoteJobs()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->readyJobs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->readyJobs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/Job;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Job;

    .line 143
    .local v1, "job":Lcom/android/okhttp/Job;
    invoke-direct {p0, v1}, Lcom/android/okhttp/Dispatcher;->runningJobsForHost(Lcom/android/okhttp/Job;)I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_3

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 145
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_2

    goto :goto_0
.end method

.method private runningJobsForHost(Lcom/android/okhttp/Job;)I
    .locals 5
    .param p1, "job"    # Lcom/android/okhttp/Job;

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Job;

    .line 157
    .local v1, "j":Lcom/android/okhttp/Job;
    invoke-virtual {v1}, Lcom/android/okhttp/Job;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/okhttp/Job;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "j":Lcom/android/okhttp/Job;
    :cond_1
    return v2
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/Dispatcher;->readyJobs:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/Job;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/Job;

    invoke-virtual {v3}, Lcom/android/okhttp/Job;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/Job;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 125
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/Job;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/Job;

    .line 126
    .local v2, "job":Lcom/android/okhttp/Job;
    invoke-virtual {v2}, Lcom/android/okhttp/Job;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/okhttp/Job;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 128
    .end local v2    # "job":Lcom/android/okhttp/Job;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method declared-synchronized enqueue(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;Lcom/android/okhttp/Response$Receiver;)V
    .locals 3
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/android/okhttp/Request;
    .param p3, "receiver"    # Lcom/android/okhttp/Response$Receiver;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/android/okhttp/Job;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/okhttp/Job;-><init>(Lcom/android/okhttp/Dispatcher;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;Lcom/android/okhttp/Response$Receiver;)V

    .line 108
    .local v0, "job":Lcom/android/okhttp/Job;
    iget-object v1, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget v2, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/okhttp/Dispatcher;->runningJobsForHost(Lcom/android/okhttp/Job;)I

    move-result v1

    iget v2, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v1, v2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/Dispatcher;->readyJobs:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0    # "job":Lcom/android/okhttp/Job;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized finished(Lcom/android/okhttp/Job;)V
    .locals 2
    .param p1, "job"    # Lcom/android/okhttp/Job;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningJobs:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Job wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteJobs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 56
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequests()I
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequestsPerHost()I
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxRequests(I)V
    .locals 3
    .param p1, "maxRequests"    # I

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 74
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteJobs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .locals 3
    .param p1, "maxRequestsPerHost"    # I

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 92
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 95
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteJobs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void
.end method
