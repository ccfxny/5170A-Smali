.class Lcom/android/server/AlarmAlignManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlignManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmAlignManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmAlignManager;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmAlignManager;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 356
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "strAction":Ljava/lang/String;
    const-string v2, "AlarmAlignManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I got broadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/AlarmAlignManager;->mScreenOffTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmAlignManager;->access$002(Lcom/android/server/AlarmAlignManager;J)J

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/AlarmAlignManager;->mScreenOffTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmAlignManager;->access$002(Lcom/android/server/AlarmAlignManager;J)J

    goto :goto_0

    .line 364
    :cond_2
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/AlarmAlignManager;->mIsCharging:I
    invoke-static {v2, v3}, Lcom/android/server/AlarmAlignManager;->access$102(Lcom/android/server/AlarmAlignManager;I)I

    goto :goto_0

    .line 367
    :cond_3
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    iget-object v3, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    # getter for: Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/AlarmAlignManager;->access$300(Lcom/android/server/AlarmAlignManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    # setter for: Lcom/android/server/AlarmAlignManager;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2, v3}, Lcom/android/server/AlarmAlignManager;->access$202(Lcom/android/server/AlarmAlignManager;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    .line 370
    iget-object v2, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    iget-object v3, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    # getter for: Lcom/android/server/AlarmAlignManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/AlarmAlignManager;->access$300(Lcom/android/server/AlarmAlignManager;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/AlarmAlignManager;->initPkgAlignPermissionMap(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/AlarmAlignManager;->access$400(Lcom/android/server/AlarmAlignManager;Landroid/content/Context;)V

    .line 371
    iget-object v2, p0, Lcom/android/server/AlarmAlignManager$1;->this$0:Lcom/android/server/AlarmAlignManager;

    # invokes: Lcom/android/server/AlarmAlignManager;->initData()V
    invoke-static {v2}, Lcom/android/server/AlarmAlignManager;->access$500(Lcom/android/server/AlarmAlignManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
