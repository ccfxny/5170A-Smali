.class Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->logStrictModeViolationToDropBox(Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$info:Landroid/os/StrictMode$ViolationInfo;

.field final synthetic val$process:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/DropBoxManager;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 13322
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$16;->val$process:Lcom/android/server/am/ProcessRecord;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$16;->val$info:Landroid/os/StrictMode$ViolationInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 13326
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    monitor-enter v1

    .line 13327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13328
    .local v3, "report":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13329
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 13330
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13331
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 13335
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$process:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$16;->val$info:Landroid/os/StrictMode$ViolationInfo;

    # invokes: Lcom/android/server/am/ActivityManagerService;->addTextToDropboxMz(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V

    .line 13338
    :cond_0
    return-void

    .line 13330
    .end local v3    # "report":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
