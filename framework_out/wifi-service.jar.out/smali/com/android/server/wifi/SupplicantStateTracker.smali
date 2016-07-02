.class Lcom/android/server/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStateTracker$1;,
        Lcom/android/server/wifi/SupplicantStateTracker$DormantState;,
        Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;,
        Lcom/android/server/wifi/SupplicantStateTracker$ScanState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;,
        Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static final CMD_CONNECT_NETWORK_TIMEOUT:I = 0x64

.field private static final CONNECT_NETWORK_TIMEOUT:I = 0x2710

.field private static DBG:Z = false

.field private static final MAX_RETRIES_ON_ASSOCIATION_REJECT:I = 0x10

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"

.field private static mNetworkId:I


# instance fields
.field private mAssociationRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthFailureSendWifiSettings:Z

.field private mAuthenticationFailuresCount:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCompletedState:Lcom/android/internal/util/State;

.field private mConnectNetworkId:I

.field private final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisconnectState:Lcom/android/internal/util/State;

.field private final mDormantState:Lcom/android/internal/util/State;

.field private final mHandshakeState:Lcom/android/internal/util/State;

.field private final mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private final mScanState:Lcom/android/internal/util/State;

.field private final mUninitializedState:Lcom/android/internal/util/State;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    .line 88
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wcs"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "t"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 61
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 62
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    .line 66
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureSendWifiSettings:Z

    .line 93
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    .line 94
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 95
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    .line 96
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    .line 97
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    .line 98
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    .line 99
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    .line 100
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectNetworkId:I

    .line 120
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 122
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 123
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 134
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogRecSize(I)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogOnlyTransitions(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->start()V

    .line 138
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectNetworkId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectNetworkId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return p1
.end method

.method static synthetic access$1108(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/SupplicantStateTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureSendWifiSettings:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkId:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 53
    sput p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/server/wifi/StateChangeResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkConnectionFailure netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworksDisabledDuringConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyConnectionFailure()V

    .line 157
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 6
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z

    .prologue
    const/4 v5, 0x1

    .line 203
    sget-object v2, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 220
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown supplicant state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x0

    .line 225
    .local v1, "supplState":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiSupplicantStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    const-string v2, "newState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    if-eqz p2, :cond_0

    .line 234
    const-string v2, "supplicantError"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureSendWifiSettings:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    if-lt v2, v5, :cond_0

    .line 239
    const-string v2, "extra_authentication_failure_network_id"

    sget v3, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const/4 v2, -0x1

    sput v2, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkId:I

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 244
    return-void

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "supplState":I
    :pswitch_0
    const/4 v1, 0x1

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 206
    .end local v1    # "supplState":I
    :pswitch_1
    const/4 v1, 0x2

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 207
    .end local v1    # "supplState":I
    :pswitch_2
    const/4 v1, 0x3

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 208
    .end local v1    # "supplState":I
    :pswitch_3
    const/4 v1, 0x4

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 209
    .end local v1    # "supplState":I
    :pswitch_4
    const/4 v1, 0x5

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 210
    .end local v1    # "supplState":I
    :pswitch_5
    const/4 v1, 0x6

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 211
    .end local v1    # "supplState":I
    :pswitch_6
    const/4 v1, 0x7

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 213
    .end local v1    # "supplState":I
    :pswitch_7
    const/16 v1, 0x8

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 214
    .end local v1    # "supplState":I
    :pswitch_8
    const/16 v1, 0x9

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 215
    .end local v1    # "supplState":I
    :pswitch_9
    const/16 v1, 0xa

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 216
    .end local v1    # "supplState":I
    :pswitch_a
    const/16 v1, 0xb

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 217
    .end local v1    # "supplState":I
    :pswitch_b
    const/16 v1, 0xc

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 218
    .end local v1    # "supplState":I
    :pswitch_c
    const/4 v1, 0x0

    .restart local v1    # "supplState":I
    goto :goto_0

    .line 226
    :catch_0
    move-exception v2

    goto :goto_1

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    .locals 4
    .param p1, "stateChangeResult"    # Lcom/android/server/wifi/StateChangeResult;

    .prologue
    .line 160
    iget-object v0, p1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 162
    .local v0, "supState":Landroid/net/wifi/SupplicantState;
    sget-boolean v1, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    sget-object v1, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 196
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 179
    :pswitch_3
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->removeMessages(I)V

    .line 180
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 186
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 189
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 193
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 479
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthenticationFailuresCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthFailureInSupplicantBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworksDisabledDuringConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthFailureSendWifiSettings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureSendWifiSettings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 485
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 103
    if-lez p1, :cond_0

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    goto :goto_0
.end method

.method public getSupplicantStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isNetworksDisabledDuringConnect()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method
