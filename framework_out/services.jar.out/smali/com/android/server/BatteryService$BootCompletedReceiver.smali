.class final Lcom/android/server/BatteryService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BootCompletedReceiver;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/BatteryService;->mEnableScreen:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2302(Lcom/android/server/BatteryService;Z)Z

    .line 1018
    iget-object v0, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    # invokes: Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V

    .line 1019
    return-void
.end method
