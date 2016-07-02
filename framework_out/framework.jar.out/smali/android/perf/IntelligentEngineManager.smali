.class public Landroid/perf/IntelligentEngineManager;
.super Ljava/lang/Object;
.source "IntelligentEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/perf/IntelligentEngineManager$1;,
        Landroid/perf/IntelligentEngineManager$IntelligentEngineBuilder;
    }
.end annotation


# static fields
.field public static final BOOST_APP_INSTALL:Ljava/lang/String; = "AppInstall"

.field public static final BOOST_APP_PAUSE:Ljava/lang/String; = "AppPause"

.field public static final BOOST_APP_RESUME:Ljava/lang/String; = "AppResume"

.field public static final BOOST_APP_START:Ljava/lang/String; = "AppStart"

.field public static final BOOST_APP_SWITCH:Ljava/lang/String; = "AppSwitch"

.field public static final BOOST_APP_UNINSTALL:Ljava/lang/String; = "AppUninstall"

.field public static final BOOST_BENCHMARK:Ljava/lang/String; = "Benchmark"

.field public static final BOOST_BRIGHTNESS_ANIMATION:Ljava/lang/String; = "BrightnessAnimation"

.field public static final BOOST_KEY:Ljava/lang/String; = "KeyBoost"

.field public static final BOOST_LIST_OBTAIN:Ljava/lang/String; = "ListObtainBoost"

.field public static final BOOST_POWER_MODE_HIGH:Ljava/lang/String; = "PowerModeHigh"

.field public static final BOOST_POWER_MODE_LOW:Ljava/lang/String; = "PowerModeLow"

.field public static final BOOST_POWER_MODE_NORMAL:Ljava/lang/String; = "PowerModeNormal"

.field public static final BOOST_TOUCH:Ljava/lang/String; = "TouchBoost"

.field public static final BOOST_WINDOW_ANIMATION:Ljava/lang/String; = "WindowAnimation"

.field private static final FLYME_INTELLIGENT_ENGINE_SERVICE:Ljava/lang/String; = "flyme_intelligent_engine"

.field public static final TAG:Ljava/lang/String; = "IntelligentEngine"

.field protected static mService:Landroid/perf/IIntelligentEngineService;

.field private static sDeviceIsSupport:Z

.field private static final sPerfDisable:Z


# instance fields
.field private mIntelligentAllocat:Landroid/perf/IntelligentAllocat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    sput-boolean v1, Landroid/perf/IntelligentEngineManager;->sDeviceIsSupport:Z

    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    .line 48
    const-string v0, "debug.intelligentengine.disable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/perf/IntelligentEngineManager;->sPerfDisable:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v1, "flyme_intelligent_engine"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    sput-object v1, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    .line 68
    sget-object v1, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    if-eqz v1, :cond_1

    .line 69
    const/4 v1, 0x1

    sput-boolean v1, Landroid/perf/IntelligentEngineManager;->sDeviceIsSupport:Z

    .line 70
    new-instance v1, Landroid/perf/IntelligentAllocat;

    invoke-direct {v1}, Landroid/perf/IntelligentAllocat;-><init>()V

    iput-object v1, p0, Landroid/perf/IntelligentEngineManager;->mIntelligentAllocat:Landroid/perf/IntelligentAllocat;

    .line 75
    :goto_1
    return-void

    .line 66
    :cond_0
    invoke-static {v0}, Landroid/perf/IIntelligentEngineService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/perf/IIntelligentEngineService;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Landroid/perf/IntelligentEngineManager;->sDeviceIsSupport:Z

    .line 73
    const-string/jumbo v1, "mService is null"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/perf/IntelligentEngineManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/perf/IntelligentEngineManager$1;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/perf/IntelligentEngineManager;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/perf/IntelligentEngineManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/perf/IntelligentEngineManager$IntelligentEngineBuilder;->sIntelligentEngineManager:Landroid/perf/IntelligentEngineManager;

    return-object v0
.end method

.method private recordBoostPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/perf/IntelligentEngineManager;->mIntelligentAllocat:Landroid/perf/IntelligentAllocat;

    invoke-virtual {v0, p1}, Landroid/perf/IntelligentAllocat;->updateAppStartTime(Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public boostPerformance(Ljava/lang/String;)V
    .locals 1
    .param p1, "boostName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, v0}, Landroid/perf/IntelligentEngineManager;->boostPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public boostPerformance(Ljava/lang/String;I)V
    .locals 2
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/perf/IntelligentEngineManager;->boostPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public boostPerformance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/perf/IntelligentEngineManager;->boostPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public boostPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "boostName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "timeout"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x8

    .line 113
    const-string v0, "boostPerformance"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 115
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 116
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 118
    .local v5, "tid":I
    sget-boolean v0, Landroid/perf/IntelligentEngineManager;->sPerfDisable:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/perf/IntelligentEngineManager;->sDeviceIsSupport:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    if-eqz v0, :cond_3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boostPerformance : boostName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 123
    if-eqz p2, :cond_1

    .line 124
    invoke-direct {p0, p2}, Landroid/perf/IntelligentEngineManager;->recordBoostPackageName(Ljava/lang/String;)V

    .line 126
    if-eqz p3, :cond_0

    .line 127
    :try_start_0
    sget-object v0, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/perf/IIntelligentEngineService;->boostAppWithTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 149
    return-void

    .line 129
    :cond_0
    :try_start_1
    sget-object v0, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    invoke-interface {v0, p1, p2, v4, v5}, Landroid/perf/IIntelligentEngineService;->boostApp(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v6

    .line 132
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    if-eqz p3, :cond_2

    .line 137
    :try_start_2
    sget-object v0, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    invoke-interface {v0, p1, p3, v4, v5}, Landroid/perf/IIntelligentEngineService;->boostWithTimeout(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 141
    :catch_1
    move-exception v6

    .line 142
    .restart local v6    # "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_3
    sget-object v0, Landroid/perf/IntelligentEngineManager;->mService:Landroid/perf/IIntelligentEngineService;

    invoke-interface {v0, p1, v4, v5}, Landroid/perf/IIntelligentEngineService;->boost(Ljava/lang/String;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "device not support or disabled"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
