.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;
.super Ljava/lang/Object;
.source "MtkThermalSwitchManager.java"

# interfaces
.implements Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;


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
    .line 581
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeLongPressed()V
    .locals 3

    .prologue
    .line 596
    const-string v0, "ThermalSwitchManager"

    const-string v1, "onHomeLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 598
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1302(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 600
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1500(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v1, v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1500(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v1, v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1500(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_0
    return-void
.end method

.method public onHomePressed()V
    .locals 3

    .prologue
    .line 584
    const-string v0, "ThermalSwitchManager"

    const-string v1, "onHomePressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 586
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1302(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 587
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1500(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v1, v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1500(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v0, v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler$2;->this$1:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v1, v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1500(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_0
    return-void
.end method
