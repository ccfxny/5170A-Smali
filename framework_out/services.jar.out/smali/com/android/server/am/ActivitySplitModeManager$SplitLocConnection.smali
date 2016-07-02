.class Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;
.super Ljava/lang/Object;
.source "ActivitySplitModeManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivitySplitModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitLocConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivitySplitModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivitySplitModeManager;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-static {p2}, Lmeizu/splitmode/ISplitLocControllerService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/splitmode/ISplitLocControllerService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    .line 1035
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitModeManager;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitModeManager;->showFloatView()V

    .line 1037
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitModeManager;->updateFloatFocus()V

    .line 1038
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    iget-boolean v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->shouldDisableResize:Z

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    if-eqz v0, :cond_0

    .line 1040
    const-string v0, "service started, disableResize flag is true, disable resize."

    invoke-static {v0}, Lcom/android/server/am/ActivitySplitModeManager;->log(Ljava/lang/String;)V

    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    iget-object v0, v0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmeizu/splitmode/ISplitLocControllerService;->setResizeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivitySplitModeManager;->mControllerService:Lmeizu/splitmode/ISplitLocControllerService;

    .line 1054
    return-void
.end method
