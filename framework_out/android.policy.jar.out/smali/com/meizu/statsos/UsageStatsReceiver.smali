.class public Lcom/meizu/statsos/UsageStatsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->receiverNotifyUpload(Z)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string v0, "com.meizu.usagestats.check_upload"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->receiverNotifyUpload(Z)V

    goto :goto_0
.end method
