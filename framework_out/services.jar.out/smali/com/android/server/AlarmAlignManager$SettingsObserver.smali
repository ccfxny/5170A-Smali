.class final Lcom/android/server/AlarmAlignManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AlarmAlignManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmAlignManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmAlignManager;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmAlignManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/AlarmAlignManager$SettingsObserver;->this$0:Lcom/android/server/AlarmAlignManager;

    .line 381
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 382
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 386
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager$SettingsObserver;->this$0:Lcom/android/server/AlarmAlignManager;

    # getter for: Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AlarmAlignManager;->access$300(Lcom/android/server/AlarmAlignManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "mz_enable_alarm_align"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager$SettingsObserver;->this$0:Lcom/android/server/AlarmAlignManager;

    # setter for: Lcom/android/server/AlarmAlignManager;->mEnableAlarmAlign:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmAlignManager;->access$602(Lcom/android/server/AlarmAlignManager;Z)Z

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmAlignManager$SettingsObserver;->this$0:Lcom/android/server/AlarmAlignManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/AlarmAlignManager;->mEnableAlarmAlign:Z
    invoke-static {v1, v2}, Lcom/android/server/AlarmAlignManager;->access$602(Lcom/android/server/AlarmAlignManager;Z)Z

    goto :goto_0
.end method
