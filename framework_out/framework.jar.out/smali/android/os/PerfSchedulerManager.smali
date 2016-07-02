.class public Landroid/os/PerfSchedulerManager;
.super Ljava/lang/Object;
.source "PerfSchedulerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerfSchedulerManager$ScenarioInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final DEFAULT_TIMEOUT_TWO_SECOND:I = 0x7d0

.field private static DeviceIsSupport:Z = false

.field static final HASHMAPSIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PerfScheduler"

.field private static volatile mPerfschedulermanager:Landroid/os/PerfSchedulerManager;

.field private static mService:Lcom/mediatek/perfservice/IPerfService;

.field private static sClassPerfServiceWrapper:Ljava/lang/Class;

.field private static sMethodBoostWechatFromLuckyMoneyXXXActivity:Ljava/lang/reflect/Method;

.field private static sObjectPerfServiceWrapper:Ljava/lang/Object;


# instance fields
.field private final PERF_DISABLE:Z

.field private mConfigFile:Ljava/io/FileInputStream;

.field private mContext:Landroid/content/Context;

.field private mIsBigLittleArchitecture:Z

.field private mPreBoostPriority:J

.field private mPreTimeoutMs:J

.field private mProperties:Ljava/util/Properties;

.field private mRecordStartBoostMoment:J

.field mScenarioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/PerfSchedulerManager$ScenarioInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/PerfSchedulerManager;->DeviceIsSupport:Z

    .line 30
    const-string v0, "PerfScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/PerfSchedulerManager;->DEBUG:Z

    .line 37
    sput-object v2, Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;

    .line 49
    sput-object v2, Landroid/os/PerfSchedulerManager;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    .line 50
    sput-object v2, Landroid/os/PerfSchedulerManager;->sClassPerfServiceWrapper:Ljava/lang/Class;

    .line 51
    sput-object v2, Landroid/os/PerfSchedulerManager;->sMethodBoostWechatFromLuckyMoneyXXXActivity:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/PerfSchedulerManager;->mScenarioMap:Ljava/util/HashMap;

    .line 38
    iput-boolean v1, p0, Landroid/os/PerfSchedulerManager;->mIsBigLittleArchitecture:Z

    .line 39
    iput-wide v2, p0, Landroid/os/PerfSchedulerManager;->mRecordStartBoostMoment:J

    .line 40
    iput-wide v2, p0, Landroid/os/PerfSchedulerManager;->mPreBoostPriority:J

    .line 41
    iput-wide v2, p0, Landroid/os/PerfSchedulerManager;->mPreTimeoutMs:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PerfSchedulerManager;->mConfigFile:Ljava/io/FileInputStream;

    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Landroid/os/PerfSchedulerManager;->mProperties:Ljava/util/Properties;

    .line 46
    const-string v0, "debug.perfscheduler.disable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PerfSchedulerManager;->PERF_DISABLE:Z

    .line 75
    invoke-direct {p0}, Landroid/os/PerfSchedulerManager;->loadConfigFile()V

    .line 76
    invoke-direct {p0}, Landroid/os/PerfSchedulerManager;->setBigLittleArchitecture()V

    .line 77
    return-void
.end method

.method static synthetic access$000()Lcom/mediatek/perfservice/IPerfService;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/PerfSchedulerManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/PerfSchedulerManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Landroid/os/PerfSchedulerManager;->mIsBigLittleArchitecture:Z

    return v0
.end method

.method private addScenario(Ljava/lang/String;)V
    .locals 4
    .param p1, "scenarioname"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/os/PerfSchedulerManager;->findKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "keyValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 124
    new-instance v1, Landroid/os/PerfSchedulerManager$ScenarioInfo;

    invoke-direct {v1, p0, v0}, Landroid/os/PerfSchedulerManager$ScenarioInfo;-><init>(Landroid/os/PerfSchedulerManager;Ljava/lang/String;)V

    .line 125
    .local v1, "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v2, p0, Landroid/os/PerfSchedulerManager;->mScenarioMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Landroid/os/PerfSchedulerManager;->mScenarioMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    monitor-exit p0

    .line 133
    .end local v1    # "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    :goto_0
    return-void

    .line 129
    .restart local v1    # "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 131
    .end local v1    # "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    :cond_1
    const-string v2, "PerfScheduler"

    const-string v3, "keyValue ==  null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Landroid/os/PerfSchedulerManager;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "PerfScheduler"

    const-string/jumbo v3, "p is Empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "config":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PerfSchedulerManager;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v1, p0, Landroid/os/PerfSchedulerManager;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    const-string v2, "PerfScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cann\'t find the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in boost-perf.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 118
    goto :goto_0
