.class Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsos/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsos/UsageStatsManagerServer;


# direct methods
.method public constructor <init>(Lcom/meizu/statsos/UsageStatsManagerServer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    .line 361
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 362
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 366
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$600(Lcom/meizu/statsos/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meizu_data_collection"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 367
    .local v0, "recording":Z
    :cond_0
    const-string v1, "UsageStatsManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usage stats switch changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 369
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # setter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v1, v0}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$102(Lcom/meizu/statsos/UsageStatsManagerServer;Z)Z

    .line 370
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$900(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->sendEmptyMessage(I)Z

    .line 374
    :cond_1
    return-void
.end method
