.class Lcom/android/server/power/PowerManagerService$WinFullScreenBroadcastReciver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WinFullScreenBroadcastReciver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4541
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WinFullScreenBroadcastReciver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 4541
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WinFullScreenBroadcastReciver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4544
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4545
    .local v0, "action":Ljava/lang/String;
    const-string v2, "meizu.intent.action.FULLSCREEN_WIN_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4546
    const-string v2, "win_fullscreen"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4547
    .local v1, "full":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WinFullScreenBroadcastReciver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4551
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WinFullScreenBroadcastReciver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mWinFullSceenMode:Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$8302(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4558
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WinFullScreenBroadcastReciver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleWinFullScreenModeChanged()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$8400(Lcom/android/server/power/PowerManagerService;)V

    .line 4560
    .end local v1    # "full":Ljava/lang/String;
    :cond_0
    return-void

    .line 4556
    .restart local v1    # "full":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WinFullScreenBroadcastReciver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mWinFullSceenMode:Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$8302(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0
.end method
