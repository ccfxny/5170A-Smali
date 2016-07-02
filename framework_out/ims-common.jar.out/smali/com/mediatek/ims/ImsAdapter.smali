.class public Lcom/mediatek/ims/ImsAdapter;
.super Landroid/content/BroadcastReceiver;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsAdapter$1;,
        Lcom/mediatek/ims/ImsAdapter$Util;,
        Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;,
        Lcom/mediatek/ims/ImsAdapter$VaSocketIO;,
        Lcom/mediatek/ims/ImsAdapter$VaEvent;
    }
.end annotation


# static fields
.field private static final SOCKET_NAME1:Ljava/lang/String; = "volte_imsa1"

.field private static final SOCKET_NAME2:Ljava/lang/String; = "volte_imsa2"

.field private static final TAG:Ljava/lang/String; = "ImsAdapter"

.field private static mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

.field private static mImsServiceUp:Z

.field private static mInstance:Lcom/mediatek/ims/ImsAdapter;

.field private static misImsAdapterEnabled:Z

.field private static misImsAdapterInit:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 488
    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 489
    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterInit:Z

    .line 490
    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 536
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mHandler:Landroid/os/Handler;

    .line 494
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    .line 496
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    if-nez v1, :cond_0

    .line 497
    sput-object p0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    .line 500
    :cond_0
    const-string v1, "ImsAdapter"

    const-string v2, "ImsAdapter(): ImsAdapter Enter"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    const-string v2, "volte_imsa1"

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;-><init>(Lcom/mediatek/ims/ImsAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 503
    new-instance v1, Lcom/mediatek/ims/ImsEventDispatcher;

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ims/ImsEventDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    sput-object v1, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 506
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLEAR_DATA_BEARER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 510
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->start()V

    .line 511
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    return p0
.end method

.method static synthetic access$100()Lcom/mediatek/ims/ImsEventDispatcher;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsAdapter;)Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsAdapter;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsAdapter;)Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterInit:Z

    return p0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsAdapter;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->stopVaProcess()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsAdapter;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter2ndStage()V

    return-void
.end method

.method private enableImsAdapter2ndStage()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 564
    const-string v0, "ImsAdapter"

    const-string v1, "enableImsAdapter2ndStage()Enter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v0, "ril.volte.stack"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "ril.volte.ua"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "ril.volte.imcb"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "ImsAdapter"

    const-string v1, "enableImsAdapter2ndStage(): Va process started!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 573
    iput-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    .line 576
    :cond_0
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;-><init>(Lcom/mediatek/ims/ImsAdapter;Lcom/mediatek/ims/ImsAdapter$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    .line 577
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 578
    return-void
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 661
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/ims/ImsAdapter;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    return-object v0
.end method

.method private stopVaProcess()V
    .locals 2

    .prologue
    .line 600
    const-string v0, "ImsAdapter"

    const-string v1, "stopVaProcess"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v0, "ril.volte.stack"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "ril.volte.ua"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "ril.volte.imcb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method


# virtual methods
.method public ImsServiceUp()V
    .locals 2

    .prologue
    .line 627
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    .line 628
    const-string v0, "ImsAdapter"

    const-string v1, "ImsServiceUp, start to ACTION_IMS_SERVICE_UP intent"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void
.end method

.method public disableImsAdapter(Z)V
    .locals 3
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 582
    const-string v0, "ImsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableImsAdapter(): misImsAdapterEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isNormalDisable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    if-eqz v0, :cond_1

    .line 585
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 587
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mEnableImsRunnable:Lcom/mediatek/ims/ImsAdapter$EnableImsRunnable;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 593
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEventDispatcher;->disableRequest()V

    .line 595
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->stopVaProcess()V

    .line 597
    :cond_1
    return-void
.end method

.method public enableImsAdapter()V
    .locals 4

    .prologue
    .line 518
    const-string v1, "ImsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableImsAdapter: misImsAdapterEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-boolean v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterInit:Z

    if-nez v1, :cond_0

    .line 521
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterInit:Z

    .line 523
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 526
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->stopVaProcess()V

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DATA_BEARER_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getImsAdapterEnable()Z
    .locals 1

    .prologue
    .line 533
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    return v0
.end method

.method public getImsServiceUp()Z
    .locals 1

    .prologue
    .line 636
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 618
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ImsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, intent action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v1, "android.intent.action.CLEAR_DATA_BEARER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter2ndStage()V

    .line 624
    :cond_0
    return-void
.end method

.method public sendTestEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 613
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsEventDispatcher;->dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 614
    return-void
.end method
