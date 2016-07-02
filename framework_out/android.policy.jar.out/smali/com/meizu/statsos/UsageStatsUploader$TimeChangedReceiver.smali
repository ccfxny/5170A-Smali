.class Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsos/UsageStatsUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsos/UsageStatsUploader;


# direct methods
.method private constructor <init>(Lcom/meizu/statsos/UsageStatsUploader;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsos/UsageStatsUploader;Lcom/meizu/statsos/UsageStatsUploader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/statsos/UsageStatsUploader;
    .param p2, "x1"    # Lcom/meizu/statsos/UsageStatsUploader$1;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;-><init>(Lcom/meizu/statsos/UsageStatsUploader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x5

    .line 942
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->access$2100(Lcom/meizu/statsos/UsageStatsUploader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    const/4 v1, 0x1

    # setter for: Lcom/meizu/statsos/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0, v1}, Lcom/meizu/statsos/UsageStatsUploader;->access$2102(Lcom/meizu/statsos/UsageStatsUploader;Z)Z

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mHandler:Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->access$900(Lcom/meizu/statsos/UsageStatsUploader;)Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 947
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mHandler:Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->access$900(Lcom/meizu/statsos/UsageStatsUploader;)Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    .line 948
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POWER_CONNECTED, mPowerConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v2}, Lcom/meizu/statsos/UsageStatsUploader;->access$2100(Lcom/meizu/statsos/UsageStatsUploader;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_1
    :goto_0
    return-void

    .line 949
    :cond_2
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 950
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->access$2100(Lcom/meizu/statsos/UsageStatsUploader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 951
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/statsos/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0, v1}, Lcom/meizu/statsos/UsageStatsUploader;->access$2102(Lcom/meizu/statsos/UsageStatsUploader;Z)Z

    .line 953
    :cond_3
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POWER_DISCONNECTED, mPowerConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v2}, Lcom/meizu/statsos/UsageStatsUploader;->access$2100(Lcom/meizu/statsos/UsageStatsUploader;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_4
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mHandler:Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->access$900(Lcom/meizu/statsos/UsageStatsUploader;)Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/meizu/statsos/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
