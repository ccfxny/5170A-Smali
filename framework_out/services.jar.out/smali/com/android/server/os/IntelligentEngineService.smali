.class public Lcom/android/server/os/IntelligentEngineService;
.super Landroid/perf/IIntelligentEngineService$Stub;
.source "IntelligentEngineService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/IntelligentEngineService$1;,
        Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;,
        Lcom/android/server/os/IntelligentEngineService$perfSingletonInstance;
    }
.end annotation


# static fields
.field private static final BOOST_INFO_CONFIG_NAME:Ljava/lang/String; = "boost_info_configration"

.field private static final BOOST_INFO_CONFIG_PACKAGENAME:Ljava/lang/String; = "boost_info_packageName"

.field private static final BOOST_INFO_CONFIG_TIMEOUT:Ljava/lang/String; = "boost_info_timeout"

.field private static final FEATURE_JOB_WHITELIST:Z

.field private static final H_CONFIG_APP:I = 0x2

.field private static final H_CONFIG_SCENARIO:I = 0x1

.field private static final LIST_OBTAIN_BOOST_TIMEOUT:I = 0xc8

.field private static final PERIODIC_TIME:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "IntelligentEngine"

.field private static final TOUCH_BOOST_TIMEOUT:I = 0x64

.field private static final mLock:Ljava/lang/Object;

.field private static mPowerMode:I

.field private static sWhiteListServiceName:Landroid/content/ComponentName;


# instance fields
.field private lastListBoostTime:J

.field private lastTouchBoostTime:J

.field private mGameBoostingPackageName:Ljava/lang/String;

.field private mIsGameBoosting:Z

.field private mScenarioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/os/BoostInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    .line 51
    sget-object v0, Landroid/os/BuildExt;->IS_M95:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/os/IntelligentEngineService;->FEATURE_JOB_WHITELIST:Z

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/os/IntelligentAppConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/IntelligentEngineService;->sWhiteListServiceName:Landroid/content/ComponentName;

    .line 64
    const/4 v0, 0x1

    sput v0, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    invoke-direct {p0}, Landroid/perf/IIntelligentEngineService$Stub;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;

    .line 57
    iput-wide v2, p0, Lcom/android/server/os/IntelligentEngineService;->lastTouchBoostTime:J

    .line 58
    iput-wide v2, p0, Lcom/android/server/os/IntelligentEngineService;->lastListBoostTime:J

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z

    .line 81
    invoke-direct {p0}, Lcom/android/server/os/IntelligentEngineService;->initWorkThread()V

    .line 82
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->loadDataFromFile()V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/os/IntelligentEngineService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/os/IntelligentEngineService$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/os/IntelligentEngineService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/os/IntelligentEngineService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->lastTouchBoostTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/os/IntelligentEngineService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/server/os/IntelligentEngineService;->lastTouchBoostTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/os/IntelligentEngineService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/server/os/IntelligentEngineService;->lastListBoostTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/os/IntelligentEngineService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/server/os/IntelligentEngineService;->lastListBoostTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/os/IntelligentEngineService;->simpleHashCode(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/os/IntelligentEngineService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/os/IntelligentEngineService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/server/os/IntelligentEngineService;->mIsGameBoosting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/os/IntelligentEngineService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/os/IntelligentEngineService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/os/IntelligentEngineService;->mGameBoostingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/os/IntelligentEngineService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/os/IntelligentEngineService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/os/IntelligentEngineService;->mScenarioMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/os/IntelligentEngineService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/server/os/IntelligentEngineService;->FEATURE_JOB_WHITELIST:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/android/server/os/IntelligentEngineService;->initWhiteListJob(Landroid/content/Context;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cpu_l"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 77
    # getter for: Lcom/android/server/os/IntelligentEngineService$perfSingletonInstance;->perfInstance:Lcom/android/server/os/IntelligentEngineService;
    invoke-static {}, Lcom/android/server/os/IntelligentEngineService$perfSingletonInstance;->access$100()Lcom/android/server/os/IntelligentEngineService;

    move-result-object v0

    return-object v0
.end method

.method private static initWhiteListJob(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 87
    const-string v3, "jobscheduler"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 88
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    const/4 v0, 0x0

    .line 89
    .local v0, "jobId":I
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    sget-object v4, Lcom/android/server/os/IntelligentEngineService;->sWhiteListServiceName:Landroid/content/ComponentName;

    invoke-direct {v3, v0, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 94
    .local v2, "updateWhiteListTask":Landroid/app/job/JobInfo;
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 95
    return-void
.end method

.method private initWorkThread()V
    .locals 5

    .prologue
    .line 101
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "IntelligentEngine"

    const/4 v4, -0x4

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v2, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v3, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;-><init>(Lcom/android/server/os/IntelligentEngineService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    .line 106
    const-string v3, "Init power mode after device reboot"

    invoke-static {v3}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 108
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "data":Landroid/os/Bundle;
    sget v3, Lcom/android/server/os/IntelligentEngineService;->mPowerMode:I

    packed-switch v3, :pswitch_data_0

    .line 120
    const-string v3, "boost_info_configration"

    const-string v4, "PowerModeNormal"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 124
    sget-object v4, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 126
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    return-void

    .line 111
    :pswitch_0
    const-string v3, "boost_info_configration"

    const-string v4, "PowerModeHigh"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v3, "boost_info_configration"

    const-string v4, "PowerModeNormal"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v3, "boost_info_configration"

    const-string v4, "PowerModeLow"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private simpleHashCode(Ljava/lang/String;)J
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x1f

    .line 416
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 417
    .local v0, "count":I
    const-wide/16 v2, 0x0

    .line 419
    .local v2, "hashCode":J
    if-nez v0, :cond_0

    .line 420
    const-wide/16 v4, 0x0

    .line 430
    :goto_0
    return-wide v4

    .line 421
    :cond_0
    if-lez v0, :cond_1

    const/16 v4, 0x8

    if-gt v0, v4, :cond_1

    .line 422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 423
    mul-long v4, v8, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v4, v0, -0x8

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 427
    mul-long v4, v8, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-wide v4, v2

    .line 430
    goto :goto_0
.end method


# virtual methods
.method public boost(Ljava/lang/String;II)V
    .locals 4
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service_boost : configuration ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 135
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 139
    sget-object v3, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 141
    monitor-exit v3

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public boostApp(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service_boostApp : configuration ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 149
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "boost_info_packageName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 154
    sget-object v3, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 156
    monitor-exit v3

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public boostAppWithTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service_boostAppWithTimeout : configuration ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 181
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "boost_info_timeout"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "boost_info_packageName"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 187
    sget-object v3, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 189
    monitor-exit v3

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public boostWithTimeout(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service_boostByTimeout : configuration ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 165
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "boost_info_configration"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "boost_info_timeout"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    sget-object v3, Lcom/android/server/os/IntelligentEngineService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/android/server/os/IntelligentEngineService;->mWorkHandler:Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/os/IntelligentEngineService$PerfSchedulerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 172
    monitor-exit v3

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
