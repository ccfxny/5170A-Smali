.class Lcom/android/server/ethernet/EthernetNetworkFactory;
.super Ljava/lang/Object;
.source "EthernetNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;,
        Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NETWORK_SCORE:I = 0x46

.field private static final NETWORK_TYPE:Ljava/lang/String; = "Ethernet"

.field private static final TAG:Ljava/lang/String; = "EthernetNetworkFactory"

.field private static mIface:Ljava/lang/String;

.field private static mIfaceMatch:Ljava/lang/String;

.field private static mLinkUp:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEthernetManager:Landroid/net/EthernetManager;

.field private mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

.field private mHwAddr:Ljava/lang/String;

.field private mInterfaceObserver:Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;

.field private mLinkProperties:Landroid/net/LinkProperties;

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

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    sput-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIfaceMatch:Ljava/lang/String;

    .line 98
    const-string v0, ""

    sput-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/RemoteCallbackList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/IEthernetServiceListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/IEthernetServiceListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const-string v3, "Ethernet"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 106
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    .line 107
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->initNetworkCapabilities()V

    .line 108
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateInterfaceState(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->maybeTrackInterface(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p1, "x1"    # Landroid/net/NetworkAgent;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->stopTrackingInterface(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/net/EthernetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mEthernetManager:Landroid/net/EthernetManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ethernet/EthernetNetworkFactory;Landroid/net/StaticIpConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;
    .param p1, "x1"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setStaticIpAddress(Landroid/net/StaticIpConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ethernet/EthernetNetworkFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ethernet/EthernetNetworkFactory;)Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ethernet/EthernetNetworkFactory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ethernet/EthernetNetworkFactory;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initNetworkCapabilities()V
    .locals 3

    .prologue
    const v2, 0x186a0

    .line 419
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 420
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 421
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 422
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 424
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 425
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 426
    return-void
.end method

.method private maybeTrackInterface(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIfaceMatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_1
    const-string v0, "EthernetNetworkFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started tracking interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceUp(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "hwAddr"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    move-result v3

    .line 438
    .local v3, "oldAvailable":Z
    sput-object p1, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    .line 439
    iput-object p2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    move-result v0

    .line 442
    .local v0, "available":Z
    if-eq v3, v0, :cond_1

    .line 443
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 444
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 446
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/IEthernetServiceListener;

    invoke-interface {v4, v0}, Landroid/net/IEthernetServiceListener;->onAvailabilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_0
    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 453
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void

    .line 447
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private setInterfaceUp(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "hwAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 173
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    if-nez v0, :cond_0

    .line 174
    const-string v3, "EthernetNetworkFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null iterface config for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Bailing out."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    .end local v2    # "hwAddr":Ljava/lang/String;
    :goto_0
    return-void

    .line 178
    .restart local v0    # "config":Landroid/net/InterfaceConfiguration;
    .restart local v2    # "hwAddr":Ljava/lang/String;
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 187
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    .end local v2    # "hwAddr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "EthernetNetworkFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error upping interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "config":Landroid/net/InterfaceConfiguration;
    .restart local v2    # "hwAddr":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v3, "EthernetNetworkFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interface unexpectedly changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private setStaticIpAddress(Landroid/net/StaticIpConfiguration;)Z
    .locals 5
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 224
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 228
    :try_start_0
    const-string v2, "EthernetNetworkFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying static IPv4 configuration to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    sget-object v3, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 230
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 231
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    sget-object v3, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v2, 0x1

    .line 239
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    :goto_0
    return v2

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "EthernetNetworkFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting static IP address failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 237
    :cond_0
    const-string v2, "EthernetNetworkFactory"

    const-string v3, "Invalid static IP configuration."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 233
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private stopTrackingInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "EthernetNetworkFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopped tracking interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 212
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    .line 215
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 218
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const-string v3, "Ethernet"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 219
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    .line 220
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateInterfaceState(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 129
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v1, "EthernetNetworkFactory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInterface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " link "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v0, "up"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    sput-boolean p2, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    .line 136
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 137
    if-nez p2, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    .line 145
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    if-eqz p2, :cond_3

    const/16 v0, 0x46

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setScoreFilter(I)V

    .line 146
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 132
    :cond_2
    const-string v0, "down"

    goto :goto_1

    .line 145
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method declared-synchronized dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAC address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    if-eqz v0, :cond_0

    const-string v0, "up"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 466
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    .line 460
    :cond_0
    :try_start_1
    const-string v0, "down"

    goto :goto_0

    .line 463
    :cond_1
    const-string v0, "Not tracking any interface"

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTrackingInterface()Z
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRequestNetwork()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ethernet/EthernetNetworkFactory$1;

    invoke-direct {v1, p0}, Lcom/android/server/ethernet/EthernetNetworkFactory$1;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 342
    .local v0, "dhcpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    return-void
.end method

.method public declared-synchronized start(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 351
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    .line 352
    const-string v7, "ethernet"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/EthernetManager;

    iput-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mEthernetManager:Landroid/net/EthernetManager;

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIfaceMatch:Ljava/lang/String;

    .line 359
    new-instance v7, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    const-string v8, "Ethernet"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, p0, v8, p1, v9}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    .line 360
    iget-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    iget-object v8, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7, v8}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 361
    iget-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->setScoreFilter(I)V

    .line 362
    iget-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    invoke-virtual {v7}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->register()V

    .line 364
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mContext:Landroid/content/Context;

    .line 367
    new-instance v7, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;-><init>(Lcom/android/server/ethernet/EthernetNetworkFactory;Lcom/android/server/ethernet/EthernetNetworkFactory$1;)V

    iput-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mInterfaceObserver:Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mInterfaceObserver:Lcom/android/server/ethernet/EthernetNetworkFactory$InterfaceObserver;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "ifaces":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 379
    .local v4, "iface":Ljava/lang/String;
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    :try_start_3
    invoke-direct {p0, v4}, Lcom/android/server/ethernet/EthernetNetworkFactory;->maybeTrackInterface(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 388
    iget-object v7, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v7

    const-string v8, "running"

    invoke-virtual {v7, v8}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 389
    const/4 v7, 0x1

    invoke-direct {p0, v4, v7}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateInterfaceState(Ljava/lang/String;Z)V

    .line 391
    :cond_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v5    # "ifaces":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "EthernetNetworkFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not register InterfaceObserver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 350
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 393
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v3    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v5    # "ifaces":[Ljava/lang/String;
    .restart local v6    # "len$":I
    :cond_2
    :try_start_5
    monitor-exit p0

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v5    # "ifaces":[Ljava/lang/String;
    .end local v6    # "len$":I
    :catch_1
    move-exception v2

    .line 396
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v7, "EthernetNetworkFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not get list of interfaces "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 408
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->updateAgent()V

    .line 411
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 413
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;->setInterfaceInfoLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const-string v3, "Ethernet"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 415
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mFactory:Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory$LocalNetworkFactory;->unregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAgent()V
    .locals 3

    .prologue
    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v0, :cond_0

    monitor-exit p0

    .line 257
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v0, "EthernetNetworkFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating mNetworkAgent with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    sget-boolean v0, Lcom/android/server/ethernet/EthernetNetworkFactory;->mLinkUp:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    :goto_1
    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V

    .line 256
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
