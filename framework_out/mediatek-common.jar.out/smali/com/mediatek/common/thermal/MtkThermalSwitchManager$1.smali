.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;


# direct methods
.method constructor <init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 626
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "action":Ljava/lang/String;
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 632
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 633
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Done!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
