.class Lcom/android/server/power/PowerManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPreWakeUpWhenPluggedOrUnpluggedConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    # setter for: Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 837
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutMin:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2302(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 838
    return-void
.end method
