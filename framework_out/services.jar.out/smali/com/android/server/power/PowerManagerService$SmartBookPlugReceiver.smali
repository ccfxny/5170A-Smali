.class final Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartBookPlugReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3439
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3439
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3442
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3443
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/power/PowerManagerService;->mSmartBookPlugState:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3448
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSmartBookPlugState:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3449
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSmartBookRDMALimited:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3450
    const-string v1, "persist.smb.phone.both.on"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3471
    :goto_0
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V

    .line 3478
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setSmartBookScreenInternal(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3479
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x4000

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1176(Lcom/android/server/power/PowerManagerService;I)I

    .line 3481
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 3482
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)V

    .line 3483
    monitor-exit v7

    .line 3484
    return-void

    .line 3455
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 3456
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_3

    .line 3457
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3458
    const-string v1, "PowerManagerService"

    const-string v2, "SmartBookPlugReceiver: InCalling, no need to invoke smartbook sleep mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3483
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3460
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_0

    .line 3463
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_0

    .line 3467
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_0

    .line 3473
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIPOShutdown:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3474
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mSmartBookWakeUpPendingByIPO:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1202(Lcom/android/server/power/PowerManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
