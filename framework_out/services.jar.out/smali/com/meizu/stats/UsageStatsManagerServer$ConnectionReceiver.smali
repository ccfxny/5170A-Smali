.class public Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsManagerServer;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsManagerServer;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 417
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManagerServer;->access$600(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/meizu/stats/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatsManagerServer;->access$302(Lcom/meizu/stats/UsageStatsManagerServer;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    :cond_0
    return-void
.end method