.end method

.method private findScenarioLocked(Ljava/lang/String;)Landroid/os/PerfSchedulerManager$ScenarioInfo;
    .locals 1
    .param p1, "scenarioname"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/os/PerfSchedulerManager;->mScenarioMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Landroid/os/PerfSchedulerManager;->addScenario(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/os/PerfSchedulerManager;->mScenarioMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfSchedulerManager$ScenarioInfo;

    return-object v0
.end method

.method public static getInstance()Landroid/os/PerfSchedulerManager;
    .locals 4

    .prologue
    .line 57
    sget-object v1, Landroid/os/PerfSchedulerManager;->mPerfschedulermanager:Landroid/os/PerfSchedulerManager;

    if-nez v1, :cond_1

    .line 58
    const-class v2, Landroid/os/PerfSchedulerManager;

    monitor-enter v2

    .line 59
    :try_start_0
    sget-object v1, Landroid/os/PerfSchedulerManager;->mPerfschedulermanager:Landroid/os/PerfSchedulerManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Landroid/os/PerfSchedulerManager;

    invoke-direct {v1}, Landroid/os/PerfSchedulerManager;-><init>()V

    sput-object v1, Landroid/os/PerfSchedulerManager;->mPerfschedulermanager:Landroid/os/PerfSchedulerManager;

    .line 62
    :cond_0
    const-string/jumbo v1, "mtk-perfservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    sput-object v1, Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;

    .line 64
    sget-object v1, Landroid/os/PerfSchedulerManager;->mService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_2

    .line 65
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/PerfSchedulerManager;->DeviceIsSupport:Z

    .line 69
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v1, Landroid/os/PerfSchedulerManager;->mPerfschedulermanager:Landroid/os/PerfSchedulerManager;

    return-object v1

    .line 67
    :cond_2
    :try_start_1
    const-string v1, "PerfScheduler"

    const-string/jumbo v3, "mService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private loadConfigFile()V
    .locals 3

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/system/etc/boost-perf.conf"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/os/PerfSchedulerManager;->mConfigFile:Ljava/io/FileInputStream;

    .line 83
    iget-object v1, p0, Landroid/os/PerfSchedulerManager;->mConfigFile:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Landroid/os/PerfSchedulerManager;->mProperties:Ljava/util/Properties;

    iget-object v2, p0, Landroid/os/PerfSchedulerManager;->mConfigFile:Ljava/io/FileInputStream;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/PerfSchedulerManager;->mConfigFile:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 94
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    iget-object v1, p0, Landroid/os/PerfSchedulerManager;->mConfigFile:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 91
    :catch_1
    move-exception v1

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 90
    :try_start_4
    iget-object v2, p0, Landroid/os/PerfSchedulerManager;->mConfigFile:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 92
    :goto_1
    throw v1

    .line 91
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private setBigLittleArchitecture()V
    .locals 3

    .prologue
    .line 97
    const-string v1, "BigLittleArchitecture"

    invoke-direct {p0, v1}, Landroid/os/PerfSchedulerManager;->findKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "keyvalue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/PerfSchedulerManager;->mIsBigLittleArchitecture:Z

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v1, "PerfScheduler"

    const-string v2, "Normal Architecture!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public boostBenchmark(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/os/PerfSchedulerManager;->boostWechatFromLuckyMoneyXXXActivity()V

    .line 189
    return-void
.end method

.method public boostPerformance(Ljava/lang/String;)V
    .locals 4
    .param p1, "scenarioname"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-boolean v1, p0, Landroid/os/PerfSchedulerManager;->PERF_DISABLE:Z

    if-nez v1, :cond_2

    .line 174
    sget-boolean v1, Landroid/os/PerfSchedulerManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PerfScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scenarioname ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/PerfSchedulerManager;->findScenarioLocked(Ljava/lang/String;)Landroid/os/PerfSchedulerManager$ScenarioInfo;

    move-result-object v0

    .line 176
    .local v0, "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/PerfSchedulerManager;->needNewBoost(Landroid/os/PerfSchedulerManager$ScenarioInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/os/PerfSchedulerManager$ScenarioInfo;->boost()V

    .line 184
    .end local v0    # "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    :goto_0
    return-void

    .line 179
    .restart local v0    # "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    :cond_1
    const-string v1, "PerfScheduler"

    const-string v2, "Not Boost !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    .end local v0    # "scenarioinfo":Landroid/os/PerfSchedulerManager$ScenarioInfo;
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Landroid/os/PerfSchedulerManager;->DeviceIsSupport:Z

    goto :goto_0
.end method

.method public boostWechatFromLuckyMoneyXXXActivity()V
    .locals 5

    .prologue
    .line 192
    const-class v2, Landroid/os/PerfSchedulerManager;

    monitor-enter v2

    .line 194
    :try_start_0
    sget-object v1, Landroid/os/PerfSchedulerManager;->sClassPerfServiceWrapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 195
    const-string v1, "com.mediatek.perfservice.PerfServiceWrapper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/PerfSchedulerManager;->sClassPerfServiceWrapper:Ljava/lang/Class;

    .line 197
    :cond_0
    sget-object v1, Landroid/os/PerfSchedulerManager;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 198
    sget-object v1, Landroid/os/PerfSchedulerManager;->sClassPerfServiceWrapper:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Landroid/os/PerfSchedulerManager;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    .line 200
    :cond_1
    sget-object v1, Landroid/os/PerfSchedulerManager;->sMethodBoostWechatFromLuckyMoneyXXXActivity:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 201
    sget-object v1, Landroid/os/PerfSchedulerManager;->sClassPerfServiceWrapper:Ljava/lang/Class;

    const-string v3, "boostWechatFromLuckyMoneyXXXActivity"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/PerfSchedulerManager;->sMethodBoostWechatFromLuckyMoneyXXXActivity:Ljava/lang/reflect/Method;

    .line 203
    :cond_2
    sget-object v1, Landroid/os/PerfSchedulerManager;->sMethodBoostWechatFromLuckyMoneyXXXActivity:Ljava/lang/reflect/Method;

    sget-object v3, Landroid/os/PerfSchedulerManager;->sObjectPerfServiceWrapper:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 217
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 206
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/InstantiationException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public needNewBoost(Landroid/os/PerfSchedulerManager$ScenarioInfo;)Z
    .locals 14
    .param p1, "currentscenarioinfo"    # Landroid/os/PerfSchedulerManager$ScenarioInfo;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v12, 0x0

    .line 144
    iget v0, p1, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioPriority:I

    .line 145
    .local v0, "currentpriority":I
    iget v1, p1, Landroid/os/PerfSchedulerManager$ScenarioInfo;->currentScenarioTimeout:I

    .line 146
    .local v1, "currenttimeout":I
    iget-wide v8, p0, Landroid/os/PerfSchedulerManager;->mPreTimeoutMs:J

    cmp-long v7, v8, v12

    if-eqz v7, :cond_0

    iget-wide v8, p0, Landroid/os/PerfSchedulerManager;->mRecordStartBoostMoment:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_3

    .line 148
    :cond_0
    int-to-long v6, v1

    iput-wide v6, p0, Landroid/os/PerfSchedulerManager;->mPreTimeoutMs:J

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/PerfSchedulerManager;->mRecordStartBoostMoment:J

    .line 150
    int-to-long v6, v0

    iput-wide v6, p0, Landroid/os/PerfSchedulerManager;->mPreBoostPriority:J

    .line 165
    :cond_1
    int-to-long v6, v1

    iput-wide v6, p0, Landroid/os/PerfSchedulerManager;->mPreTimeoutMs:J

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/PerfSchedulerManager;->mRecordStartBoostMoment:J

    .line 167
    int-to-long v6, v0

    iput-wide v6, p0, Landroid/os/PerfSchedulerManager;->mPreBoostPriority:J

    .line 168
    const/4 v6, 0x1

    :cond_2
    :goto_0
    return v6

    .line 152
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/os/PerfSchedulerManager;->mRecordStartBoostMoment:J

    sub-long v2, v8, v10

    .line 153
    .local v2, "hadExecutionTime":J
    iget-wide v8, p0, Landroid/os/PerfSchedulerManager;->mPreTimeoutMs:J

    sub-long v4, v8, v2

    .line 154
    .local v4, "remain_time":J
    cmp-long v7, v4, v12

    if-lez v7, :cond_1

    .line 155
    int-to-long v8, v0

    iget-wide v10, p0, Landroid/os/PerfSchedulerManager;->mPreBoostPriority:J

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 157
    int-to-long v8, v0

    iget-wide v10, p0, Landroid/os/PerfSchedulerManager;->mPreBoostPriority:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 158
    int-to-long v8, v1

    cmp-long v7, v4, v8

    if-ltz v7, :cond_1

    goto :goto_0
.end method
