.class Lcom/android/server/sip/SipService$SipAutoReg;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipAutoReg"
.end annotation


# static fields
.field private static final MIN_KEEPALIVE_SUCCESS_COUNT:I = 0xa

.field private static final SAR_DBG:Z = true


# instance fields
.field private SAR_TAG:Ljava/lang/String;

.field private mBackoff:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:J

.field private mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private mKeepAliveSuccessCount:I

.field private mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private mRegistered:Z

.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 790
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 798
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 799
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 804
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 806
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/sip/SipService;
    .param p2, "x1"    # Lcom/android/server/sip/SipService$1;

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method private backoffDuration()I
    .locals 2

    .prologue
    .line 1000
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    mul-int/lit8 v0, v1, 0xa

    .line 1001
    .local v0, "duration":I
    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    .line 1002
    const/16 v0, 0xe10

    .line 1006
    :goto_0
    return v0

    .line 1004
    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    return-void
.end method

.method private notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .locals 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    const/4 v1, 0x1

    .line 1021
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eq p1, v0, :cond_0

    move-object v0, p1

    .line 1022
    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1026
    :goto_0
    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private restart(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restart: duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s later."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 996
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 997
    return-void
.end method

.method private restartLater()V
    .locals 1

    .prologue
    .line 1105
    const-string v0, "restartLater"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1107
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    .line 1108
    return-void
.end method

.method private startKeepAliveProcess(I)V
    .locals 3
    .param p1, "interval"    # I

    .prologue
    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startKeepAliveProcess: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 835
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_1
    return-void

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljavax/sip/SipException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startKeepAliveProcess: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private stopKeepAliveProcess()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 846
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 847
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    return v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    .line 902
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->onResponse(Z)V

    .line 903
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .locals 3

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # invokes: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 925
    .local v0, "newInterval":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeepAliveIntervalChanged: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 927
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 928
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    .line 930
    .end local v0    # "newInterval":I
    :cond_0
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1013
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1018
    :goto_0
    return-void

    .line 1015
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1016
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1017
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 8
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .prologue
    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 1033
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 1064
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1037
    if-lez p2, :cond_4

    .line 1038
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 1041
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-nez v1, :cond_3

    .line 1042
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1044
    add-int/lit8 p2, p2, -0x3c

    .line 1045
    const/16 v1, 0x3c

    if-ge p2, v1, :cond_1

    .line 1046
    const/16 p2, 0x3c

    .line 1048
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    .line 1050
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 1051
    .local v0, "localProfile":Landroid/net/sip/SipProfile;
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$1500(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1600(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1053
    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # invokes: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    .line 1056
    .end local v0    # "localProfile":Landroid/net/sip/SipProfile;
    :cond_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1063
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1058
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1059
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 1060
    const-string v1, "Refresh registration immediately"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1072
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1089
    :goto_0
    return-void

    .line 1074
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1081
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    .line 1084
    :goto_1
    iput p2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 1085
    iput-object p3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1088
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1077
    :sswitch_0
    :try_start_1
    const-string v0, "   pause auto-registration"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1074
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1095
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1102
    :goto_0
    return-void

    .line 1097
    :cond_0
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 1098
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 1099
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    .line 1100
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1101
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResponse(Z)V
    .locals 5
    .param p1, "portChanged"    # Z

    .prologue
    const/16 v4, 0xa

    .line 852
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 853
    if-eqz p1, :cond_3

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # invokes: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 855
    .local v0, "interval":I
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    if-ge v1, v4, :cond_2

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse: keepalive doesn\'t work with interval "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", past success count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 861
    if-le v0, v4, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    # invokes: Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    invoke-static {v1, v3, v0}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V

    .line 864
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 882
    .end local v0    # "interval":I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_4

    :cond_1
    monitor-exit v2

    .line 894
    :goto_1
    return-void

    .line 868
    .restart local v0    # "interval":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep keepalive going with interval "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", past success count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 872
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    goto :goto_0

    .line 893
    .end local v0    # "interval":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 877
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    # invokes: Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V

    .line 879
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    goto :goto_0

    .line 887
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 891
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 892
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v3, 0xe10

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 893
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 980
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 981
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 991
    :goto_0
    return-void

    .line 983
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    .line 985
    const-string v0, "run: registering"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mNetworkType:I
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 990
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 10
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .prologue
    .line 933
    iget-object v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v4

    .line 934
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 940
    .local v1, "state":I
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 942
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 970
    .end local v1    # "state":I
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 971
    return-void

    .line 937
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v1

    goto :goto_0

    .line 943
    .restart local v1    # "state":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-eqz v3, :cond_3

    .line 944
    iget-wide v6, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v0, v6

    .line 946
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 967
    .end local v0    # "duration":I
    .end local v1    # "state":I
    :catch_0
    move-exception v2

    .line 968
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v3, "setListener: "

    invoke-direct {p0, v3, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 970
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 947
    .restart local v1    # "state":I
    :cond_3
    :try_start_5
    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    if-eqz v3, :cond_5

    .line 948
    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v3, v5, :cond_4

    .line 949
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_1

    .line 951
    :cond_4
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v6, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    iget-object v7, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 954
    :cond_5
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mNetworkType:I
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    .line 955
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0xa

    const-string v7, "no data connection"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 958
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v3, :cond_7

    .line 959
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v6, -0x4

    const-string v7, "registration not running"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 963
    :cond_7
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public start(Lcom/android/server/sip/SipSessionGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/sip/SipSessionGroup;

    .prologue
    const/4 v1, 0x1

    .line 809
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_0

    .line 810
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 811
    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 812
    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 815
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 821
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipAutoReg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 906
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 907
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 908
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 911
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mNetworkType:I
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    # getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 915
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stopKeepAliveProcess()V

    .line 917
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 918
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_0
.end method
