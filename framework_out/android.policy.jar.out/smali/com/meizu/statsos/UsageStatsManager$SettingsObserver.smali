.class Lcom/meizu/statsos/UsageStatsManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsos/UsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsos/UsageStatsManager;


# direct methods
.method public constructor <init>(Lcom/meizu/statsos/UsageStatsManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsManager$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManager;

    .line 209
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManager$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManager;

    # getter for: Lcom/meizu/statsos/UsageStatsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManager;->access$400(Lcom/meizu/statsos/UsageStatsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meizu_data_collection"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 215
    .local v0, "recording":Z
    :cond_0
    const-string v1, "UsageStatsManager"

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

    .line 216
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManager$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManager;

    # getter for: Lcom/meizu/statsos/UsageStatsManager;->mRecording:Z
    invoke-static {v1}, Lcom/meizu/statsos/UsageStatsManager;->access$500(Lcom/meizu/statsos/UsageStatsManager;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManager$SettingsObserver;->this$0:Lcom/meizu/statsos/UsageStatsManager;

    # setter for: Lcom/meizu/statsos/UsageStatsManager;->mRecording:Z
    invoke-static {v1, v0}, Lcom/meizu/statsos/UsageStatsManager;->access$502(Lcom/meizu/statsos/UsageStatsManager;Z)Z

    .line 219
    :cond_1
    return-void
.end method
