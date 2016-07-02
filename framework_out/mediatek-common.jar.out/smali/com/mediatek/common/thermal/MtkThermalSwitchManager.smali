.class public Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.super Ljava/lang/Object;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;,
        Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalSwitchState;,
        Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOAD_THERMAL_INTERVAL:I = 0x1f4

.field private static final LOAD_THERMAL_OFF_INTERVAL:I = 0x32

.field private static final POWER_MODE_BALANCE:I = 0x1

.field private static final POWER_MODE_BENCHMARK:I = 0x3

.field private static final POWER_MODE_HIGHPERFOR:I = 0x0

.field private static final POWER_MODE_SAVING:I = 0x2

.field private static final SELECTION_BALANCE:I = 0x1

.field private static final SELECTION_HIGHPERFOR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThermalSwitchManager"

.field private static mPowerModeBenchmark:Z


# instance fields
.field private SettingsCPU_L:Ljava/lang/String;

.field private mAppPackage:Ljava/lang/String;

.field private mBenchmarkBackground:Z

.field private mBenchmarkPackage:Ljava/lang/String;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDeviceControlManager:Ljava/lang/Object;

.field private mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPrevious_SettingsCPU_L:Ljava/lang/String;

.field private mSaveCPUfreq:Ljava/lang/reflect/Method;

.field private mSettingsSelection:Ljava/lang/String;

.field private mState:I

.field private mSystemPropertiesGet:Ljava/lang/reflect/Method;

.field private mThermalSwitchDialog:Landroid/app/AlertDialog;

.field private processRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "cpu_l"

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    .line 105
    iput-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSystemPropertiesGet:Ljava/lang/reflect/Method;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mBenchmarkBackground:Z

    .line 111
    const-string v0, "com.antutu.ABenchMark"

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mBenchmarkPackage:Ljava/lang/String;

    .line 112
    const-string v0, "cpu_l_p"

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPrevious_SettingsCPU_L:Ljava/lang/String;

    .line 113
    const-string v0, "cpu_l_mode"

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSettingsSelection:Ljava/lang/String;

    .line 624
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;-><init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    .line 139
    iput v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThermalSwitchManager"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 141
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;-><init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    .line 143
    const-string v0, "ThermalSwitchManager"

    const-string v1, "Created and started thermal switch thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sput-boolean v3, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    .line 145
    return-void
.end method

.method private HandleOnReceiveBootCompleted()V
    .locals 8

    .prologue
    .line 862
    const v0, 0x7fffffff

    .line 863
    .local v0, "appTimeout":I
    const/16 v3, 0x3c

    .line 864
    .local v3, "resetTime":I
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/.tp.settings"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 870
    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 871
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 874
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    .line 876
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->initProcessStartRecord()V

    .line 879
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->initPowerSavingMode()V

    .line 880
    return-void
.end method

