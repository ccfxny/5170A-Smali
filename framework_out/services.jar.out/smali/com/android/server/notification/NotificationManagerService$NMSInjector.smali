.class Lcom/android/server/notification/NotificationManagerService$NMSInjector;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NMSInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static NotiWakeupScreen(Lcom/android/server/notification/NotificationRecord;Landroid/content/Context;ZZLcom/android/server/notification/NotificationManagerService;)V
    .locals 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isScreenOn"    # Z
    .param p3, "isInCall"    # Z
    .param p4, "nms"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3731
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NMSInjector;->shouldNotificationWakeupScreen(Lcom/android/server/notification/NotificationRecord;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3733
    if-nez p2, :cond_3

    .line 3734
    if-eqz p3, :cond_1

    .line 3736
    const-string v0, "NotiWakeupScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalApp request to wakeup screen! But in call, ignore... noti.pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_0
    :goto_0
    return-void

    .line 3738
    :cond_1
    const-string v0, "NotiWakeupScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsLidOpened ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsLidOpened:Z
    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsLidOpened:Z
    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3741
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/notification/NotificationManagerService;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3744
    :cond_2
    const-string v0, "NotiWakeupScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalApp request to wakeup screen! -- noti.pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    const-string v0, "NotiWakeupScreen"

    const-string v1, "enableProximityLockLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    # invokes: Lcom/android/server/notification/NotificationManagerService;->enableProximityLockLocked()V
    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 3752
    :cond_3
    const-string v0, "NotiWakeupScreen"

    const-string v1, "Screen already on..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static shouldNotificationWakeupScreen(Lcom/android/server/notification/NotificationRecord;Landroid/content/Context;)Z
    .locals 7
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3763
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 3764
    .local v0, "isLockScreenShowNotification":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_wakeup_screen"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 3777
    .local v1, "isNotificationWakeupScreen":Z
    :goto_1
    const-string v4, "NotiWakeupScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLockScreenShowNotification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    const-string v4, "NotiWakeupScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNotificationWakeupScreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 3782
    :goto_2
    return v2

    .end local v0    # "isLockScreenShowNotification":Z
    .end local v1    # "isNotificationWakeupScreen":Z
    :cond_0
    move v0, v3

    .line 3763
    goto :goto_0

    .restart local v0    # "isLockScreenShowNotification":Z
    :cond_1
    move v1, v3

    .line 3764
    goto :goto_1

    .restart local v1    # "isNotificationWakeupScreen":Z
    :cond_2
    move v2, v3

    .line 3782
    goto :goto_2
.end method
