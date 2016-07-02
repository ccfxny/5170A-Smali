.class public Lcom/android/server/ethernet/EthernetServiceImpl;
.super Landroid/net/IEthernetManager$Stub;
.source "EthernetServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetServiceImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

.field private mHandler:Landroid/os/Handler;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/IEthernetServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/net/IEthernetManager$Stub;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    .line 60
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "EthernetServiceImpl"

    const-string v1, "Creating EthernetConfigStore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/android/server/ethernet/EthernetConfigStore;

    invoke-direct {v0}, Lcom/android/server/ethernet/EthernetConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

    .line 63
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetConfigStore;->readIpAndProxyConfigurations()Landroid/net/IpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 65
    const-string v0, "EthernetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read stored IP configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/android/server/ethernet/EthernetNetworkFactory;

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-direct {v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;-><init>(Landroid/os/RemoteCallbackList;)V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    .line 68
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "EthernetService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "EthernetService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public addListener(Landroid/net/IEthernetServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    .line 157
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 158
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 175
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump EthernetService from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v1, "Current Ethernet state: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 185
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 188
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 189
    const-string v1, "Stored Ethernet configuration: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 191
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 194
    const-string v1, "Handler:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 196
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v3, "EthernetServiceImpl"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    .line 108
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    monitor-enter v1

    .line 109
    :try_start_0
    new-instance v0, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v0, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    .line 145
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    move-result v0

    return v0
.end method

.method public removeListener(Landroid/net/IEthernetServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    .line 169
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 170
    return-void
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/IpConfiguration;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "EthernetServiceImpl"

    const-string v1, "System isn\'t ready enough to change ethernet configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceChangePermission()V

    .line 123
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceConnectivityInternalPermission()V

    .line 125
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/ethernet/EthernetConfigStore;->writeIpAndProxyConfigurations(Landroid/net/IpConfiguration;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v0}, Landroid/net/IpConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0, p1}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 132
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->stop()V

    .line 133
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->start(Landroid/content/Context;Landroid/os/Handler;)V

    .line 135
    :cond_1
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 89
    const-string v1, "EthernetServiceImpl"

    const-string v2, "Starting Ethernet service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EthernetServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 95
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->start(Landroid/content/Context;Landroid/os/Handler;)V

    .line 97
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    return-void
.end method
