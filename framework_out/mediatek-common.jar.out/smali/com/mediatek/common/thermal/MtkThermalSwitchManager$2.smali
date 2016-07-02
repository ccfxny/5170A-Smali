.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;
.super Landroid/database/ContentObserver;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->initPowerSavingMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;


# direct methods
.method constructor <init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 779
    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1700(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 780
    .local v0, "powerMode":I
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 781
    :cond_0
    const/4 v0, 0x1

    .line 783
    :cond_1
    const-string v1, "ThermalSwitchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange power mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " antutu at background: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    # invokes: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->isBenchMarkBroughtToBackground()Z
    invoke-static {v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$1800(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " benchmark mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z
    invoke-static {}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$500()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->setPowerMode(I)Z

    .line 785
    return-void
.end method
