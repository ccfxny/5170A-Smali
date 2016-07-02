.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$1;
.super Ljava/lang/Object;
.source "MtkThermalSwitchManager.java"

# interfaces
.implements Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->showPowerModeSwitchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$1;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalSwitchClick(Z)V
    .locals 2
    .param p1, "isOk"    # Z

    .prologue
    .line 571
    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$1;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->handlePowerModeSwitch(I)V
    invoke-static {v0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1400(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V

    .line 576
    :goto_0
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$1;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 577
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$1;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->handlePowerModeSwitch(I)V
    invoke-static {v0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1400(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V

    goto :goto_0
.end method
