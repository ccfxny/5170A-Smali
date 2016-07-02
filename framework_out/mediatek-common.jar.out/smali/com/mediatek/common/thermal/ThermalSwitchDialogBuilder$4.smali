.class Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$4;
.super Ljava/lang/Object;
.source "ThermalSwitchDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;


# direct methods
.method constructor <init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$4;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$4;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    # getter for: Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mOnThermalSwitchClickListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;
    invoke-static {v0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->access$000(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "ThermalSwitchManager"

    const-string v1, "PerformanceImageView click switch to High Performance!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$4;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    # getter for: Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mOnThermalSwitchClickListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;
    invoke-static {v0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->access$000(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;->onThermalSwitchClick(Z)V

    .line 166
    :cond_0
    return-void
.end method
