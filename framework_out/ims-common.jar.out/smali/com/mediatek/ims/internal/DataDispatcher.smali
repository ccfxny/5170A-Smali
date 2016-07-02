.class public Lcom/mediatek/ims/internal/DataDispatcher;
.super Ljava/lang/Object;
.source "DataDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcher$5;,
        Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;,
        Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;,
        Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;,
        Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    }
.end annotation


# static fields
.field private static final APN_CAP_LIST:[I

.field private static final DBG:Z = true

.field private static final DUMP_TRANSACTION:Z = true

.field private static EMERGENCY_APN:Ljava/lang/String; = null

.field private static final EPDG_FEATURE:Z

.field private static final FAILCAUSE_NONE:I = 0x0

.field private static final FAILCAUSE_UNKNOWN:I = 0x10000

.field private static FEATURE_ENABLE_EMERGENCY:Ljava/lang/String; = null

.field private static FEATURE_ENABLE_IMS:Ljava/lang/String; = null

.field private static final FWK_CAUSE_NONE:I = 0x0

.field private static final FWK_CAUSE_QUERY_PLMN:I = 0x1

.field private static final IMC_CONCATENATED_MSG_TYPE_ACTIVATION:I = 0x1

.field private static final IMC_CONCATENATED_MSG_TYPE_MODIFICATION:I = 0x2

.field private static final IMC_CONCATENATED_MSG_TYPE_NONE:I = 0x0

.field private static IMS_APN:Ljava/lang/String; = null

.field private static final IMS_EMERGENCY_PDN:I = 0x1

.field private static final IMS_PDN:I = 0x0

.field private static final INVALID_CID:I = -0x1

.field public static final IPV4_EIMS:I = 0x2

.field public static final IPV4_IMS:I = 0x0

.field public static final IPV6_EIMS:I = 0x3

.field public static final IPV6_IMS:I = 0x1

.field private static final IP_DHCP_NONE:I = 0x0

.field private static final IP_DHCP_V4:I = 0x1

.field private static final IP_DHCP_V6:I = 0x2

.field public static final IP_KEY:[Ljava/lang/String;

.field private static final MSG_ON_DEDICATE_CONNECTION_STATE_CHANGED:I = 0xfa0

.field private static final MSG_ON_DEFAULT_BEARER_CONNECTION_CHANGED:I = 0x1770

.field private static final MSG_ON_DEFAULT_BEARER_CONNECTION_FAILED:I = 0x17d4

.field private static final MSG_ON_DEFAULT_BEARER_MODIFICATION:I = 0x1838

.field private static final MSG_ON_NOTIFY_GLOBAL_IP_ADDR:I = 0x1b58

.field private static final MSG_ON_NOTIFY_USE_DHCP_IP_ADDR:I = 0x1bbc

.field private static final MSG_PCSCF_DISCOVERY_PCO_DONE:I = 0x1388

.field private static final PDP_ADDR_MASK_IPV4:I = 0x1

.field private static final PDP_ADDR_MASK_IPV4v6:I = 0x3

.field private static final PDP_ADDR_MASK_IPV6:I = 0x2

.field private static final PDP_ADDR_MASK_NONE:I = 0x0

.field private static final PDP_ADDR_TYPE_IPV4:I = 0x21

.field private static final PDP_ADDR_TYPE_IPV4v6:I = 0x8d

.field private static final PDP_ADDR_TYPE_IPV6:I = 0x57

.field private static final PDP_ADDR_TYPE_NONE:I = 0x0

.field private static final PDP_ADDR_TYPE_NULL:I = 0x3

.field public static final PROPERTY_MANUAL_PCSCF_ADDRESS:Ljava/lang/String; = "ril.pcscf.addr"

.field public static final PROPERTY_MANUAL_PCSCF_PORT:Ljava/lang/String; = "ril.pcscf.port"

.field private static final RA_POLLING_TIMER:[I

.field private static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_BEARER_ABORT:Ljava/lang/String; = "abort"

.field public static final REASON_BEARER_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final REASON_BEARER_DEACTIVATION:Ljava/lang/String; = "deactivation"

.field public static final REASON_BEARER_MODIFICATION:Ljava/lang/String; = "modification"

.field private static final REASON_DATA_DETACHED:Ljava/lang/String; = "dataDetached"

.field private static final REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field private static final REASON_QUERY_PLMN:Ljava/lang/String; = "queryPLMN"

.field private static final REQUEST_NETWOKR_BASE_ID:I = 0x22b

.field private static final RESULT_RA_FAIL:Ljava/lang/String; = "RaFail"

.field private static final SIZE_DEFAULT_BEARER_RESPONSE:I = 0x9470

.field private static final SIZE_NOTIFY_DEDICATE_BEARER_ACTIVATED:I = 0x5000

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static mInstance:Lcom/mediatek/ims/internal/DataDispatcher;

.field private static sImsNetworkInterface:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

.field mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

.field private mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mEmergencyCid:I

.field private mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/ImsAdapter$VaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalIpV6Thread:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mIsBroadcastReceiverRegistered:Z

.field private mIsEnable:Z

.field private mPcscfDiscoveryDhcpThread:Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    const-string v2, "ims"

    sput-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    .line 85
    const-string v2, "emergency"

    sput-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    .line 87
    const-string v2, "enableIMS"

    sput-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->FEATURE_ENABLE_IMS:Ljava/lang/String;

    .line 88
    const-string v2, "enableEmergency"

    sput-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->FEATURE_ENABLE_EMERGENCY:Ljava/lang/String;

    .line 106
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "IPV4_IMS"

    aput-object v3, v2, v1

    const-string v3, "IPV6_IMS"

    aput-object v3, v2, v0

    const-string v3, "IPV4_EIMS"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "IPV6_EIMS"

    aput-object v4, v2, v3

    sput-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->IP_KEY:[Ljava/lang/String;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    .line 171
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    .line 184
    const-string v2, "ro.mtk_epdg_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/mediatek/ims/internal/DataDispatcher;->EPDG_FEATURE:Z

    .line 2861
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->RA_POLLING_TIMER:[I

    return-void

    :cond_0
    move v0, v1

    .line 184
    goto :goto_0

    .line 171
    nop

    :array_0
    .array-data 4
        0x4
        0xa
    .end array-data

    .line 2861
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmergencyCid:I

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIpV6Thread:Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$1;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$2;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 2594
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$3;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2628
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$4;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataDispatcher created and use apn type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] as IMS APN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    .line 458
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 459
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    .line 460
    sput-object p0, Lcom/mediatek/ims/internal/DataDispatcher;->mInstance:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 461
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 463
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->createNetworkRequest()V

    .line 464
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDedicateBearerModificationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handlePcscfDiscoveryRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/internal/DataDispatcher;ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p3, "x3"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/ims/internal/DataDispatcher;->onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/internal/DataDispatcher;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/internal/DataDispatcher;ILcom/mediatek/internal/telephony/PcscfInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/mediatek/internal/telephony/PcscfInfo;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->responsePcscfDiscovery(ILcom/mediatek/internal/telephony/PcscfInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoState(Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/internal/DataDispatcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->delayForSeconds(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->isMsgAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->getIpKeyIdx(Ljava/lang/String;Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/net/InetAddress;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/ims/internal/DataDispatcher;->onNotifyGlobalIpAddr(Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressV4(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressV6(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->onNotifyDefaultBearerModification(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfoDetailState(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->RA_POLLING_TIMER:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->getRaResultAddress(Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/net/InetAddress;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/LinkProperties;
    .param p4, "x4"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/DataDispatcher;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressReceived(Ljava/lang/String;Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/DataDispatcher;[ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # [I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->setDeactivateCid([ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/DataDispatcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDedicateBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleBearerDeactivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method private clearDeactivateCid()V
    .locals 2

    .prologue
    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearDeactivateCid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2196
    return-void
.end method

.method private convertImsOrEmergencyNetworkType(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2726
    const/4 v0, -0x1

    .line 2727
    .local v0, "networkType":I
    const-string v1, "ims"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2728
    const/16 v0, 0xb

    .line 2734
    :goto_0
    return v0

    .line 2729
    :cond_0
    const-string v1, "emergency"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2730
    const/16 v0, 0xf

    goto :goto_0

    .line 2732
    :cond_1
    const-string v1, "only convert ims/emergency"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createNetworkRequest()V
    .locals 8

    .prologue
    .line 2573
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    array-length v1, v4

    .line 2574
    .local v1, "count":I
    new-array v4, v1, [Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    iput-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    .line 2576
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2577
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 2578
    .local v3, "netCap":Landroid/net/NetworkCapabilities;
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    aget v0, v4, v2

    .line 2579
    .local v0, "cap":I
    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 2580
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 2583
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    aget v4, v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    sget-boolean v4, Lcom/mediatek/ims/internal/DataDispatcher;->EPDG_FEATURE:Z

    if-eqz v4, :cond_0

    .line 2584
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 2587
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    new-instance v5, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getNwCBbyCap(I)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getApnTypeByCap(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;-><init>(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 2589
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v4, v4, v2

    iput-object v3, v4, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCap:Landroid/net/NetworkCapabilities;

    .line 2576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2592
    .end local v0    # "cap":I
    .end local v3    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_1
    return-void
.end method

.method private delayForSeconds(I)V
    .locals 4
    .param p1, "seconds"    # I

    .prologue
    .line 2098
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :goto_0
    return-void

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private getApnTypeByCap(I)Ljava/lang/String;
    .locals 3
    .param p1, "cap"    # I

    .prologue
    .line 2675
    const-string v0, ""

    .line 2676
    .local v0, "apnType":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 2684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: apnType=\"\" for invalid cap ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2686
    :goto_0
    return-object v0

    .line 2678
    :sswitch_0
    const-string v0, "ims"

    .line 2679
    goto :goto_0

    .line 2681
    :sswitch_1
    const-string v0, "emergency"

    .line 2682
    goto :goto_0

    .line 2676
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getFwkCauseFromReason(Ljava/lang/String;)I
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2498
    const/4 v0, 0x0

    .line 2499
    .local v0, "fwkCause":I
    const-string v1, "queryPLMN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2500
    const/4 v0, 0x1

    .line 2502
    :cond_0
    return v0
.end method

.method private getGlobalIpV6Addr(Ljava/lang/String;Landroid/net/LinkProperties;I)V
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "phoneId"    # I

    .prologue
    .line 2889
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->stopQueryGlobalIpV6Thread(Ljava/lang/String;)V

    .line 2890
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 2891
    .local v0, "queryThread":Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->start()V

    .line 2892
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIpV6Thread:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2893
    return-void
.end method

.method private getIMSGlobalIpAddr(Ljava/lang/String;)V
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIMSGlobalIpAddr, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2801
    const-string v2, ""

    .line 2802
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2803
    const-string v2, "_IMS"

    .line 2808
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2809
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2810
    .local v3, "keySet":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2811
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 2812
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 2813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send notify ip queued event to IMCB, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2814
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2804
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keySet":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2805
    const-string v2, "_EIMS"

    goto :goto_0

    .line 2817
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2818
    return-void
.end method

.method private getIMSGlobalIpAddr(Ljava/lang/String;Landroid/net/LinkProperties;I)V
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    .line 2823
    const/4 v6, 0x0

    .line 2824
    .local v6, "cnt":I
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 2825
    .local v8, "inetAddress":Ljava/net/InetAddress;
    instance-of v1, v8, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 2826
    const-string v1, "getIMSGlobalIpAddr, ip is IpV6"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2827
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->getGlobalIpV6Addr(Ljava/lang/String;Landroid/net/LinkProperties;I)V

    .line 2843
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 2844
    goto :goto_0

    .line 2828
    :cond_0
    instance-of v1, v8, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2

    .line 2829
    const-string v1, "getIMSGlobalIpAddr, ip is IpV4"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2830
    invoke-virtual {v8}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2831
    const-string v1, "getIMSGlobalIpAddr, Using dhcp"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2832
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2833
    .local v0, "dhcpThread":Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;->start()V

    goto :goto_1

    .line 2835
    .end local v0    # "dhcpThread":Lcom/mediatek/ims/internal/DataDispatcher$DhcpThread;
    :cond_1
    const-string v1, "getIMSGlobalIpAddr, send to Handler"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2836
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    goto :goto_1

    .line 2839
    :cond_2
    const-string v1, "getIMSGlobalIpAddr, ip is unknown type, use IpV4 temporary"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2840
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V

    goto :goto_1

    .line 2845
    .end local v8    # "inetAddress":Ljava/net/InetAddress;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIMSGlobalIpAddr, ip cnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2846
    return-void
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 2446
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getImsConfig(I)Lcom/android/ims/ImsConfig;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 2766
    const/4 v1, 0x0

    .line 2767
    .local v1, "imsConfig":Lcom/android/ims/ImsConfig;
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 2770
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2775
    :goto_0
    return-object v1

    .line 2771
    :catch_0
    move-exception v0

    .line 2772
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    goto :goto_0
.end method

.method private getImsOrEmergencyNetworkInfo(Ljava/lang/String;)Landroid/net/NetworkInfo;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2460
    const/4 v1, 0x0

    .line 2461
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->convertImsOrEmergencyNetworkType(Ljava/lang/String;)I

    move-result v3

    .line 2462
    .local v3, "networkType":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not ims or emergency apn, apn is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    move-object v2, v1

    .line 2473
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 2468
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 2473
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    goto :goto_0

    .line 2469
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private getImsOrEmergencyNetworkInfoDetailState(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2487
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 2489
    .local v1, "state":Landroid/net/NetworkInfo$DetailedState;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfo(Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2494
    :goto_0
    return-object v1

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getImsOrEmergencyNetworkInfoState(Ljava/lang/String;)Landroid/net/NetworkInfo$State;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2476
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 2478
    .local v1, "state":Landroid/net/NetworkInfo$State;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->getImsOrEmergencyNetworkInfo(Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2483
    :goto_0
    return-object v1

    .line 2479
    :catch_0
    move-exception v0

    .line 2480
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/DataDispatcher;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->mInstance:Lcom/mediatek/ims/internal/DataDispatcher;

    return-object v0
.end method

.method private getIpKeyIdx(Ljava/lang/String;Ljava/net/InetAddress;)I
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 2139
    const/4 v0, -0x1

    .line 2140
    .local v0, "keyIdx":I
    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2141
    const/4 v0, 0x0

    .line 2146
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2147
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressV6(Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2148
    add-int/lit8 v0, v0, 0x1

    .line 2159
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpKeyIdx, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2160
    return v0

    .line 2142
    :cond_1
    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2143
    const/4 v0, 0x2

    goto :goto_0

    .line 2149
    :cond_2
    invoke-direct {p0, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->isIpAddressV4(Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2150
    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 2152
    :cond_3
    const-string v1, "invalid ip type"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2153
    const/4 v0, -0x1

    goto :goto_1

    .line 2156
    :cond_4
    const-string v1, "error happened, not ims or emergency apn!!"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getLegacyTypeForNwCap(I)I
    .locals 3
    .param p1, "capability"    # I

    .prologue
    .line 2691
    const/4 v0, -0x1

    .line 2692
    .local v0, "legacyType":I
    sparse-switch p1, :sswitch_data_0

    .line 2700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: unsupport capability("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2703
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret legacyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2704
    return v0

    .line 2694
    :sswitch_0
    const/16 v0, 0xb

    .line 2695
    goto :goto_0

    .line 2697
    :sswitch_1
    const/16 v0, 0xf

    .line 2698
    goto :goto_0

    .line 2692
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private getNetworkRequetsPos(Ljava/lang/String;I)I
    .locals 3
    .param p1, "requestApnType"    # Ljava/lang/String;
    .param p2, "endPos"    # I

    .prologue
    .line 2507
    const/4 v1, -0x1

    .line 2508
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2509
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2510
    move v1, v0

    .line 2514
    :cond_0
    return v1

    .line 2508
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getNwCBbyCap(I)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 3
    .param p1, "cap"    # I

    .prologue
    .line 2660
    const/4 v0, 0x0

    .line 2661
    .local v0, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    sparse-switch p1, :sswitch_data_0

    .line 2669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: nwCB=null for invalid cap ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2671
    :goto_0
    return-object v0

    .line 2663
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2664
    goto :goto_0

    .line 2666
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2667
    goto :goto_0

    .line 2661
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private getRaResultAddress(Ljava/lang/String;Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2865
    const/4 v0, 0x0

    .line 2866
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2867
    .local v3, "inetAddress":Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet6Address;

    if-eqz v7, :cond_0

    .line 2870
    :try_start_0
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 2871
    .local v4, "ipBytes":[B
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 2872
    .local v6, "prefixBytes":[B
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v5, v7, :cond_1

    .line 2874
    aget-byte v7, v6, v5

    aput-byte v7, v4, v5

    .line 2872
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2877
    :cond_1
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2878
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRaResultAddress get address ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2885
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "ipBytes":[B
    .end local v5    # "j":I
    .end local v6    # "prefixBytes":[B
    :cond_2
    return-object v0

    .line 2880
    .restart local v3    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 2881
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 2456
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private handleBearerDeactivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 768
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-virtual {v4, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->extractPdnDeactInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;

    move-result-object v1

    .line 769
    .local v1, "pdnDeactInd":Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    .line 770
    .local v3, "requestId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v2

    .line 771
    .local v2, "phoneId":I
    iget v4, v1, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-virtual {p0, v4, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->isDedicateBearer(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDedicateBearerDeactivationRequest(ILcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;I)V

    .line 790
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-boolean v4, v1, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-nez v4, :cond_3

    .line 774
    iget v4, v1, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v0

    .line 775
    .local v0, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-eqz v0, :cond_2

    .line 776
    iget v4, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    const v5, 0x187dc

    if-ne v4, v5, :cond_1

    .line 777
    const-string v4, "handleBearerDeactivationRequest to default bearer activation"

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 778
    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerDeactivationRequest(ILcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;I)V

    goto :goto_0

    .line 780
    :cond_1
    const-string v4, "handleBearerDeactivationRequest to abort dedicate bearer activation"

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 781
    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDedicateBearerDeactivationRequest(ILcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;I)V

    goto :goto_0

    .line 784
    :cond_2
    const-string v4, "handleBearerDeactivationRequest to abort bearer activation but no transaction found (reject request anyway)"

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 785
    iget v4, v1, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDataBearerDeactivation(III)V

    goto :goto_0

    .line 788
    .end local v0    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_3
    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerDeactivationRequest(ILcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;I)V

    goto :goto_0
.end method

.method private handleDedicateBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 742
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v9

    .line 743
    .local v9, "transactionId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    .line 744
    .local v8, "primaryCid":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v2, 0x1

    .line 745
    .local v2, "signalingFlag":Z
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    .line 746
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v5

    .line 747
    .local v5, "phoneId":I
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readQos(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/QosStatus;

    move-result-object v3

    .line 748
    .local v3, "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readTft(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/TftStatus;

    move-result-object v4

    .line 749
    .local v4, "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDedicateBearerActivationRequest ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] primaryCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalingFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Qos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Tft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 751
    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcher;->enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I

    move-result v6

    .line 752
    .local v6, "ddcId":I
    new-instance v7, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    invoke-direct {v7, p0, v9, v0, v5}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;III)V

    .line 754
    .local v7, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iput v6, v7, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    .line 755
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 757
    if-gez v6, :cond_0

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDedicateBearerActivationRequest ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but no ddcId is assigned"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 759
    const/high16 v0, 0x10000

    const/4 v1, 0x0

    invoke-direct {p0, v7, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 761
    :cond_0
    return-void

    .line 744
    .end local v2    # "signalingFlag":Z
    .end local v3    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v4    # "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    .end local v5    # "phoneId":I
    .end local v6    # "ddcId":I
    .end local v7    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private handleDedicateBearerDeactivationRequest(ILcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "pdnDeactInd"    # Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;
    .param p3, "phoneId"    # I

    .prologue
    .line 794
    const/4 v0, -0x1

    .line 795
    .local v0, "ddcId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest PdnDeactInd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 796
    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    iget v3, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-direct {v1, p0, v3, p1, p3}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;III)V

    .line 798
    .local v1, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget-boolean v3, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v3, :cond_0

    .line 799
    const-string v3, "deactivation"

    iget v4, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-virtual {p0, v3, v4, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->disableDedicateBearer(Ljava/lang/String;II)I

    move-result v0

    .line 815
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 817
    if-ltz v0, :cond_3

    .line 818
    iget-boolean v3, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v3, :cond_2

    .line 819
    iget v3, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    iput v3, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    .line 823
    :goto_1
    iput v0, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    .line 829
    :goto_2
    return-void

    .line 802
    :cond_0
    iget v3, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v2

    .line 803
    .local v2, "transaction":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-nez v2, :cond_1

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest do abort but no transaction found with transactionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest do abort with ddcId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 810
    const-string v3, "abort"

    iget v4, v2, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    iget v5, v2, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->abortEnableDedicateBearer(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 821
    .end local v2    # "transaction":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_2
    const/4 v3, -0x1

    iput v3, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    goto :goto_1

    .line 825
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest but no corresponding ddcId is found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 827
    iget v3, p2, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDataConnectionDeactivation(III)V

    goto :goto_2
.end method

.method private handleDedicateBearerModificationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 840
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    .line 841
    .local v8, "transactionId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 842
    .local v0, "cid":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v12

    if-ne v12, v9, :cond_1

    move v2, v9

    .line 843
    .local v2, "isQosModify":Z
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    .line 844
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readQos(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/QosStatus;

    move-result-object v6

    .line 845
    .local v6, "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v12

    if-ne v12, v9, :cond_2

    move v3, v9

    .line 846
    .local v3, "isTftModify":Z
    :goto_1
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 847
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readTft(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/TftStatus;

    move-result-object v7

    .line 848
    .local v7, "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v5

    .line 850
    .local v5, "phoneId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleDedicateBearerModificationRequest ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Qos"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Tft"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 853
    if-eqz v2, :cond_5

    .end local v6    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_4
    if-eqz v3, :cond_6

    .end local v7    # "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_5
    invoke-virtual {p0, v0, v6, v7, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I

    move-result v1

    .line 855
    .local v1, "ddcId":I
    new-instance v4, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v9

    invoke-direct {v4, p0, v8, v9, v5}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;III)V

    .line 857
    .local v4, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iput v0, v4, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    .line 858
    iput v1, v4, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    .line 860
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 862
    if-gez v1, :cond_0

    .line 863
    const/high16 v9, 0x10000

    invoke-direct {p0, v4, v9, v11}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDedicateDataConnectionModification(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 865
    :cond_0
    return-void

    .end local v1    # "ddcId":I
    .end local v2    # "isQosModify":Z
    .end local v3    # "isTftModify":Z
    .end local v4    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v5    # "phoneId":I
    :cond_1
    move v2, v10

    .line 842
    goto/16 :goto_0

    .restart local v2    # "isQosModify":Z
    .restart local v6    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    :cond_2
    move v3, v10

    .line 845
    goto/16 :goto_1

    .line 850
    .restart local v3    # "isTftModify":Z
    .restart local v5    # "phoneId":I
    .restart local v7    # "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    :cond_3
    const-string v9, ""

    goto :goto_2

    :cond_4
    const-string v9, ""

    goto :goto_3

    :cond_5
    move-object v6, v11

    .line 853
    goto :goto_4

    .end local v6    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    :cond_6
    move-object v7, v11

    goto :goto_5
.end method

.method private handleDefaultBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/high16 v12, 0x10000

    .line 557
    const/4 v11, -0x1

    .line 558
    .local v11, "result":I
    const/4 v1, 0x1

    .line 559
    .local v1, "isValid":I
    const/4 v3, 0x0

    .line 560
    .local v3, "isEmergencyInd":I
    const/16 v8, 0xb

    .line 561
    .local v8, "nNetworkType":I
    const-string v6, "ims"

    .line 562
    .local v6, "apnType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v10

    .line 563
    .local v10, "phoneId":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->extractDefaultPdnActInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;

    move-result-object v7

    .line 564
    .local v7, "defaultPdnActInd":Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;
    new-instance v9, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    iget v2, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->transactionId:I

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v4

    invoke-direct {v9, p0, v2, v4, v10}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;III)V

    .line 566
    .local v9, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 568
    const-string v2, "handleDefaultBearerActivationRequest"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 571
    iget v2, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->emergency_ind:I

    packed-switch v2, :pswitch_data_0

    .line 581
    const/16 v2, 0x3e8

    invoke-direct {p0, v9, v12, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_0
    const/4 v3, 0x1

    .line 576
    const/16 v8, 0xf

    .line 577
    const-string v6, "emergency"

    .line 578
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 585
    :pswitch_1
    new-instance v0, Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    iget-object v2, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    iget v4, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pcscf_discovery:I

    iget v5, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->signalingFlag:I

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/DefaultBearerConfig;-><init>(ILcom/mediatek/internal/telephony/QosStatus;III)V

    .line 587
    .local v0, "defaultBearerConfig":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v9, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    invoke-virtual {p0, v2, v0, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;I)I

    .line 590
    invoke-direct {p0, v6, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->requestNwRequest(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_0

    .line 591
    const/16 v2, 0x7d0

    invoke-direct {p0, v9, v12, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDefaultBearerDeactivationRequest(ILcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;I)V
    .locals 25
    .param p1, "requestId"    # I
    .param p2, "pdnDeactInd"    # Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;
    .param p3, "phoneId"    # I

    .prologue
    .line 617
    const/16 v19, -0x1

    .line 618
    .local v19, "result":I
    sget-object v15, Lcom/mediatek/ims/internal/DataDispatcher;->FEATURE_ENABLE_IMS:Ljava/lang/String;

    .line 619
    .local v15, "networkFeature":Ljava/lang/String;
    const/16 v17, 0xb

    .line 620
    .local v17, "networkType":I
    const/4 v9, 0x0

    .line 621
    .local v9, "bIsEmergency":Z
    const-string v7, "ims"

    .line 623
    .local v7, "apnType":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 624
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleDefaultBearerDeactivationRequest ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] deactivate cid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", networkFeature: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmergencyCid:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmergencyCid:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    const/4 v9, 0x1

    .line 642
    :goto_0
    if-eqz v9, :cond_0

    .line 643
    const-string v22, "handleDefaultBearerDeactivationRequest the bearer is emergency bearer"

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 644
    const/16 v17, 0xf

    .line 645
    sget-object v15, Lcom/mediatek/ims/internal/DataDispatcher;->FEATURE_ENABLE_EMERGENCY:Ljava/lang/String;

    .line 646
    const-string v7, "emergency"

    .line 649
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v16

    .line 650
    .local v16, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    .line 651
    .local v10, "currState":Landroid/net/NetworkInfo$State;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "networkinfo: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    move-result v19

    .line 653
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->removeReceivedAddress(Ljava/lang/String;)V

    .line 655
    new-instance v18, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;III)V

    .line 657
    .local v18, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    move-object/from16 v0, v18

    iput-boolean v9, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 658
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 659
    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    .line 663
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 665
    if-ltz v19, :cond_c

    .line 667
    :try_start_0
    sget-object v22, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    if-eq v10, v0, :cond_1

    sget-object v22, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    if-ne v10, v0, :cond_a

    .line 669
    :cond_1
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransactionKeyArray()[Ljava/lang/Integer;

    move-result-object v21

    .line 671
    .local v21, "transactionKeyArray":[Ljava/lang/Integer;
    const/16 v11, 0x3e8

    .line 672
    .local v11, "delayMs":I
    move-object/from16 v8, v21

    .local v8, "arr$":[Ljava/lang/Integer;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v14, :cond_9

    aget-object v20, v8, v13

    .line 673
    .local v20, "transactionId":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v6

    .line 674
    .local v6, "actParam":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    const v22, 0x187dc

    iget v0, v6, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 676
    const-string v22, "handleDefaultBearerDeactivationRequest abort activation request"

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 678
    sget-object v22, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    if-ne v10, v0, :cond_2

    .line 679
    const/16 v11, 0x9c4

    .line 681
    :cond_2
    const/high16 v22, 0x10000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v1, v11}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 626
    .end local v6    # "actParam":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v8    # "arr$":[Ljava/lang/Integer;
    .end local v10    # "currState":Landroid/net/NetworkInfo$State;
    .end local v11    # "delayMs":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v18    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v20    # "transactionId":Ljava/lang/Integer;
    .end local v21    # "transactionKeyArray":[Ljava/lang/Integer;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 629
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleDedicateBearerDeactivationRequest ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] abort transactionId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ", cid="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v5

    .line 635
    .local v5, "abortParam":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-nez v5, :cond_7

    .line 636
    const-string v22, "handleDefaultBearerDeactivationRequest to do abort but no transaction is found"

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    .end local v5    # "abortParam":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ", abortTransactionId="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    .line 639
    .restart local v5    # "abortParam":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_7
    iget-boolean v9, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    goto/16 :goto_0

    .line 661
    .end local v5    # "abortParam":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .restart local v10    # "currState":Landroid/net/NetworkInfo$State;
    .restart local v16    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v18    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    goto/16 :goto_1

    .line 686
    :cond_9
    :try_start_1
    const-string v22, "handleDefaultBearerDeactivationRequest and bearer is already deactivated"

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 695
    :cond_a
    :goto_4
    if-eqz v9, :cond_b

    .line 696
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->setEmergencyCid(I)V

    .line 702
    :cond_b
    :goto_5
    return-void

    .line 690
    :catch_0
    move-exception v12

    .line 691
    .local v12, "ex":Ljava/lang/NullPointerException;
    const-string v22, "networkInfo is null"

    invoke-static/range {v22 .. v22}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v12}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 699
    .end local v12    # "ex":Ljava/lang/NullPointerException;
    :cond_c
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnDeactivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)V

    goto :goto_5
.end method

.method private handlePcscfDiscoveryRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 873
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 874
    .local v7, "transactionId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 875
    .local v0, "cid":I
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 877
    const/16 v8, 0x64

    invoke-virtual {p1, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v2

    .line 878
    .local v2, "interfaceBytes":[B
    const/4 v3, 0x0

    .line 880
    .local v3, "interfaceName":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v4, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 881
    .end local v3    # "interfaceName":Ljava/lang/String;
    .local v4, "interfaceName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 888
    .end local v4    # "interfaceName":Ljava/lang/String;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    .line 890
    .local v5, "method":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePcscfDiscoveryRequest ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", phoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 892
    new-instance v6, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v8

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v9

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;III)V

    .line 894
    .local v6, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iput v0, v6, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    .line 895
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 897
    packed-switch v5, :pswitch_data_0

    .line 919
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePcscfDiscoveryRequest receive unknown method ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 921
    :goto_1
    return-void

    .line 882
    .end local v5    # "method":I
    .end local v6    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 884
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 885
    .local v1, "e":Ljava/lang/NullPointerException;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 900
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "method":I
    .restart local v6    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :pswitch_0
    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_1

    .line 903
    :pswitch_1
    invoke-direct {p0, v7, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handlePcscfDiscoveryRequestByISim(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 906
    :pswitch_2
    invoke-direct {p0, v7, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handlePcscfDiscoveryRequestByMo(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 909
    :pswitch_3
    invoke-direct {p0, v7, v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handlePcscfDiscoveryRequestByPco(IILcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 913
    :pswitch_4
    invoke-direct {p0, v7, v3, v5, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handlePcscfDiscoveryRequestByDhcp(ILjava/lang/String;ILcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 916
    :pswitch_5
    invoke-direct {p0, v7, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handlePcscfDiscoveryRequestByManual(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 884
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v5    # "method":I
    .end local v6    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .restart local v4    # "interfaceName":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "interfaceName":Ljava/lang/String;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    goto :goto_3

    .line 882
    .end local v3    # "interfaceName":Ljava/lang/String;
    .restart local v4    # "interfaceName":Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "interfaceName":Ljava/lang/String;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    goto :goto_2

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handlePcscfDiscoveryRequestByDhcp(ILjava/lang/String;ILcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 6
    .param p1, "transactionId"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "method"    # I
    .param p4, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePcscfDiscoveryRequestByDhcp ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 936
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;ILjava/lang/String;Lcom/mediatek/ims/ImsAdapter$VaEvent;I)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPcscfDiscoveryDhcpThread:Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;

    .line 939
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPcscfDiscoveryDhcpThread:Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;->start()V

    .line 940
    return-void

    .line 936
    :cond_0
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByISim(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 7
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v6, 0x1

    .line 943
    const/4 v1, 0x0

    .line 944
    .local v1, "pcscf":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 947
    .local v3, "subId":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 954
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePcscfDiscoveryRequestByISim, subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 955
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    .line 956
    :cond_0
    const-string v4, "handlePcscfDiscoveryRequestByISim but no P-CSCF found"

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 957
    invoke-direct {p0, p1, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 963
    :goto_1
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 959
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v2, v6, v1}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>(I[Ljava/lang/String;)V

    .line 960
    .local v2, "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePcscfDiscoveryRequestByISim, pcscfInfo from getIsimPcscf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 961
    invoke-direct {p0, p1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->responsePcscfDiscovery(ILcom/mediatek/internal/telephony/PcscfInfo;)V

    goto :goto_1

    .line 950
    .end local v2    # "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByManual(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 5
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 1015
    const-string v3, "ril.pcscf.addr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "pcscf":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1017
    :cond_0
    const-string v3, "handlePcscfDiscoveryRequest (manual) invalid P-CSCF system property"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1018
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 1029
    :goto_0
    return-void

    .line 1020
    :cond_1
    const-string v3, "ril.pcscf.port"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1021
    .local v2, "port":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePcscfDiscoveryRequest (manual) P-CSCF system property [address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1023
    new-instance v1, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    .line 1024
    .local v1, "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    const/4 v3, 0x6

    iput v3, v1, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 1025
    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 1027
    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->responsePcscfDiscovery(ILcom/mediatek/internal/telephony/PcscfInfo;)V

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByMo(ILcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 13
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 968
    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v10

    .line 969
    .local v10, "subId":I
    invoke-direct {p0, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->getImsConfig(I)Lcom/android/ims/ImsConfig;

    move-result-object v3

    .line 970
    .local v3, "imsConfig":Lcom/android/ims/ImsConfig;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handlePcscfDiscoveryRequestByMo, phoneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 972
    if-nez v3, :cond_0

    .line 973
    const-string v11, "handlePcscfDiscoveryRequestByMo but cannot get ImsConfig for MO"

    invoke-static {v11}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 974
    const/4 v11, 0x1

    invoke-direct {p0, p1, v11}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 1012
    :goto_0
    return-void

    .line 976
    :cond_0
    new-instance v9, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    .line 977
    .local v9, "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    const/4 v11, 0x2

    iput v11, v9, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    .line 980
    const/16 v11, 0x64

    :try_start_0
    invoke-virtual {v3, v11}, Lcom/android/ims/ImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v8

    .line 982
    .local v8, "moPcscf":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 983
    :cond_1
    const-string v11, "handlePcscfDiscoveryRequestByMo and no MO P-CSCF is found (continue check LBO P-CSCF"

    invoke-static {v11}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 989
    :goto_1
    invoke-virtual {v3}, Lcom/android/ims/ImsConfig;->getMasterLboPcscfValue()[Lcom/android/ims/mo/ImsLboPcscf;

    move-result-object v5

    .line 990
    .local v5, "imsLboPcscfArray":[Lcom/android/ims/mo/ImsLboPcscf;
    if-nez v5, :cond_4

    .line 991
    const-string v11, "handlePcscfDiscoveryRequestByMo and no LBO P-CSCF is found"

    invoke-static {v11}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v5    # "imsLboPcscfArray":[Lcom/android/ims/mo/ImsLboPcscf;
    .end local v8    # "moPcscf":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/PcscfInfo;->getPcscfAddressCount()I

    move-result v11

    if-nez v11, :cond_6

    .line 1006
    const-string v11, "handlePcscfDiscoveryRequestByMo but no any P-CSCF is found"

    invoke-static {v11}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1007
    const/4 v11, 0x1

    invoke-direct {p0, p1, v11}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_0

    .line 985
    .restart local v8    # "moPcscf":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handlePcscfDiscoveryRequestByMo and MO P-CSCF is found ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 986
    const/4 v11, 0x0

    invoke-virtual {v9, v8, v11}, Lcom/mediatek/internal/telephony/PcscfInfo;->add(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1001
    .end local v8    # "moPcscf":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1002
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->printStackTrace()V

    goto :goto_2

    .line 993
    .end local v1    # "e":Lcom/android/ims/ImsException;
    .restart local v5    # "imsLboPcscfArray":[Lcom/android/ims/mo/ImsLboPcscf;
    .restart local v8    # "moPcscf":Ljava/lang/String;
    :cond_4
    move-object v0, v5

    .local v0, "arr$":[Lcom/android/ims/mo/ImsLboPcscf;
    :try_start_2
    array-length v7, v0

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v7, :cond_2

    aget-object v4, v0, v2

    .line 994
    .local v4, "imsLboPcscf":Lcom/android/ims/mo/ImsLboPcscf;
    invoke-virtual {v4}, Lcom/android/ims/mo/ImsLboPcscf;->getLboPcscfAddress()Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, "lboPcscf":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 996
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handlePcscfDiscoveryRequestByMo and LBO P-CSCF is found ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 997
    const/4 v11, 0x0

    invoke-virtual {v9, v6, v11}, Lcom/mediatek/internal/telephony/PcscfInfo;->add(Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 993
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1009
    .end local v0    # "arr$":[Lcom/android/ims/mo/ImsLboPcscf;
    .end local v2    # "i$":I
    .end local v4    # "imsLboPcscf":Lcom/android/ims/mo/ImsLboPcscf;
    .end local v5    # "imsLboPcscfArray":[Lcom/android/ims/mo/ImsLboPcscf;
    .end local v6    # "lboPcscf":Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v8    # "moPcscf":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->responsePcscfDiscovery(ILcom/mediatek/internal/telephony/PcscfInfo;)V

    goto/16 :goto_0
.end method

.method private handlePcscfDiscoveryRequestByPco(IILcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 5
    .param p1, "transactionId"    # I
    .param p2, "cid"    # I
    .param p3, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePcscfDiscoveryRequestByPco ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 925
    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->pcscfDiscovery(Ljava/lang/String;IILandroid/os/Message;)I

    move-result v0

    .line 927
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePcscfDiscoveryRequestByPco failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 929
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 931
    :cond_0
    return-void
.end method

.method private isApnIMSorEmergency(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2181
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isFaileCauseAllowedToDeatch(Ljava/lang/String;)Z
    .locals 3
    .param p1, "failedStr"    # Ljava/lang/String;

    .prologue
    .line 1334
    const/4 v0, 0x0

    .line 1335
    .local v0, "bRet":Z
    const-string v1, "LOST_CONNECTION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    const/4 v0, 0x1

    .line 1338
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFaileCauseAllowedToDeatch ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1339
    return v0
.end method

.method private isIpAddressReceived(Ljava/lang/String;Ljava/net/InetAddress;)Z
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 2120
    const/4 v0, 0x0

    .line 2121
    .local v0, "bRet":Z
    const-string v2, ""

    .line 2122
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->getIpKeyIdx(Ljava/lang/String;Ljava/net/InetAddress;)I

    move-result v3

    .line 2124
    .local v3, "keyIdx":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2126
    :try_start_0
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->IP_KEY:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 2127
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2128
    const/4 v0, 0x1

    .line 2134
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIpAddressReceived Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bRet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2135
    return v0

    .line 2130
    :catch_0
    move-exception v1

    .line 2131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isIpAddressV4(Ljava/net/InetAddress;)Z
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 2172
    const/4 v0, 0x0

    .line 2173
    .local v0, "bRet":Z
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 2174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is IPV4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2175
    const/4 v0, 0x1

    .line 2177
    :cond_0
    return v0
.end method

.method private isIpAddressV6(Ljava/net/InetAddress;)Z
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 2164
    const/4 v0, 0x0

    .line 2165
    .local v0, "bRet":Z
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is IPV6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2167
    const/4 v0, 0x1

    .line 2169
    :cond_0
    return v0
.end method

.method private isMsgAllowed(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "changed"    # I

    .prologue
    const/4 v0, 0x1

    .line 2185
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReasonAllowedToDetach(Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1343
    const/4 v0, 0x0

    .line 1344
    .local v0, "bRet":Z
    const-string v1, "apnChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "queryPLMN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nwTypeChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dataDetached"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1347
    :cond_0
    const/4 v0, 0x1

    .line 1349
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReasonAllowedToDetach ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1350
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1900
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1904
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return-void
.end method

.method private makeRejectDefaultBearerEvent(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 3
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I

    .prologue
    .line 723
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v2, 0x187de

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 725
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectDefaultBearerDataConnActivation param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 727
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 728
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 729
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 731
    return-object v0
.end method

.method private static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .param p0, "netType"    # I

    .prologue
    .line 2738
    packed-switch p0, :pswitch_data_0

    .line 2760
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2761
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2740
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 2742
    :pswitch_2
    const-string v0, "mms"

    goto :goto_0

    .line 2744
    :pswitch_3
    const-string v0, "supl"

    goto :goto_0

    .line 2746
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 2748
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 2750
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 2752
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 2754
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 2756
    :pswitch_9
    const-string v0, "ia"

    goto :goto_0

    .line 2758
    :pswitch_a
    const-string v0, "emergency"

    goto :goto_0

    .line 2738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private notifyBearerModified(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    .locals 2
    .param p1, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p2, "phoneId"    # I

    .prologue
    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBearerModified ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1706
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDedicateDataConnection(Lcom/mediatek/internal/telephony/DedicateBearerProperties;II)V

    .line 1707
    return-void
.end method

.method private notifyDataConnectionDeactivated(IIII)V
    .locals 10
    .param p1, "cid"    # I
    .param p2, "cause"    # I
    .param p3, "fwkCause"    # I
    .param p4, "phoneId"    # I

    .prologue
    .line 1640
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v7, 0x187e6

    invoke-direct {v1, p4, v7}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1642
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyDedicateDataConnectionDeactivated cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cause="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fwkCause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,phoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1649
    invoke-virtual {v1, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1650
    invoke-virtual {v1, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1651
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1653
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1656
    iget-object v8, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v8

    .line 1657
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransactionKeyArray()[Ljava/lang/Integer;

    move-result-object v6

    .line 1658
    .local v6, "transactionKeyArray":[Ljava/lang/Integer;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 1659
    .local v5, "transactionId":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v4

    .line 1660
    .local v4, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget v7, v4, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    const v9, 0x187ed

    if-ne v7, v9, :cond_0

    iget v7, v4, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    if-ne v7, p1, :cond_0

    .line 1662
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {p0, v7, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 1658
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1665
    .end local v4    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v5    # "transactionId":Ljava/lang/Integer;
    :cond_1
    monitor-exit v8

    .line 1666
    return-void

    .line 1665
    .end local v0    # "arr$":[Ljava/lang/Integer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "transactionKeyArray":[Ljava/lang/Integer;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private notifyDedicateDataConnection(Lcom/mediatek/internal/telephony/DedicateBearerProperties;II)V
    .locals 7
    .param p1, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p2, "type"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v6, 0x3

    .line 1526
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v4

    .line 1527
    :try_start_0
    sget-object v3, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    iget v5, p1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDedicateDataConnection but default bearer does not existed, type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1529
    monitor-exit v4

    .line 1563
    :goto_0
    return-void

    .line 1531
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    const/4 v0, 0x0

    .line 1535
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 1536
    const v2, 0x187e2

    .line 1540
    .local v2, "notifyMsg":I
    :goto_1
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-direct {v0, p3, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1541
    .restart local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDedicateDataConnection type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1549
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1550
    new-array v3, v6, [B

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1551
    invoke-static {v0, p2, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 1552
    new-array v3, v6, [B

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1553
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v3, 0xb

    if-ge v1, v3, :cond_3

    .line 1554
    iget-object v3, p1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1555
    iget-object v3, p1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-static {v0, p2, v3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 1553
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1531
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v1    # "i":I
    .end local v2    # "notifyMsg":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1538
    .restart local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_1
    const v2, 0x187ea

    .restart local v2    # "notifyMsg":I
    goto :goto_1

    .line 1557
    .restart local v1    # "i":I
    :cond_2
    new-instance v3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p2, v3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_3

    .line 1561
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataDispatcher send event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1562
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    goto/16 :goto_0
.end method

.method private notifyDedicateDataConnectionActivated(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    .locals 2
    .param p1, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p2, "phoneId"    # I

    .prologue
    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDedicateDataConnectionActivated property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1520
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDedicateDataConnection(Lcom/mediatek/internal/telephony/DedicateBearerProperties;II)V

    .line 1522
    return-void
.end method

.method private notifyDedicateDataConnectionModified(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    .locals 1
    .param p1, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p2, "phoneId"    # I

    .prologue
    .line 1700
    const-string v0, "notifyDedicateDataConnectionModified"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1701
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyBearerModified(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    .line 1702
    return-void
.end method

.method private notifyDefaultBearerDataConnDeactivated(IIII)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "cause"    # I
    .param p3, "fwkCause"    # I
    .param p4, "nPhoneId"    # I

    .prologue
    .line 1326
    const-string v0, "notifyDefaultBearerDataConnDeactivated"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1327
    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v1

    .line 1328
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDataConnectionDeactivated(IIII)V

    .line 1331
    return-void

    .line 1329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;IILjava/lang/String;)V
    .locals 11
    .param p1, "ddcId"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p3, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p4, "nfailCause"    # I
    .param p5, "phoneId"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 1357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDedicateDataConnectionStateChanged ddcId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failCause="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", properties="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1358
    const/4 v2, 0x0

    .line 1360
    .local v2, "hasTransaction":Z
    iget-object v9, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v9

    .line 1361
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransactionKeyArray()[Ljava/lang/Integer;

    move-result-object v7

    .line 1362
    .local v7, "transactionKeyArray":[Ljava/lang/Integer;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/Integer;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_b

    aget-object v6, v1, v3

    .line 1363
    .local v6, "transactionId":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v5

    .line 1364
    .local v5, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget v8, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->ddcId:I

    if-ne v8, p1, :cond_0

    .line 1365
    const/4 v2, 0x1

    .line 1366
    iget v8, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    sparse-switch v8, :sswitch_data_0

    .line 1438
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDedicateDataConnectionStateChanged received unhandled state change event ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1362
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1368
    :sswitch_0
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v8, :cond_2

    .line 1369
    if-nez p4, :cond_1

    .line 1371
    invoke-direct {p0, v5, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDedicateDataConnectionActivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Lcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_1

    .line 1443
    .end local v1    # "arr$":[Ljava/lang/Integer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v6    # "transactionId":Ljava/lang/Integer;
    .end local v7    # "transactionKeyArray":[Ljava/lang/Integer;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1374
    .restart local v1    # "arr$":[Ljava/lang/Integer;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .restart local v6    # "transactionId":Ljava/lang/Integer;
    .restart local v7    # "transactionKeyArray":[Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-direct {p0, v5, p4, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_1

    .line 1376
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p2, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v8, :cond_0

    .line 1378
    :cond_3
    invoke-direct {p0, v5, p4, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_1

    .line 1382
    :sswitch_1
    iget v8, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    iget v10, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    if-ne v8, v10, :cond_7

    .line 1383
    const-string v8, "abort"

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1385
    if-nez p4, :cond_4

    .line 1386
    const-string v8, "onDedicateDataConnectionStateChanged to response abort success"

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1387
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDataConnectionDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    goto :goto_1

    .line 1389
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDedicateDataConnectionStateChanged to response abort fail failcause="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    invoke-direct {p0, v8, p4, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDataConnectionDeactivation(III)V

    goto :goto_1

    .line 1395
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v8, :cond_6

    .line 1397
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDataConnectionDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    goto :goto_1

    .line 1400
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    invoke-direct {p0, v8, p4, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDataConnectionDeactivation(III)V

    goto :goto_1

    .line 1405
    :cond_7
    iget v8, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_8

    .line 1409
    const-string v8, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is already deactivated (MSG_ID_REQUEST_BEARER_DEACTIVATION)"

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1412
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDataConnectionDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    goto :goto_1

    .line 1415
    :cond_8
    const-string v8, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is not equaled (MSG_ID_REQUEST_BEARER_DEACTIVATION)"

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1422
    :sswitch_2
    iget v8, v5, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    iget v10, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    if-ne v8, v10, :cond_a

    .line 1423
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v8, :cond_9

    .line 1425
    invoke-direct {p0, v5, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDedicateDataConnectionModified(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Lcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto/16 :goto_1

    .line 1428
    :cond_9
    const/high16 v8, 0x10000

    invoke-direct {p0, v5, v8, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDedicateDataConnectionModification(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto/16 :goto_1

    .line 1433
    :cond_a
    const-string v8, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is not equaled (MSG_ID_REQUEST_BEARER_MODIFICATION)"

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1443
    .end local v5    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v6    # "transactionId":Ljava/lang/Integer;
    :cond_b
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    if-nez v2, :cond_c

    .line 1447
    sget-object v8, Lcom/mediatek/ims/internal/DataDispatcher$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1463
    const-string v8, "onDedicateDataConnectionStateChanged not matched to any case"

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1466
    :cond_c
    :goto_2
    return-void

    .line 1449
    :pswitch_0
    iget v8, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    const/4 v9, 0x0

    move/from16 v0, p5

    invoke-direct {p0, v8, p4, v9, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDataConnectionDeactivated(IIII)V

    goto :goto_2

    .line 1453
    :pswitch_1
    const-string v8, "onDedicateDataConnectionStateChanged no matched transaction but receive state FAIL"

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1457
    :pswitch_2
    const-string v8, "modification"

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1458
    move/from16 v0, p5

    invoke-direct {p0, p3, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDedicateDataConnectionModified(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    goto :goto_2

    .line 1460
    :cond_d
    move/from16 v0, p5

    invoke-direct {p0, p3, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDedicateDataConnectionActivated(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    goto :goto_2

    .line 1366
    :sswitch_data_0
    .sparse-switch
        0x187df -> :sswitch_0
        0x187e3 -> :sswitch_1
        0x187e7 -> :sswitch_2
    .end sparse-switch

    .line 1447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1033
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDefaultBearerDataConnFail apnType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1035
    const/4 v1, 0x0

    .line 1036
    .local v1, "hasTransaction":Z
    const-string v10, "reason"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, "reason":Ljava/lang/String;
    const-string v10, "phone"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1040
    .local v4, "nPhoneId":I
    iget-object v11, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v11

    .line 1041
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransactionKeyArray()[Ljava/lang/Integer;

    move-result-object v9

    .line 1042
    .local v9, "transactionKeyArray":[Ljava/lang/Integer;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v8, v0, v2

    .line 1043
    .local v8, "transactionId":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v6

    .line 1044
    .local v6, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    const v10, 0x187dc

    iget v12, v6, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    if-ne v10, v12, :cond_0

    .line 1045
    const/4 v1, 0x1

    .line 1046
    invoke-virtual {p0, p2, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->getLastDataConnectionFailCause(Ljava/lang/String;I)I

    move-result v5

    .line 1047
    .local v5, "nfailCause":I
    const/16 v10, 0x320

    invoke-direct {p0, v6, v5, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    .line 1042
    .end local v5    # "nfailCause":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1050
    .end local v6    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v8    # "transactionId":Ljava/lang/Integer;
    :cond_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    if-nez v1, :cond_2

    .line 1054
    const-string v10, "onDefaultBearerDataConnFail but no transaction found"

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1056
    :cond_2
    return-void

    .line 1050
    .end local v0    # "arr$":[Ljava/lang/Integer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v9    # "transactionKeyArray":[Ljava/lang/Integer;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method

.method private onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1059
    const-class v23, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v24, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1060
    .local v20, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v23, "reason"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1061
    .local v19, "reason":Ljava/lang/String;
    const-string v23, "phone"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1063
    .local v15, "nPhoneId":I
    const/4 v9, 0x0

    .line 1065
    .local v9, "hasTransaction":Z
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onDefaultBearerDataConnStateChanged, state: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", reason: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", apnType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1068
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransactionKeyArray()[Ljava/lang/Integer;

    move-result-object v22

    .line 1069
    .local v22, "transactionKeyArray":[Ljava/lang/Integer;
    move-object/from16 v4, v22

    .local v4, "arr$":[Ljava/lang/Integer;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_7

    aget-object v21, v4, v11

    .line 1070
    .local v21, "transactionId":Ljava/lang/Integer;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v18

    .line 1071
    .local v18, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    sget-object v23, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v23, Lcom/mediatek/ims/internal/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 1073
    :cond_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 1108
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDefaultBearerDataConnStateChanged received unhandled state change event ["

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "]"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1069
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1076
    :sswitch_0
    const/4 v9, 0x1

    .line 1077
    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1078
    const-string v23, "linkProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    .line 1079
    .local v13, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnActivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Ljava/lang/String;Landroid/net/LinkProperties;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1082
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->getIMSGlobalIpAddr(Ljava/lang/String;)V

    goto :goto_1

    .line 1112
    .end local v4    # "arr$":[Ljava/lang/Integer;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "lp":Landroid/net/LinkProperties;
    .end local v18    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v21    # "transactionId":Ljava/lang/Integer;
    .end local v22    # "transactionKeyArray":[Ljava/lang/Integer;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 1084
    .restart local v4    # "arr$":[Ljava/lang/Integer;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v18    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .restart local v21    # "transactionId":Ljava/lang/Integer;
    .restart local v22    # "transactionKeyArray":[Ljava/lang/Integer;
    :cond_3
    :try_start_1
    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 1085
    const/high16 v23, 0x10000

    const/16 v25, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    .line 1086
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeReceivedAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 1090
    :sswitch_1
    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 1091
    const/4 v9, 0x1

    .line 1092
    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->getDeactivateCidArray(Ljava/lang/String;I)[I

    move-result-object v8

    .line 1093
    .local v8, "cidArray":[I
    if-eqz v8, :cond_6

    const/16 v23, 0x0

    aget v23, v8, v23

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 1094
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 1095
    const-string v23, "IMS PDN isdeactivated and to interrupt P-CSCF discovery thread"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->stopPcscfDiscoveryDhcpThread(Ljava/lang/String;)V

    .line 1101
    :cond_4
    :goto_2
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1102
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->setEmergencyCid(I)V

    .line 1104
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeReceivedAddress(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1097
    :cond_6
    if-nez v8, :cond_4

    .line 1098
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    goto :goto_2

    .line 1112
    .end local v8    # "cidArray":[I
    .end local v18    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v21    # "transactionId":Ljava/lang/Integer;
    :cond_7
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onDefaultBearerDataConnStateChanged hasTrasaction: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1115
    if-nez v9, :cond_8

    .line 1117
    sget-object v23, Lcom/mediatek/ims/internal/DataDispatcher$5;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 1174
    :cond_8
    :goto_3
    return-void

    .line 1120
    :pswitch_0
    const/4 v5, 0x1

    .line 1121
    .local v5, "bReleaseNwRequest":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/mediatek/ims/internal/DataDispatcher;->getDeactivateCidArray(Ljava/lang/String;I)[I

    move-result-object v8

    .line 1122
    .restart local v8    # "cidArray":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lcom/mediatek/ims/internal/DataDispatcher;->getLastDataConnectionFailCause(Ljava/lang/String;I)I

    move-result v16

    .line 1123
    .local v16, "nfailCause":I
    const/4 v6, 0x1

    .line 1124
    .local v6, "bStopPcscfThread":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->getFwkCauseFromReason(Ljava/lang/String;)I

    move-result v17

    .line 1125
    .local v17, "nfwkCause":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v14

    .line 1126
    .local v14, "nDeactivateCidSize":I
    if-eqz v8, :cond_9

    .line 1127
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deactivate cid size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v8

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1128
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_b

    .line 1129
    aget v23, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDefaultBearerDataConnDeactivated(IIII)V

    .line 1128
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1132
    .end local v10    # "i":I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->isFaileCauseAllowedToDeatch(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->isReasonAllowedToDetach(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_a

    if-lez v14, :cond_10

    .line 1134
    :cond_a
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deactivate cid(s): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1137
    .local v7, "cid":Ljava/lang/Integer;
    if-eqz v7, :cond_f

    .line 1138
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDefaultBearerDataConnDeactivated(IIII)V

    .line 1150
    .end local v7    # "cid":Ljava/lang/Integer;
    :cond_b
    :goto_5
    if-eqz v6, :cond_c

    .line 1151
    const-string v23, "IMS PDN is deactivated and to interrupt P-CSCF discovery thread"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->stopPcscfDiscoveryDhcpThread(Ljava/lang/String;)V

    .line 1155
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->stopQueryGlobalIpV6Thread(Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeDeactivateCid(Ljava/lang/String;)V

    .line 1157
    sget-object v23, Lcom/mediatek/ims/internal/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1158
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->setEmergencyCid(I)V

    .line 1161
    :cond_d
    if-eqz v5, :cond_e

    .line 1162
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 1164
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeReceivedAddress(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1141
    .restart local v7    # "cid":Ljava/lang/Integer;
    :cond_f
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "no deactivate cid for apnType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1142
    const/4 v5, 0x0

    goto :goto_5

    .line 1145
    .end local v7    # "cid":Ljava/lang/Integer;
    :cond_10
    const-string v23, "can\'t get any cids, no response deactivated default bearer!!"

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1146
    const/4 v6, 0x0

    .line 1147
    const/4 v5, 0x0

    goto :goto_5

    .line 1168
    .end local v5    # "bReleaseNwRequest":Z
    .end local v6    # "bStopPcscfThread":Z
    .end local v8    # "cidArray":[I
    .end local v14    # "nDeactivateCidSize":I
    .end local v16    # "nfailCause":I
    .end local v17    # "nfwkCause":I
    :pswitch_1
    const-string v23, "Connected but currently no notify"

    invoke-static/range {v23 .. v23}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1073
    nop

    :sswitch_data_0
    .sparse-switch
        0x187dc -> :sswitch_0
        0x187e3 -> :sswitch_1
    .end sparse-switch

    .line 1117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onNotifyDefaultBearerModification(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    .locals 1
    .param p1, "defaultProperties"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p2, "phoneId"    # I

    .prologue
    .line 1844
    const-string v0, "onNotifyDefaultBearerModification"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1845
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyBearerModified(Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    .line 1846
    return-void
.end method

.method private onNotifyGlobalIpAddr(Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15
    .param p1, "inetIpAddr"    # Ljava/net/InetAddress;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "intfName"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .param p5, "ipKey"    # Ljava/lang/String;

    .prologue
    .line 1769
    const/4 v3, -0x1

    .line 1770
    .local v3, "msgId":I
    const/4 v6, 0x0

    .line 1771
    .local v6, "ipAddrByteArray":[B
    move-object/from16 v13, p1

    .line 1772
    .local v13, "inetAddr":Ljava/net/InetAddress;
    const/4 v9, 0x1

    .line 1774
    .local v9, "bIsNwIntfReady":Z
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotifyGlobalIpAddr invalid apnType: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1840
    :goto_0
    return-void

    .line 1779
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1780
    const-string v2, "onNotifyGlobalIpAddr interface name is empty"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1784
    :cond_1
    instance-of v2, v13, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    .line 1785
    const v3, 0x187ec

    .line 1797
    :goto_1
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->getDefaultBearerProperties(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v10

    .line 1799
    .local v10, "defaultBearerProperties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    if-nez v10, :cond_4

    .line 1800
    const-string v2, "onNotifyGlobalIpAddr default bearer properties is null, can\'t get cid"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1786
    .end local v10    # "defaultBearerProperties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_2
    instance-of v2, v13, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3

    .line 1787
    const-string v2, "onNotifyGlobalIpAddr IPAddress Type ipV4"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1788
    const v3, 0x187eb

    goto :goto_1

    .line 1790
    :cond_3
    const-string v2, "onNotifyGlobalIpAddr unknown IPAddress Type (using IPV4)"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1792
    const v3, 0x187eb

    goto :goto_1

    .line 1804
    .restart local v10    # "defaultBearerProperties":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_4
    iget v4, v10, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    .line 1807
    .local v4, "cid":I
    invoke-virtual {v13}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 1808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotifyGlobalIpAddr intfName: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", cid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", byte addr length: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", addr: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1811
    if-nez v6, :cond_5

    .line 1812
    const-string v2, "onNotifyGlobalIpAddr invalid ipAddrByteArray (null)"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1816
    :cond_5
    sget-object v5, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v5

    .line 1817
    :try_start_0
    sget-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotifyGlobalIpAddr invalid CID ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] for network interface"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1819
    const/4 v9, 0x0

    .line 1821
    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->convertImsOrEmergencyNetworkType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v14

    .line 1826
    .local v14, "network":Landroid/net/Network;
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    iget v5, v14, Landroid/net/Network;->netId:I

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->composeGlobalIPAddrVaEvent(III[BLjava/lang/String;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v12

    .line 1828
    .local v12, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    if-eqz v9, :cond_7

    .line 1829
    invoke-direct {p0, v12}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1836
    .end local v12    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v14    # "network":Landroid/net/Network;
    :catch_0
    move-exception v11

    .line 1837
    .local v11, "e":Ljava/lang/NullPointerException;
    const-string v2, "null pointer exception!!"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 1821
    .end local v11    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1833
    .restart local v12    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .restart local v14    # "network":Landroid/net/Network;
    :cond_7
    :try_start_3
    const-string v2, "network interface not ready!!, put to queue"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1834
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private rejectDataBearerDeactivation(III)V
    .locals 3
    .param p1, "transactionId"    # I
    .param p2, "cause"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 1669
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v1, 0x187e5

    invoke-direct {v0, p3, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1671
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectDataBearerDeactivation transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1676
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1677
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1679
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 1680
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1681
    return-void
.end method

.method private rejectDataConnectionDeactivation(III)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "cause"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 1684
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectBearerDeactivation transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1686
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDataBearerDeactivation(III)V

    .line 1690
    :goto_0
    return-void

    .line 1688
    :cond_0
    const-string v0, "rejectDataConnectionDeactivation but transactionId does not existed, ignore"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectDedicateDataConnection(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    .locals 5
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p4, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 1571
    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    .line 1574
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v3, 0x187e1

    invoke-direct {v0, v2, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1580
    .restart local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectDedicateDataConnection type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", param"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", failCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "property"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1587
    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1588
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1589
    if-nez p3, :cond_2

    .line 1590
    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1596
    :goto_1
    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1598
    if-nez p3, :cond_3

    .line 1599
    new-instance v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p4, v2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 1603
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/16 v2, 0xa

    if-ge v1, v2, :cond_5

    .line 1604
    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 1605
    :cond_0
    new-instance v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p4, v2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 1603
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1577
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v3, 0x187e9

    invoke-direct {v0, v2, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .restart local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    goto :goto_0

    .line 1592
    :cond_2
    iget-object v2, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_1

    .line 1601
    :cond_3
    invoke-static {v0, p4, p3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_2

    .line 1607
    .restart local v1    # "i":I
    :cond_4
    iget-object v2, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-static {v0, p4, v2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_4

    .line 1610
    :cond_5
    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 1612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDispatcher send event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1613
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 1617
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v1    # "i":I
    :goto_5
    return-void

    .line 1615
    :cond_6
    const-string v2, "rejectDedicateDataConnection but transactionId does not existed, ignore"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private rejectDedicateDataConnectionActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectDedicateBearerActivation param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1567
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDedicateDataConnection(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    .line 1568
    return-void
.end method

.method private rejectDedicateDataConnectionModification(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectDedicateDataConnectionModification param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1714
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDedicateDataConnection(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    .line 1716
    return-void
.end method

.method private rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V
    .locals 1
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "delayMs"    # I

    .prologue
    .line 596
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-boolean v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    if-eqz v0, :cond_0

    const-string v0, "emergency"

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 605
    invoke-direct {p0, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->delayForSeconds(I)V

    .line 607
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 613
    :goto_1
    return-void

    .line 600
    :cond_0
    const-string v0, "ims"

    goto :goto_0

    .line 611
    :cond_1
    const-string v0, "rejectDefaultBearerDataConnActivation but transactionId does not existed, ignore"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private rejectDefaultBearerDataConnDeactivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)V
    .locals 1
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I

    .prologue
    .line 705
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    const-string v0, "rejectDefaultBearerDataConnDeactivation but transactionId does not existed, ignore"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectPcscfDiscovery(II)V
    .locals 4
    .param p1, "transactionId"    # I
    .param p2, "failCause"    # I

    .prologue
    .line 1741
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1742
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v1

    .line 1743
    .local v1, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v2, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v3, 0x187ef

    invoke-direct {v0, v2, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1745
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectPcscfDiscovery param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", failCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1746
    iget v2, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1747
    const-string v2, "rejectPcscfDiscovery but cid is invalid, ignore"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1763
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v1    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :goto_0
    return-void

    .line 1752
    .restart local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .restart local v1    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1753
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1754
    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1756
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 1758
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 1761
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v1    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_1
    const-string v2, "rejectPcscfDiscovery but transactionId does not existed, ignore"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseNwRequest(Ljava/lang/String;)I
    .locals 7
    .param p1, "requestApnType"    # Ljava/lang/String;

    .prologue
    .line 2518
    const/4 v2, 0x0

    .line 2519
    .local v2, "nRet":I
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    array-length v0, v5

    .line 2520
    .local v0, "endPos":I
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getNetworkRequetsPos(Ljava/lang/String;I)I

    move-result v4

    .line 2522
    .local v4, "pos":I
    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    if-ge v4, v0, :cond_0

    .line 2523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseNwRequest pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestApnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2525
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v5, v5, v4

    iget-object v3, v5, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2527
    .local v3, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    .end local v3    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :goto_0
    return v2

    .line 2528
    .restart local v3    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :catch_0
    move-exception v1

    .line 2529
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v5, "cb already has been released!!"

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2532
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v3    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " skip requestNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2533
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private removeDeactivateCid(Ljava/lang/String;)V
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeDeactivateCid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apnType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    return-void
.end method

.method private removeReceivedAddress(Ljava/lang/String;)V
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2105
    const/4 v1, -0x1

    .line 2106
    .local v1, "startIdx":I
    sget-object v3, Lcom/mediatek/ims/internal/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2107
    const/4 v1, 0x0

    .line 2112
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    .line 2113
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "startIdx":I
    .local v2, "startIdx":I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 2114
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->IP_KEY:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "startIdx":I
    .restart local v1    # "startIdx":I
    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "startIdx":I
    .restart local v2    # "startIdx":I
    goto :goto_1

    .line 2108
    .end local v0    # "i":I
    .end local v2    # "startIdx":I
    .restart local v1    # "startIdx":I
    :cond_1
    sget-object v3, Lcom/mediatek/ims/internal/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2109
    const/4 v1, 0x2

    goto :goto_0

    .end local v1    # "startIdx":I
    .restart local v0    # "i":I
    .restart local v2    # "startIdx":I
    :cond_2
    move v1, v2

    .line 2117
    .end local v0    # "i":I
    .end local v2    # "startIdx":I
    .restart local v1    # "startIdx":I
    :cond_3
    return-void
.end method

.method private requestNwRequest(Ljava/lang/String;I)I
    .locals 11
    .param p1, "requestApnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 2538
    const/4 v1, 0x0

    .line 2539
    .local v1, "nRet":I
    iget-object v7, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    array-length v0, v7

    .line 2540
    .local v0, "endPos":I
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getNetworkRequetsPos(Ljava/lang/String;I)I

    move-result v5

    .line 2541
    .local v5, "pos":I
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 2543
    .local v6, "subId":I
    const/4 v7, -0x1

    if-le v5, v7, :cond_0

    if-ge v5, v0, :cond_0

    .line 2544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestNwRequest pos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requestApnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2546
    iget-object v7, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v7, v7, v5

    iget-object v3, v7, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2547
    .local v3, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v7, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v7, v7, v5

    iget-object v2, v7, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCap:Landroid/net/NetworkCapabilities;

    .line 2549
    .local v2, "netCap":Landroid/net/NetworkCapabilities;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 2551
    iget-object v7, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v7, v7, v5

    new-instance v8, Landroid/net/NetworkRequest;

    sget-object v9, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    aget v9, v9, v5

    invoke-direct {p0, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->getLegacyTypeForNwCap(I)I

    move-result v9

    add-int/lit16 v10, v5, 0x22b

    invoke-direct {v8, v2, v9, v10}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    iput-object v8, v7, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwRequest:Landroid/net/NetworkRequest;

    .line 2555
    iget-object v7, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v7, v7, v5

    iget-object v4, v7, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwRequest:Landroid/net/NetworkRequest;

    .line 2557
    .local v4, "nwRequest":Landroid/net/NetworkRequest;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataNetworkRequests["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2559
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 2560
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v7

    const v8, 0x5b8d80

    invoke-virtual {v7, v4, v3, v8}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 2567
    .end local v2    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v3    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v4    # "nwRequest":Landroid/net/NetworkRequest;
    :goto_0
    return v1

    .line 2563
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknow apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " skip requestNetwork "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 2564
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private responseDataConnectionDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V
    .locals 3
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    .prologue
    .line 1620
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1621
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v2, 0x187e4

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1623
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseDataConnectionDeactivated param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1627
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1628
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1629
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1631
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 1633
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1637
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :goto_0
    return-void

    .line 1635
    :cond_0
    const-string v1, "responseDataConnectionDeactivated but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseDedicateDataConnection(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V
    .locals 5
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p3, "type"    # I

    .prologue
    .line 1476
    iget v3, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1477
    const/4 v1, 0x0

    .line 1478
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 1479
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget v3, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v4, 0x187e0

    invoke-direct {v1, v3, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1485
    .restart local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseDedicateDataConnection type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", param "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1487
    iget-object v3, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1495
    .local v0, "concatenateBearersSize":I
    iget v3, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1496
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1497
    const/4 v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1498
    invoke-static {v1, p3, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 1499
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1500
    const/4 v3, 0x3

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1501
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    .line 1502
    if-ge v2, v0, :cond_1

    .line 1503
    iget-object v3, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-static {v1, p3, v3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 1501
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1482
    .end local v0    # "concatenateBearersSize":I
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget v3, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v4, 0x187e8

    invoke-direct {v1, v3, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .restart local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    goto :goto_0

    .line 1505
    .restart local v0    # "concatenateBearersSize":I
    .restart local v2    # "i":I
    :cond_1
    new-instance v3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    invoke-static {v1, p3, v3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_2

    .line 1509
    :cond_2
    iget v3, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 1511
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1515
    .end local v0    # "concatenateBearersSize":I
    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v2    # "i":I
    :goto_3
    return-void

    .line 1513
    :cond_3
    const-string v3, "responseDedicateDataConnection but transactionId does not existed, ignore"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private responseDedicateDataConnectionActivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Lcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseDedicateDataConnectionActivated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1471
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDedicateDataConnection(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    .line 1472
    return-void
.end method

.method private responseDedicateDataConnectionModified(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Lcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseDedicateDataConnectionModified param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1695
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDedicateDataConnection(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Lcom/mediatek/internal/telephony/DedicateBearerProperties;I)V

    .line 1696
    return-void
.end method

.method private responseDefaultBearerDataConnActivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;Ljava/lang/String;Landroid/net/LinkProperties;)Z
    .locals 22
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1178
    const/4 v5, 0x1

    .line 1179
    .local v5, "bResponse":Z
    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1180
    new-instance v9, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    move/from16 v18, v0

    const v19, 0x187dd

    const v20, 0x9470

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v9, v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(III)V

    .line 1184
    .local v9, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/4 v15, 0x0

    .line 1186
    .local v15, "pdnCnt":I
    const/4 v12, 0x0

    .line 1188
    .local v12, "ipMask":I
    const-string v18, "responseDefaultBearerDataConnActivated "

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1204
    const/16 v17, 0x0

    .line 1205
    .local v17, "pdp_addr_type":I
    if-eqz p3, :cond_3

    .line 1206
    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    .line 1207
    .local v13, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 1208
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet6Address;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1209
    const-string v18, "ipv6 type"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1210
    or-int/lit8 v12, v12, 0x2

    goto :goto_0

    .line 1211
    :cond_0
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1212
    const-string v18, "ipv4 type"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1213
    or-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1215
    :cond_1
    const-string v18, "invalid address type"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1216
    or-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1219
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v13    # "linkAddr":Landroid/net/LinkAddress;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "link prop: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1224
    .end local v11    # "i$":Ljava/util/Iterator;
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 1241
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->getDefaultBearerProperties(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v7

    .line 1242
    .local v7, "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "responseDefaultBearerDataConnActivated: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1243
    new-instance v8, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v8}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    .line 1244
    .local v8, "defaultBearerPropEmpty":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    aput-object v8, v16, v18

    const/16 v18, 0x1

    aput-object v8, v16, v18

    .line 1245
    .local v16, "pdnContextsForVa":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [I

    fill-array-data v14, :array_0

    .line 1246
    .local v14, "msgType":[I
    if-nez v7, :cond_4

    .line 1248
    const/16 v18, 0x0

    aput-object v8, v16, v18

    .line 1249
    const/4 v5, 0x0

    .line 1250
    const-string v18, "error happenening , default breaer should not be null"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1282
    :goto_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_b

    .line 1283
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_9

    .line 1284
    aget v18, v14, v10

    aget-object v19, v16, v10

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeAllBearersProperties(Lcom/mediatek/ims/ImsAdapter$VaEvent;IILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 1283
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1221
    .end local v7    # "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v8    # "defaultBearerPropEmpty":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v10    # "i":I
    .end local v14    # "msgType":[I
    .end local v16    # "pdnContextsForVa":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_3
    const-string v18, "Error: get null link properties"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1226
    :pswitch_0
    const/16 v17, 0x8d

    .line 1227
    goto :goto_2

    .line 1229
    :pswitch_1
    const/16 v17, 0x57

    .line 1230
    goto :goto_2

    .line 1232
    :pswitch_2
    const/16 v17, 0x21

    goto :goto_2

    .line 1251
    .restart local v7    # "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .restart local v8    # "defaultBearerPropEmpty":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .restart local v14    # "msgType":[I
    .restart local v16    # "pdnContextsForVa":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_4
    if-nez v17, :cond_5

    .line 1252
    const/4 v5, 0x0

    .line 1253
    const-string v18, "error link prop, addr type shouldn\'t be PDP_ADDR_MASK_NONE"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1256
    :cond_5
    iget v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1257
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "invalid defaultBearerProp, interface id("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), cid("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1260
    const/4 v5, 0x0

    .line 1263
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 1264
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    iget-object v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_8

    .line 1265
    iget-object v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 1266
    .local v6, "bearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    iget v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    move/from16 v18, v0

    iget v0, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1264
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1269
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1273
    .end local v6    # "bearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_8
    invoke-virtual {v9, v15}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1274
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1275
    invoke-static {v9}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->dumpPdnAckRsp(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1278
    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v19, v14, v18

    .line 1279
    const/16 v18, 0x0

    aput-object v7, v16, v18

    goto/16 :goto_3

    .line 1287
    :cond_9
    sget-object v19, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v19

    .line 1288
    :try_start_0
    sget-object v18, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    iget v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Update IMS network interface name: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v20, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1290
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 1294
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1300
    .end local v10    # "i":I
    :goto_7
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1301
    if-eqz v5, :cond_c

    .line 1302
    iget v0, v7, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->setEmergencyCid(I)V

    .line 1311
    .end local v7    # "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v8    # "defaultBearerPropEmpty":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v9    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v12    # "ipMask":I
    .end local v14    # "msgType":[I
    .end local v15    # "pdnCnt":I
    .end local v16    # "pdnContextsForVa":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v17    # "pdp_addr_type":I
    :cond_a
    :goto_8
    return v5

    .line 1290
    .restart local v7    # "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .restart local v8    # "defaultBearerPropEmpty":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .restart local v9    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .restart local v10    # "i":I
    .restart local v12    # "ipMask":I
    .restart local v14    # "msgType":[I
    .restart local v15    # "pdnCnt":I
    .restart local v16    # "pdnContextsForVa":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .restart local v17    # "pdp_addr_type":I
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1297
    .end local v10    # "i":I
    :cond_b
    const/high16 v18, 0x10000

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    goto :goto_7

    .line 1304
    :cond_c
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->setEmergencyCid(I)V

    goto :goto_8

    .line 1308
    .end local v7    # "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v8    # "defaultBearerPropEmpty":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v9    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v12    # "ipMask":I
    .end local v14    # "msgType":[I
    .end local v15    # "pdnCnt":I
    .end local v16    # "pdnContextsForVa":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .end local v17    # "pdp_addr_type":I
    :cond_d
    const-string v18, "responseDefaultBearerDataConnActivated but transactionId does not existed, ignore"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1309
    const/4 v5, 0x0

    goto :goto_8

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1245
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V
    .locals 3
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    .prologue
    .line 1315
    const-string v0, "responseDefaultBearerDataConnDeactivated"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1316
    iget-boolean v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    if-eqz v0, :cond_0

    const-string v0, "emergency"

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 1318
    sget-object v1, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v1

    .line 1319
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDataConnectionDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 1322
    return-void

    .line 1316
    :cond_0
    const-string v0, "ims"

    goto :goto_0

    .line 1320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private responsePcscfDiscovery(ILcom/mediatek/internal/telephony/PcscfInfo;)V
    .locals 4
    .param p1, "transactionId"    # I
    .param p2, "pcscfInfo"    # Lcom/mediatek/internal/telephony/PcscfInfo;

    .prologue
    .line 1719
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1720
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v1

    .line 1721
    .local v1, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v2, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    const v3, 0x187ee

    invoke-direct {v0, v2, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1723
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responsePcscfDiscovery param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Pcscf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1729
    iget v2, p2, Lcom/mediatek/internal/telephony/PcscfInfo;->source:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1730
    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1731
    invoke-static {v0, p2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writePcscf(Lcom/mediatek/ims/ImsAdapter$VaEvent;Lcom/mediatek/internal/telephony/PcscfInfo;)V

    .line 1733
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 1734
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1738
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v1    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :goto_0
    return-void

    .line 1736
    :cond_0
    const-string v2, "responsePcscfDiscovery but transactionId does not existed, ignore"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendGlobalIPAddrToVa(Ljava/net/InetAddress;Ljava/lang/String;Landroid/net/LinkProperties;I)V
    .locals 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "phoneId"    # I

    .prologue
    .line 2850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2851
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lte_global_ip_addr"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2852
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2853
    const-string v1, "iface"

    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2854
    const-string v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2856
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2857
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIpV6Thread:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2858
    return-void
.end method

.method private sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 542
    return-void
.end method

.method private setDeactivateCid([ILjava/lang/String;)V
    .locals 3
    .param p1, "cidArray"    # [I
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeactivateCid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2200
    if-eqz p1, :cond_0

    .line 2201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2202
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2205
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeactivateCid, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDeactivateCid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2206
    return-void
.end method

.method private setEmergencyCid(I)V
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 545
    iput p1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmergencyCid:I

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mEmergencyCid to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmergencyCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method private stopPcscfDiscoveryDhcpThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2779
    monitor-enter p0

    .line 2780
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPcscfDiscoveryDhcpThread:Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;

    if-eqz v0, :cond_0

    .line 2781
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2782
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPcscfDiscoveryDhcpThread:Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;->interrupt()V

    .line 2783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPcscfDiscoveryDhcpThread:Lcom/mediatek/ims/internal/DataDispatcher$PcscfDiscoveryDhcpThread;

    .line 2785
    :cond_0
    monitor-exit p0

    .line 2786
    return-void

    .line 2785
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopQueryGlobalIpV6Thread(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2790
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIpV6Thread:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/DataDispatcher$GlobalIpV6AddrQueryThread;->interrupt()V

    .line 2791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous apnType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getGlobalIpV6Addr thread running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stop first!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 2793
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIpV6Thread:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2797
    :goto_0
    return-void

    .line 2794
    :catch_0
    move-exception v0

    .line 2795
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no query global Ipv6 thread is running for apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abortEnableDedicateBearer(Ljava/lang/String;II)I
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "ddcid"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 2286
    const/4 v1, -0x1

    .line 2288
    .local v1, "nddcid":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->abortEnableDedicateBearer(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2294
    :goto_0
    return v1

    .line 2289
    :catch_0
    move-exception v0

    .line 2290
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2291
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2292
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public disableDedicateBearer(Ljava/lang/String;II)I
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "ddcid"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 2241
    const/4 v1, -0x1

    .line 2243
    .local v1, "nddcid":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->disableDedicateBearer(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2249
    :goto_0
    return v1

    .line 2244
    :catch_0
    move-exception v0

    .line 2245
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2246
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2247
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public disableRequest()V
    .locals 5

    .prologue
    .line 491
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    monitor-enter v3

    .line 492
    :try_start_0
    const-string v2, "receive disableRequest"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 493
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    .line 495
    iget-boolean v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 497
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    .line 500
    :cond_0
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :try_start_1
    const-string v2, "disableRequest to clear interface and cid map"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 502
    sget-object v2, Lcom/mediatek/ims/internal/DataDispatcher;->sImsNetworkInterface:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 503
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 505
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :try_start_3
    const-string v2, "disableRequest to clear transactions"

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 508
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 510
    :try_start_4
    const-string v2, "disableRequest to interrupt dhcp thread"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->stopPcscfDiscoveryDhcpThread(Ljava/lang/String;)V

    .line 513
    const-string v2, "ims"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 514
    const-string v2, "emergency"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->clearDeactivateCid()V

    .line 518
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->setEmergencyCid(I)V

    .line 520
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIpV6Thread:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    .local v0, "apnType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->stopQueryGlobalIpV6Thread(Ljava/lang/String;)V

    goto :goto_0

    .line 525
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 503
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 508
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2

    .line 523
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAddressStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 524
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mGlobalIPQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 525
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 526
    return-void
.end method

.method protected dumpTransactions()V
    .locals 4

    .prologue
    .line 1889
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1890
    const-string v2, "====Start dump [transactions]===="

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1891
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    .line 1892
    .local v1, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump transactions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1893
    .end local v1    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_0
    const-string v2, "====End dump [transactions]===="

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1897
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 1895
    :cond_1
    const-string v2, "====dump [transactions] but empty===="

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "signalingFlag"    # Z
    .param p3, "qosStatus"    # Lcom/mediatek/internal/telephony/QosStatus;
    .param p4, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;
    .param p5, "phoneId"    # I

    .prologue
    .line 2265
    const/4 v6, -0x1

    .line 2267
    .local v6, "ddcid":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ITelephonyEx;->enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 2274
    :goto_0
    return v6

    .line 2269
    :catch_0
    move-exception v7

    .line 2270
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2271
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 2272
    .local v7, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableRequest()V
    .locals 4

    .prologue
    .line 471
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 472
    :try_start_0
    const-string v1, "receive enableRequest"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 473
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    .line 475
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 476
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DEDICATE_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v1, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v1, "android.intent.action.NOTIFY_USE_DHCP_IP_ADDR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v1, "android.intent.action.NOTIFY_IMS_DEACTIVATED_CIDS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "android.intent.action.NOTIFY_IMS_DEFAULT_PDN_MODIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    .line 487
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit v2

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeactivateCidArray(Ljava/lang/String;I)[I
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 2394
    const/4 v0, 0x0

    .line 2396
    .local v0, "cidArray":[I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getDeactivateCidArray(Ljava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2402
    :goto_0
    return-object v0

    .line 2397
    :catch_0
    move-exception v1

    .line 2398
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2399
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2400
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultBearerProperties(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 2353
    const/4 v0, 0x0

    .line 2355
    .local v0, "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getDefaultBearerProperties(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2361
    :goto_0
    return-object v0

    .line 2356
    :catch_0
    move-exception v1

    .line 2357
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2358
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2359
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;I)I
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 2375
    const/4 v1, 0x0

    .line 2377
    .local v1, "nErrCode":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getLastDataConnectionFailCause(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2383
    :goto_0
    return v1

    .line 2378
    :catch_0
    move-exception v0

    .line 2379
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2380
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2381
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;I)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 2413
    const/4 v1, 0x0

    .line 2415
    .local v1, "lp":Landroid/net/LinkProperties;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getLinkProperties(Ljava/lang/String;I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2421
    :goto_0
    return-object v1

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2418
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2419
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .locals 3
    .param p1, "transactionId"    # I

    .prologue
    .line 1869
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1870
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    monitor-exit v1

    return-object v0

    .line 1871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getTransactionKeyArray()[Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 1875
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v4

    .line 1876
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1877
    .local v0, "array":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1878
    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Integer;

    monitor-exit v4

    .line 1883
    :goto_0
    return-object v2

    .line 1880
    :cond_0
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/Integer;

    .line 1881
    .local v2, "intArray":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1882
    aget-object v3, v0, v1

    check-cast v3, Ljava/lang/Integer;

    aput-object v3, v2, v1

    .line 1881
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1883
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 1885
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "intArray":[Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected hasTransaction(I)Z
    .locals 3
    .param p1, "transactionId"    # I

    .prologue
    .line 1849
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1850
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDedicateBearer(II)Z
    .locals 3
    .param p1, "cid"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 2221
    const/4 v0, 0x0

    .line 2223
    .local v0, "bRet":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isDedicateBearer(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2229
    :goto_0
    return v0

    .line 2224
    :catch_0
    move-exception v1

    .line 2225
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2226
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2227
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I
    .locals 3
    .param p1, "cid"    # I
    .param p2, "qosStatus"    # Lcom/mediatek/internal/telephony/QosStatus;
    .param p3, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;
    .param p4, "phoneId"    # I

    .prologue
    .line 2310
    const/4 v1, -0x1

    .line 2312
    .local v1, "nddcid":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ITelephonyEx;->modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2318
    :goto_0
    return v1

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2315
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2316
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public pcscfDiscovery(Ljava/lang/String;IILandroid/os/Message;)I
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "phoneId"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2434
    const/4 v1, -0x1

    .line 2436
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ITelephonyEx;->pcscfDiscovery(Ljava/lang/String;IILandroid/os/Message;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2442
    :goto_0
    return v1

    .line 2437
    :catch_0
    move-exception v0

    .line 2438
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2439
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2440
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V
    .locals 3
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    .prologue
    .line 1855
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1856
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->dumpTransactions()V

    .line 1858
    monitor-exit v1

    .line 1859
    return-void

    .line 1858
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected removeTransaction(I)V
    .locals 3
    .param p1, "transactionId"    # I

    .prologue
    .line 1862
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1863
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->dumpTransactions()V

    .line 1865
    monitor-exit v1

    .line 1866
    return-void

    .line 1865
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;I)I
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "defaultBearerConfig"    # Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .param p3, "phoneId"    # I

    .prologue
    .line 2332
    const/4 v1, -0x1

    .line 2334
    .local v1, "ret":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2340
    :goto_0
    return v1

    .line 2335
    :catch_0
    move-exception v0

    .line 2336
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2337
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2338
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSocket(Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "socket"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 537
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    return-void
.end method