.method private MTKToMeizuForDTM(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "current"    # Ljava/lang/String;

    .prologue
    .line 643
    move-object v0, p1

    .line 644
    .local v0, "command":Ljava/lang/String;
    const-string v3, "/etc/.tp/thermal.conf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 647
    .local v2, "powerMode":I
    const-string v1, "/etc/.tp/thermal.mid.conf"

    .line 648
    .local v1, "conf":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 649
    const-string v1, "/etc/.tp/thermal.high.conf"

    .line 655
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/bin/thermal_manager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .end local v1    # "conf":Ljava/lang/String;
    .end local v2    # "powerMode":I
    :cond_1
    return-object v0

    .line 650
    .restart local v1    # "conf":Ljava/lang/String;
    .restart local v2    # "powerMode":I
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 651
    const-string v1, "/etc/.tp/thermal.low.conf"

    goto :goto_0

    .line 652
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 653
    const-string v1, "/etc/.tp/thermal.off.conf"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->loadThermal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->loadThermalBalanceMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mThermalSwitchDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->handlePowerModeSwitch(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->isBenchMarkBroughtToBackground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->HandleOnReceiveBootCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->setPowerSavingMode(I)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPrevious_SettingsCPU_L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->loadThermalOffMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->setBenchMarkMode(Z)V

    return-void
.end method

.method private changeToDynamicThermalManagement()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 326
    const/4 v3, 0x0

    sput-boolean v3, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    .line 327
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPrevious_SettingsCPU_L:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 328
    .local v2, "powerMode":I
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 330
    .local v0, "curMode":I
    if-ltz v2, :cond_0

    if-le v2, v6, :cond_1

    .line 331
    :cond_0
    const/4 v2, 0x1

    .line 332
    :cond_1
    if-ltz v0, :cond_2

    if-le v0, v6, :cond_3

    .line 333
    :cond_2
    const/4 v0, 0x1

    .line 335
    :cond_3
    const-string v3, "ThermalSwitchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "antutu time out set to previous powerMode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and current power mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 338
    const-string v3, "ThermalSwitchManager"

    const-string v4, "thermal restore to high"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v3, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->removeMessages(I)V

    .line 340
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v3, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 341
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 343
    :cond_4
    const-string v3, "ThermalSwitchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thermal restore to power mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private changeToThermalProtection(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x1

    .line 290
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin antutu current power mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 293
    .local v1, "powerMode":I
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, "msg":Landroid/os/Message;
    if-ltz v1, :cond_3

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    .line 295
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 300
    :goto_0
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save current power mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as previous state, benchmark state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-boolean v2, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    if-nez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPrevious_SettingsCPU_L:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previous power mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPrevious_SettingsCPU_L:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    sput-boolean v6, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    .line 310
    if-nez p1, :cond_1

    .line 311
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "high performance : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for paofen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    :cond_1
    if-ne p1, v6, :cond_2

    .line 316
    if-eq v1, v6, :cond_2

    .line 317
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "balance performance : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for paofen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    :cond_2
    return-void

    .line 297
    :cond_3
    const/4 v1, 0x1

    .line 298
    iput v1, v0, Landroid/os/Message;->arg1:I

    goto/16 :goto_0
.end method

.method private execShellCommand(Ljava/lang/String;)V
    .locals 8
    .param p1, "shellCommand"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v4, 0x0

    .line 189
    .local v4, "proc":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 192
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    const-string v5, "ThermalSwitchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute shell command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 194
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    if-eqz v3, :cond_0

    .line 196
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 197
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 198
    const-string v5, "exit\n"

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 200
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    :cond_0
    if-eqz v3, :cond_1

    .line 210
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 225
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    const-string v5, "ThermalSwitchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execCommandLine() Err exit code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v3

    .line 228
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :cond_3
    :goto_2
    return-void

    .line 212
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() IO Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() IO Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    if-eqz v2, :cond_3

    .line 210
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 212
    :catch_2
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() IO Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    .line 210
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 214
    :cond_4
    :goto_5
    throw v5

    .line 212
    :catch_3
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ThermalSwitchManager"

    const-string v7, "execCommandLine() IO Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() Interrupted Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 203
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method private getBenchMarkMode()Z
    .locals 1

    .prologue
    .line 285
    sget-boolean v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    return v0
.end method

.method private handlePowerModeSwitch(I)V
    .locals 6
    .param p1, "powerMode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 801
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;

    .line 802
    .local v0, "appPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSettingsSelection:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 804
    if-nez v0, :cond_0

    .line 805
    const-string v2, "ThermalSwitchManager"

    const-string v3, "handlePowerModeSwitch mAppPackage == null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v2, v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 810
    .local v1, "msg":Landroid/os/Message;
    if-ne p1, v5, :cond_2

    .line 811
    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 815
    :cond_1
    :goto_1
    sget-object v2, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 816
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePowerModeSwitch power mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 812
    :cond_2
    if-nez p1, :cond_1

    .line 813
    iput v4, v1, Landroid/os/Message;->arg2:I

    goto :goto_1
.end method

.method private initPowerSavingMode()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 731
    :try_start_0
    const-string v5, "meizu.os.DeviceControlManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 734
    .local v0, "cDeviceControlManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    const-string v6, "device_control"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mDeviceControlManager:Ljava/lang/Object;

    .line 735
    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mDeviceControlManager:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 788
    .end local v0    # "cDeviceControlManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 738
    .restart local v0    # "cDeviceControlManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v5, "ThermalSwitchManager"

    const-string v6, "initPowerSavingMode  mDeviceControlManager sucefull!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mDeviceControlManager:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "saveCPUfreq"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    .line 740
    const-string v5, "ThermalSwitchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initPowerSavingMode  mDeviceControlManager mSaveCPUfreq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 743
    .local v1, "cSystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSystemPropertiesGet:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 752
    .end local v0    # "cDeviceControlManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cSystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const/4 v3, 0x1

    .line 753
    .local v3, "powerMode":I
    const/4 v4, 0x1

    .line 754
    .local v4, "updateMode":Z
    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 755
    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 756
    const-string v5, "ThermalSwitchManager"

    const-string v6, "boot benchmark, set to default balance"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v3, 0x1

    .line 758
    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 760
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->isWifiTestMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 761
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->isBuildCTAMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 762
    const/4 v3, 0x1

    .line 763
    const/4 v4, 0x0

    .line 770
    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->setPowerMode(I)Z

    .line 771
    const-string v5, "ThermalSwitchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initPowerSavingMode updateMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",powerMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " benchmark background: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mBenchmarkBackground:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-eqz v4, :cond_0

    .line 774
    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$2;-><init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v11, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 744
    .end local v3    # "powerMode":I
    .end local v4    # "updateMode":Z
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 747
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 749
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    .line 767
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "powerMode":I
    .restart local v4    # "updateMode":Z
    :cond_4
    const/4 v3, 0x1

    .line 768
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initProcessStartRecord()V
    .locals 5

    .prologue
    .line 852
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;

    .line 854
    sget-object v2, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 855
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 857
    .local v0, "info":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 859
    .end local v0    # "info":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private isBackground()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v5, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 245
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 246
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 247
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-object v5, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-ne v5, v6, :cond_1

    .line 249
    const/4 v4, 0x1

    .line 255
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v4
.end method

.method private isBenchMarkBroughtToBackground()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 259
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 260
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 261
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 263
    .local v2, "topActivity":Landroid/content/ComponentName;
    sget-object v3, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 267
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method private isBenchmarkBackground()Z
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/4 v5, 0x0

    .line 231
    iget-object v6, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 232
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, "runningServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 234
    .local v4, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v5

    .line 236
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 237
    .local v2, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "pn":Ljava/lang/String;
    sget-object v6, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 240
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isBuildCTAMode()Z
    .locals 3

    .prologue
    .line 698
    const-string v1, "ro.build.cta"

    const-string v2, "unknown"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->systemPropertiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "strIsBuildCTAMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 701
    const-string v1, "cta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    const-string v1, "ThermalSwitchManager"

    const-string v2, "set Build CTA true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v1, 0x1

    .line 706
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiTestMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 685
    const-string v4, "sys.wifiTestMode"

    const-string v5, "unknown"

    invoke-direct {p0, v4, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->systemPropertiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "strIsWifiTestMode":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 688
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 689
    .local v0, "bIsWifiTestMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 690
    const-string v3, "ThermalSwitchManager"

    const-string v4, "set enableAdb true for wifitest"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v0    # "bIsWifiTestMode":Z
    :goto_1
    return v2

    :cond_0
    move v0, v3

    .line 688
    goto :goto_0

    :cond_1
    move v2, v3

    .line 694
    goto :goto_1
.end method

.method private loadThermal()V
    .locals 2

    .prologue
    .line 350
    const-string v1, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    invoke-direct {p0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->MTKToMeizuForDTM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private loadThermalBalanceMode()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "ThermalSwitchManager"

    const-string v1, "begin paofen load thermal thermal.mid.off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.mid.conf"

    invoke-direct {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method private loadThermalOffMode()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "ThermalSwitchManager"

    const-string v1, "begin paofen load thermal thermal.off.conf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    invoke-direct {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private sendPowerModeSwitchDialogMsg(Ljava/lang/String;)V
    .locals 8
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 821
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSettingsSelection:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 823
    .local v2, "selection":I
    if-nez v2, :cond_1

    .line 825
    const-string v3, "ThermalSwitchManager"

    const-string v4, "antutu run with default high performance mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->handlePowerModeSwitch(I)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    if-ne v2, v6, :cond_2

    .line 830
    const-string v3, "ThermalSwitchManager"

    const-string v4, "antutu run with default balance mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0, v6}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->handlePowerModeSwitch(I)V

    goto :goto_0

    .line 835
    :cond_2
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->SettingsCPU_L:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 836
    .local v1, "powerMode":I
    if-nez v1, :cond_3

    .line 837
    const-string v3, "ThermalSwitchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t Show Dialog! powerMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct {p0, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->handlePowerModeSwitch(I)V

    goto :goto_0

    .line 841
    :cond_3
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 842
    const-string v3, "ThermalSwitchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show Dialog! powerMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 844
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 846
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setBenchMarkMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 281
    sput-boolean p1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mPowerModeBenchmark:Z

    .line 282
    return-void
.end method

.method private setPowerSavingMode(I)V
    .locals 7
    .param p1, "powerMode"    # I

    .prologue
    .line 661
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerSavingMode powerMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " benchmark is brought to background: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->isBenchMarkBroughtToBackground()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mDeviceControlManager:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 663
    :cond_0
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerSavingMode mSaveCPUfreq == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || mDeviceControlManager == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mDeviceControlManager:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_0
    return-void

    .line 668
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSaveCPUfreq:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mDeviceControlManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 680
    :goto_1
    const-string v2, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->MTKToMeizuForDTM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    .end local v0    # "command":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 672
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 674
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 675
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private systemPropertiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "systemProperties"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 710
    const/4 v2, 0x0

    .line 711
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSystemPropertiesGet:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 713
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSystemPropertiesGet:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 714
    const-string v3, "ThermalSwitchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "systemPropertiesGet: systemProperties:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 726
    :cond_0
    :goto_0
    return-object v2

    .line 715
    :catch_0
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 718
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 721
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 723
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public notifyAppState(Ljava/lang/String;Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;)V
    .locals 4
    .param p1, "appPackage"    # Ljava/lang/String;
    .param p2, "appState"    # Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 155
    sget-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Resumed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    if-eq v0, v2, :cond_1

    .line 160
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;

    .line 161
    const-string v0, "ThermalSwitchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it is a benchmark app And state is Resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mAppPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->sendPowerModeSwitchDialogMsg(Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sget-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Dead:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    if-eq v0, v2, :cond_2

    .line 171
    const-string v0, "ThermalSwitchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it is a benchmark app And state is Dead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V

    .line 173
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_2
    sget-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Paused:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    if-eq v0, v2, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->isBenchMarkBroughtToBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V

    .line 182
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->processRecord:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPowerMode(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x3

    .line 791
    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v1, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->removeMessages(I)V

    .line 792
    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v1, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 793
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 794
    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 795
    const/4 v1, 0x1

    return v1
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 148
    const-string v0, "ThermalSwitchManager"

    const-string v1, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mSettingsSelection:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    return-void
.end method
