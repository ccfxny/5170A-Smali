.class public final Lcom/android/server/sip/SipService;
.super Landroid/net/sip/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$1;,
        Lcom/android/server/sip/SipService$MyExecutor;,
        Lcom/android/server/sip/SipService$ConnectivityReceiver;,
        Lcom/android/server/sip/SipService$SipAutoReg;,
        Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;,
        Lcom/android/server/sip/SipService$SipSessionGroupExt;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_KEEPALIVE_INTERVAL:I = 0xa

.field private static final DEFAULT_MAX_KEEPALIVE_INTERVAL:I = 0x78

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final MIN_EXPIRY_TIME:I = 0x3c

.field private static final SHORT_EXPIRY_TIME:I = 0xa

.field static final TAG:Ljava/lang/String; = "SipService"


# instance fields
.field private mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

.field private mKeepAliveInterval:I

.field private mLastGoodKeepAliveInterval:I

.field private mLocalIp:Ljava/lang/String;

.field private mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private mNetworkType:I

.field private mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSipGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipService$SipSessionGroupExt;",
            ">;"
        }
    .end annotation
.end field

.field private mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

.field private mSipOnWifiOnly:Z

.field private mTimer:Lcom/android/server/sip/SipWakeupTimer;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/net/sip/ISipService$Stub;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 87
    new-instance v0, Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$MyExecutor;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 100
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 115
    const-string v0, "SipService: started!"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    .line 119
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "SipService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 122
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 123
    invoke-static {p1}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    .line 125
    new-instance v1, Lcom/android/server/sip/SipWakeLock;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {v1, v0}, Lcom/android/server/sip/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 128
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p1, v1}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 129
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/sip/SipService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/sip/SipService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->onKeepAliveIntervalChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sip/SipService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->getKeepAliveInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/sip/SipService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/sip/SipService;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->onConnectivityChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1800()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/android/server/sip/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/sip/SipService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/sip/SipService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sip/SipService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .param p2, "x2"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->addPendingSession(Landroid/net/sip/ISipSession;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/sip/SipService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/sip/SipService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipService;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/sip/SipService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return p1
.end method

.method private declared-synchronized addPendingSession(Landroid/net/sip/ISipSession;)V
    .locals 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->cleanUpPendingSessions()V

    .line 406
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#pending sess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "addPendingSession()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 5
    .param p1, "ringingGroup"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .param p2, "ringingSession"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "callId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 429
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eq v1, p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->containsSession(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call self: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    const/4 v3, 0x1

    .line 436
    .end local v1    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 427
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private cleanUpPendingSessions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 418
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/util/Map$Entry;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 419
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/sip/ISipSession;

    invoke-interface {v5}, Landroid/net/sip/ISipSession;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 420
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    :cond_1
    return-void
.end method

.method private createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .locals 4
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 311
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, v3, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 313
    .restart local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    .line 318
    :cond_0
    return-object v0

    .line 315
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .locals 4
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/ISipSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 326
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V

    .line 331
    invoke-virtual {v0, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 338
    :goto_0
    return-object v0

    .line 333
    :cond_1
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 335
    .restart local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    goto :goto_0
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1230
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1232
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method private determineLocalIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 297
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 298
    .local v1, "s":Ljava/net/DatagramSocket;
    const-string v2, "192.168.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 299
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 303
    .end local v1    # "s":Ljava/net/DatagramSocket;
    :goto_0
    return-object v2

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "determineLocalIp()"

    invoke-direct {p0, v2, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeepAliveInterval()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    goto :goto_0
.end method

.method private isBehindNAT(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 455
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 456
    .local v0, "d":[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xac

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_2

    .line 466
    .end local v0    # "d":[B
    :cond_1
    :goto_0
    return v2

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBehindAT()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_2
    move v2, v3

    .line 466
    goto :goto_0
.end method

.method private isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 3
    .param p1, "group"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 187
    .local v0, "profile":Landroid/net/sip/SipProfile;
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 1
    .param p1, "group"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCallerRadio()Z
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1269
    const-string v0, "SipService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1277
    const-string v0, "SipService"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    return-void
.end method

.method private notifyProfileAdded(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify: profile added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V

    .line 349
    :cond_0
    return-void
.end method

.method private notifyProfileRemoved(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify: profile removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->unregisterReceivers()V

    .line 359
    :cond_0
    return-void
.end method

.method private declared-synchronized onConnectivityChanged(Landroid/net/NetworkInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    .line 1182
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    iget v7, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v6, v7, :cond_1

    .line 1183
    :cond_0
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1185
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1190
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1191
    .local v4, "networkType":I
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    if-eqz v6, :cond_2

    if-eq v4, v8, :cond_2

    .line 1192
    const/4 v4, -0x1

    .line 1196
    :cond_2
    iget v6, p0, Lcom/android/server/sip/SipService;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v4, :cond_4

    .line 1227
    :goto_1
    monitor-exit p0

    return-void

    .end local v4    # "networkType":I
    :cond_3
    move v4, v5

    .line 1190
    goto :goto_0

    .line 1201
    .restart local v4    # "networkType":I
    :cond_4
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConnectivityChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    :try_start_2
    iget v6, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v6, v5, :cond_5

    .line 1207
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1208
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 1209
    iget-object v6, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1210
    .local v2, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V
    :try_end_2
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1224
    .end local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1225
    .local v1, "e":Ljavax/sip/SipException;
    :try_start_3
    const-string v5, "onConnectivityChanged()"

    invoke-direct {p0, v5, v1}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1182
    .end local v1    # "e":Ljavax/sip/SipException;
    .end local v4    # "networkType":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1213
    .restart local v4    # "networkType":I
    :cond_5
    :try_start_4
    iput v4, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1215
    iget v6, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v6, v5, :cond_6

    .line 1216
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->determineLocalIp()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1217
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 1218
    const/16 v5, 0xa

    iput v5, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 1219
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1220
    .restart local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    goto :goto_3

    .line 1223
    .end local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_4
    .catch Ljavax/sip/SipException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized onKeepAliveIntervalChanged()V
    .locals 3

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 441
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onKeepAliveIntervalChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 440
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 443
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1145
    const-string v0, "registerReceivers:"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method private restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .locals 1
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "maxInterval"    # I

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 401
    return-void
.end method

.method private static slog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1273
    const-string v0, "SipService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "sip"

    new-instance v1, Lcom/android/server/sip/SipService;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.sip.SIP_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    const-string v0, "start:"

    invoke-static {v0}, Lcom/android/server/sip/SipService;->slog(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method private startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    .locals 1
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 370
    const/16 v0, 0x78

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 372
    return-void
.end method

.method private startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .locals 3
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "maxInterval"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPortMappingLifetimeMeasurement: profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 382
    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 383
    .local v0, "minInterval":I
    if-lt v0, p2, :cond_0

    .line 386
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  reset min interval to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 390
    :cond_0
    new-instance v1, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    .line 392
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->start()V

    .line 394
    .end local v0    # "minInterval":I
    :cond_1
    return-void
.end method

.method private stopPortMappingMeasurement()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->stop()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    .line 366
    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1150
    const-string v0, "unregisterReceivers:"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1155
    return-void
.end method

.method private updateWakeLocks()V
    .locals 4

    .prologue
    .line 1158
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1159
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isOpenedToReceiveCalls()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1164
    :cond_1
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1173
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    return-void

    .line 1166
    .restart local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_2
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0

    .line 1171
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_3
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1172
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v2}, Lcom/android/server/sip/SipWakeLock;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close(Ljava/lang/String;)V
    .locals 4
    .param p1, "localProfileUri"    # Ljava/lang/String;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const-string v1, "only creator or radio can close this profile"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    .restart local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 210
    .restart local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->notifyProfileRemoved(Landroid/net/sip/SipProfile;)V

    .line 211
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 213
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .locals 8
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;

    .prologue
    const/4 v4, 0x0

    .line 261
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSession: profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.USE_SIP"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 265
    iget v5, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 266
    const-string v5, "createSession: mNetworkType==-1 ret=null"

    invoke-direct {p0, v5}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v4

    .line 271
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 273
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 274
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_1

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v2

    .line 276
    .local v2, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v2, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v4

    goto :goto_0

    .line 278
    .end local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    const-string v5, "createSession due to mobile suspend"

    invoke-direct {p0, v5}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljavax/sip/SipException;
    :try_start_2
    const-string v5, "createSession;"

    invoke-direct {p0, v5, v1}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 261
    .end local v1    # "e":Ljavax/sip/SipException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getListOfProfiles()[Landroid/net/sip/SipProfile;
    .locals 7

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.USE_SIP"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v2

    .line 136
    .local v2, "isCallerRadio":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v3, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 138
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isCallerRadio":Z
    .end local v3    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 142
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isCallerRadio":Z
    .restart local v3    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/sip/SipProfile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/sip/SipProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized getPendingSession(Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-nez p1, :cond_0

    .line 292
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/ISipSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpened(Ljava/lang/String;)Z
    .locals 5
    .param p1, "localProfileUri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 226
    :goto_0
    monitor-exit p0

    return v1

    .line 222
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const/4 v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const-string v2, "only creator or radio can query on the profile"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Z
    .locals 5
    .param p1, "localProfileUri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 240
    :goto_0
    monitor-exit p0

    return v1

    .line 236
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v1

    goto :goto_0

    .line 239
    :cond_1
    const-string v2, "only creator or radio can query on the profile"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_2
    const-string v1, "openToMakeCalls()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljavax/sip/SipException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    .locals 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/ISipSessionListener;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 165
    if-nez p2, :cond_1

    .line 166
    const-string v2, "open3: incomingCallPendingIntent cannot be null; the profile is not opened"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v1

    .line 175
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_2
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    .end local v1    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_3
    const-string v2, "open3:"

    invoke-direct {p0, v2, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljavax/sip/SipException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;)V
    .locals 4
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 256
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 254
    .restart local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    :try_start_2
    const-string v1, "only creator can set listener on the profile"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
