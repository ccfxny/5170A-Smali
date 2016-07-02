.class Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$2;
.super Ljava/lang/Object;
.source "ThermalSwitchDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;-><init>(Landroid/content/Context;I)V
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
    .line 113
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$2;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$2;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    iget-object v0, v0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$2;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    iget-object v0, v0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    invoke-virtual {v0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->stopWatch()V

    .line 119
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$2;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    # getter for: Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mOnThermalSwitchClickListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;
    invoke-static {v0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->access$000(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnThermalSwitchClickListener;->onThermalSwitchClick(Z)V

    .line 121
    :cond_0
    return-void
.end method
