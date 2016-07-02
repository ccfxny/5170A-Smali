.class public Lcom/mediatek/telephony/ExternalSimManager;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;,
        Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;,
        Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;,
        Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;,
        Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;,
        Lcom/mediatek/telephony/ExternalSimManager$ServerTask;
    }
.end annotation


# static fields
.field private static final NO_RESPONSE_STATUS_WORD_BYTE1:B = 0x0t

.field private static final NO_RESPONSE_STATUS_WORD_BYTE2:B = 0x0t

.field private static final NO_RESPONSE_TIMEOUT_DURATION:I = 0x2710

.field static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "ExternalSimManager"

.field private static sInstance:Lcom/mediatek/telephony/ExternalSimManager;


# instance fields
.field private isMdWaitingResponse:Z

.field private mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

.field private mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.fulluicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.fulluicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 112
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    .line 165
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/ExternalSimManager$2;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    const-string v0, "ExternalSimManager"

    const-string v1, "construtor 0 parameter is called - done"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 112
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    .line 165
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/ExternalSimManager$2;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    const-string v1, "ExternalSimManager"

    const-string v2, "construtor 1 parameter is called - start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 132
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/ExternalSimManager$1;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    invoke-virtual {v1}, Lcom/mediatek/telephony/ExternalSimManager$1;->start()V

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const-string v1, "ExternalSimManager"

    const-string v2, "construtor is called - end"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/telephony/ExternalSimManager;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager;
    .param p1, "x1"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager;->mRilIoThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/telephony/ExternalSimManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/telephony/ExternalSimManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z

    return p1
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/mediatek/telephony/ExternalSimManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const-string v0, "ExternalSimManager"

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/ExternalSimManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    .line 155
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/ExternalSimManager;

    return-object v0
.end method

.method private static getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 159
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finalizeService([B)Z
    .locals 2
    .param p1, "userData"    # [B

    .prologue
    .line 189
    const-string v0, "ExternalSimManager"

    const-string v1, "finalizeService() - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v0, "ExternalSimManager"

    const-string v1, "finalizeService() - end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public initializeService([B)Z
    .locals 2
    .param p1, "userData"    # [B

    .prologue
    .line 182
    const-string v0, "ExternalSimManager"

    const-string v1, "initializeService() - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "ExternalSimManager"

    const-string v1, "initialize() - end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x1

    return v0
.end method
