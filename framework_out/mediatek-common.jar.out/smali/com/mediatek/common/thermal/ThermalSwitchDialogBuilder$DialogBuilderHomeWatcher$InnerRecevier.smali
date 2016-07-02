.class Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;
.super Landroid/content/BroadcastReceiver;
.source "ThermalSwitchDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerRecevier"
.end annotation


# instance fields
.field private final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_LOCKSCREEN:Ljava/lang/String;

.field private final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

.field final synthetic this$1:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;


# direct methods
.method private constructor <init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;)V
    .locals 1

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->this$1:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 253
    const-string v0, "reason"

    iput-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 254
    const-string v0, "globalactions"

    iput-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String;

    .line 255
    const-string v0, "recentapps"

    iput-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    .line 257
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    .line 259
    const-string v0, "lock"

    iput-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_LOCKSCREEN:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;
    .param p2, "x1"    # Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;-><init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 267
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->this$1:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    # getter for: Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;
    invoke-static {v2}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->access$200(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->this$1:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    # getter for: Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;
    invoke-static {v2}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->access$200(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;->onHomePressed()V

    .line 281
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v1    # "reason":Ljava/lang/String;
    :cond_1
    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;->this$1:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    # getter for: Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;
    invoke-static {v2}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->access$200(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;->onHomeLongPressed()V

    goto :goto_0

    .line 275
    :cond_2
    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
