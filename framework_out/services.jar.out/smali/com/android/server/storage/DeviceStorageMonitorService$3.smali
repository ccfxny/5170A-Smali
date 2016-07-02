.class Lcom/android/server/storage/DeviceStorageMonitorService$3;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Lcom/android/server/storage/DeviceStorageMonitorInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMemory()V
    .locals 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 596
    return-void
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 629
    .local v0, "lowMemIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->ifMzSafeExists()Z
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1400(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    const-string v1, "content://com.meizu.safe.junkclean/source?event=free_momery"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 633
    const-string v1, "com.meizu.safe.junkclean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    :goto_0
    return-object v0

    .line 635
    :cond_0
    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 638
    :cond_1
    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryCriticalLow()Z
    .locals 8

    .prologue
    .line 610
    const-wide/16 v2, 0x0

    .line 612
    .local v2, "tempFreeMem":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;

    move-result-object v1

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1100()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mQueryDataFs:Landroid/os/StatFs;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v6, v1

    mul-long v2, v4, v6

    .line 620
    :goto_0
    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 621
    const/4 v1, 0x1

    .line 623
    :goto_1
    return v1

    .line 615
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1300(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    .line 618
    const-string v1, "DeviceStorageMonitorService"

    const-string v4, "Failed to get current free storage size."

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-boolean v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$1000(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
