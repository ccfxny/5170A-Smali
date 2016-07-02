.class public Lcom/android/okhttp/ConfigAwareConnectionPool;
.super Ljava/lang/Object;
.source "ConfigAwareConnectionPool.java"


# static fields
.field private static final CONNECTION_POOL_DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

.field private static final CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

.field private static final instance:Lcom/android/okhttp/ConfigAwareConnectionPool;


# instance fields
.field private connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private final networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

.field private networkEventListenerRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 35
    const-string v3, "http.keepAlive"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "keepAliveProperty":Ljava/lang/String;
    const-string v3, "http.keepAliveDuration"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "keepAliveDurationProperty":Ljava/lang/String;
    const-string v3, "http.maxConnections"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "maxIdleConnectionsProperty":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_0
    sput-wide v4, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    .line 41
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    const/4 v3, 0x0

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    .line 50
    :goto_1
    new-instance v3, Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-direct {v3}, Lcom/android/okhttp/ConfigAwareConnectionPool;-><init>()V

    sput-object v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-void

    .line 38
    :cond_0
    const-wide/32 v4, 0x493e0

    goto :goto_0

    .line 43
    :cond_1
    if-eqz v2, :cond_2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    goto :goto_1

    .line 46
    :cond_2
    const/4 v3, 0x5

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    .line 69
    return-void
.end method

.method protected constructor <init>(Llibcore/net/event/NetworkEventDispatcher;)V
    .locals 0
    .param p1, "networkEventDispatcher"    # Llibcore/net/event/NetworkEventDispatcher;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/ConfigAwareConnectionPool;)Lcom/android/okhttp/ConnectionPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/ConfigAwareConnectionPool;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/okhttp/ConfigAwareConnectionPool;
    .param p1, "x1"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object p1
.end method

.method public static getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get()Lcom/android/okhttp/ConnectionPool;
    .locals 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v0, :cond_1

    .line 81
    iget-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    new-instance v1, Lcom/android/okhttp/ConfigAwareConnectionPool$1;

    invoke-direct {v1, p0}, Lcom/android/okhttp/ConfigAwareConnectionPool$1;-><init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V

    invoke-virtual {v0, v1}, Llibcore/net/event/NetworkEventDispatcher;->addListener(Llibcore/net/event/NetworkEventListener;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    .line 99
    :cond_0
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    sget v1, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    sget-wide v2, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
