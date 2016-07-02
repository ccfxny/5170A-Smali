.class public Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;
.super Ljava/lang/Object;
.source "ThermalSwitchDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogBuilderHomeWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsRegisterReceiver:Z

.field private mListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;

.field private mRecevier:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;

.field final synthetic this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->this$0:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mContext:Landroid/content/Context;

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mFilter:Landroid/content/IntentFilter;

    .line 227
    new-instance v0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;-><init>(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$1;)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mRecevier:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;

    .line 228
    const-string v0, "ThermalSwitchManager"

    const-string v1, "Create DialogBuilderHomeWatcher!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mIsRegisterReceiver:Z

    .line 230
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;)Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;

    return-object v0
.end method


# virtual methods
.method public setOnHomePressedListener(Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mListener:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$OnHomePressedListener;

    .line 234
    return-void
.end method

.method public startWatch()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mRecevier:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "ThermalSwitchManager"

    const-string v1, "HomeWatcher startWatch!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mRecevier:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;

    iget-object v2, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mIsRegisterReceiver:Z

    .line 242
    :cond_0
    return-void
.end method

.method public stopWatch()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mRecevier:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mIsRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "ThermalSwitchManager"

    const-string v1, "HomeWatcher stopWatch!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mRecevier:Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher$InnerRecevier;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/common/thermal/ThermalSwitchDialogBuilder$DialogBuilderHomeWatcher;->mIsRegisterReceiver:Z

    .line 250
    :cond_0
    return-void
.end method
