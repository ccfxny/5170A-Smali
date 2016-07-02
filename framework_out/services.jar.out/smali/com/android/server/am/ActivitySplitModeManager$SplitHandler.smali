.class final Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;
.super Landroid/os/Handler;
.source "ActivitySplitModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivitySplitModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SplitHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivitySplitModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivitySplitModeManager;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    .line 1059
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1060
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1064
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1066
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    # getter for: Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z
    invoke-static {v1}, Lcom/android/server/am/ActivitySplitModeManager;->access$000(Lcom/android/server/am/ActivitySplitModeManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-virtual {v1}, Lcom/android/server/am/ActivitySplitModeManager;->hideFloatView()V

    .line 1068
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    # invokes: Lcom/android/server/am/ActivitySplitModeManager;->disconnectService()V
    invoke-static {v1}, Lcom/android/server/am/ActivitySplitModeManager;->access$100(Lcom/android/server/am/ActivitySplitModeManager;)V

    .line 1070
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/am/ActivitySplitModeManager;->SPLIT_LOC_CONTROLLER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1071
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    # getter for: Lcom/android/server/am/ActivitySplitModeManager;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivitySplitModeManager;->access$300(Lcom/android/server/am/ActivitySplitModeManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    # getter for: Lcom/android/server/am/ActivitySplitModeManager;->mSplitConnection:Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;
    invoke-static {v2}, Lcom/android/server/am/ActivitySplitModeManager;->access$200(Lcom/android/server/am/ActivitySplitModeManager;)Lcom/android/server/am/ActivitySplitModeManager$SplitLocConnection;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    # setter for: Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z
    invoke-static {v1, v4}, Lcom/android/server/am/ActivitySplitModeManager;->access$002(Lcom/android/server/am/ActivitySplitModeManager;Z)Z

    goto :goto_0

    .line 1076
    .end local v0    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    # getter for: Lcom/android/server/am/ActivitySplitModeManager;->mBound:Z
    invoke-static {v1}, Lcom/android/server/am/ActivitySplitModeManager;->access$000(Lcom/android/server/am/ActivitySplitModeManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/android/server/am/ActivitySplitModeManager$SplitHandler;->this$0:Lcom/android/server/am/ActivitySplitModeManager;

    # invokes: Lcom/android/server/am/ActivitySplitModeManager;->disconnectService()V
    invoke-static {v1}, Lcom/android/server/am/ActivitySplitModeManager;->access$100(Lcom/android/server/am/ActivitySplitModeManager;)V

    goto :goto_0

    .line 1064
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
