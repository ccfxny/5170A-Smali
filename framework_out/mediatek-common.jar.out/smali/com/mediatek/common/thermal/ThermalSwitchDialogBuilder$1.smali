.class Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;
.super Ljava/lang/Object;
.source "ThermalSwitchDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 103
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 106
    const-string v0, "ThermalSwitchManager"

    const-string v1, "onDismiss mDialogBuilderHomeWatcher stopwatch Home Key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    iget-object v0, v0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    iget-object v0, v0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;->mDialogBuilderHomeWatcher:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    invoke-virtual {v0}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->stopWatch()V

    .line 110
    :cond_0
    return-void
.end method
