.class public Lcom/meizu/statsos/UsageStatsManagerServer;
.super Lcom/meizu/statsos/IUsageStatsManager$Stub;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsos/UsageStatsManagerServer$ConnectionReceiver;,
        Lcom/meizu/statsos/UsageStatsManagerServer$Page;,
        Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;,
        Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;
    }
.end annotation


# static fields
.field private static final ON_EVENT:I = 0x1

.field private static final ON_EVENT_REALTIME:I = 0x2

.field private static final ON_PAGE_START:I = 0x3

.field private static final ON_PAGE_STOP:I = 0x4

.field private static final ON_STOP_RECORD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "UsageStatsManagerServer"

.field public static UMID:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsManagerServer:Lcom/meizu/statsos/UsageStatsManagerServer;


# instance fields
.field private mChannelNum:I

.field private mClearPackageSessionTask:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mFlymeVersion:Ljava/lang/String;

.field private mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

.field private mLastSwitchToBackground:J

.field private mNetworkStatus:Ljava/lang/String;

.field private mOnline:Z

.field private mPackageSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/statsos/UsageStatsManagerServer$Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSetSessionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/statsos/UsageStatsProxy$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordEventThread:Landroid/os/HandlerThread;

.field private volatile mRecording:Z

.field private mSettingsObserver:Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUpload:Z

.field private mUsageStatsProviderHelper:Lcom/meizu/statsos/UsageStatsProviderHelper;

.field private mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "00000000000000000000000000000000000"

    sput-object v0, Lcom/meizu/statsos/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsos/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lcom/meizu/statsos/IUsageStatsManager$Stub;-><init>()V

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecordEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mPendingSetSessionEvents:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mChannelNum:I

    .line 69
    iput-object v2, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mFlymeVersion:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 73
    new-instance v0, Lcom/meizu/statsos/UsageStatsManagerServer$1;

    invoke-direct {v0, p0}, Lcom/meizu/statsos/UsageStatsManagerServer$1;-><init>(Lcom/meizu/statsos/UsageStatsManagerServer;)V

    iput-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    .line 84
    iput-boolean p2, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    .line 85
    iput-boolean p3, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUpload:Z

    .line 86
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v0, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;-><init>(Lcom/meizu/statsos/UsageStatsManagerServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    .line 88
    invoke-direct {p0}, Lcom/meizu/statsos/UsageStatsManagerServer;->init()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/statsos/UsageStatsManagerServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/statsos/UsageStatsManagerServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/meizu/statsos/UsageStatsManagerServer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mLastSwitchToBackground:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsProviderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/statsos/UsageStatsProviderHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/statsos/UsageStatsManagerServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mChannelNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/statsos/UsageStatsManagerServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/statsos/UsageStatsManagerServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsUploader;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/statsos/UsageStatsManagerServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/statsos/UsageStatsManagerServer;)Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/statsos/UsageStatsManagerServer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/statsos/UsageStatsManagerServer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 92
    sget-object v0, Lcom/meizu/statsos/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/statsos/UsageStatsManagerServer;

    if-nez v0, :cond_1

    .line 93
    sget-object v1, Lcom/meizu/statsos/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/meizu/statsos/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/statsos/UsageStatsManagerServer;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/meizu/statsos/UsageStatsManagerServer;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/statsos/UsageStatsManagerServer;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/statsos/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/statsos/UsageStatsManagerServer;

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    sget-object v0, Lcom/meizu/statsos/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/statsos/UsageStatsManagerServer;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/meizu/statsos/UsageStatusLog;->initLog()V

    .line 104
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/meizu/statsos/UsageStatsManagerServer;->initChannelNum(Landroid/content/Context;)V

    .line 105
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/meizu/experiencedatasync/util/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    .line 106
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    const-string v6, "com.meizu.stats"

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 107
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    const-string v7, "00000000000000000000000000000000000"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/meizu/statsos/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/meizu/statsos/UsageStatsManagerServer$ConnectionReceiver;

    invoke-direct {v0, p0}, Lcom/meizu/statsos/UsageStatsManagerServer$ConnectionReceiver;-><init>(Lcom/meizu/statsos/UsageStatsManagerServer;)V

    .line 110
    .local v0, "connReceiver":Lcom/meizu/statsos/UsageStatsManagerServer$ConnectionReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :goto_1
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    invoke-static {v5, v6}, Lcom/meizu/statsos/UsageStatsProviderHelper;->getInstance(Landroid/content/Context;Z)Lcom/meizu/statsos/UsageStatsProviderHelper;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/statsos/UsageStatsProviderHelper;

    .line 124
    iget-boolean v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    if-eqz v5, :cond_0

    .line 125
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    iget-boolean v7, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUpload:Z

    invoke-static {v5, v6, v7}, Lcom/meizu/statsos/UsageStatsUploader;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/statsos/UsageStatsUploader;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;

    .line 127
    :cond_0
    iget-boolean v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    if-nez v5, :cond_2

    .line 129
    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "meizu_data_collection"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mRecording:Z

    .line 130
    new-instance v3, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;

    iget-object v5, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    invoke-direct {v3, p0, v5}, Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;-><init>(Lcom/meizu/statsos/UsageStatsManagerServer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;

    .line 131
    iget-object v3, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "meizu_data_collection"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/statsos/UsageStatsManagerServer$SettingsObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    :cond_2
    :try_start_2
    sget-object v3, Lcom/meizu/statsos/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v3, "00000000000000000000000000000000000"

    sget-object v4, Lcom/meizu/statsos/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 138
    sget-object v3, Lcom/meizu/statsos/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/meizu/experiencedatasync/util/Utils;->checkUmid(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/meizu/statsos/UsageStatsManagerServer;->requestUmid()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    :cond_3
    :goto_2
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/meizu/statsos/UsageStatsManagerServer;->requestUmid()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 144
    :catch_1
    move-exception v1

    .line 145
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private initChannelNum(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 340
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 342
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 343
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 344
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "uxip_channel_num"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mChannelNum:I

    .line 350
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    return-void

    .line 344
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "uxip_channel_num"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 346
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private requestUmid()V
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUpload:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;

    invoke-virtual {v0}, Lcom/meizu/statsos/UsageStatsUploader;->postRequestUmid()V

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/meizu/statsos/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/statsos/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method public onEventRealtime(Lcom/meizu/statsos/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/statsos/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method

.method public onPage(Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "start"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p3}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/meizu/statsos/UsageStatsManagerServer$Page;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/meizu/statsos/UsageStatsManagerServer$Page;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 155
    .local v1, "page":Lcom/meizu/statsos/UsageStatsManagerServer$Page;
    if-eqz p2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 160
    :goto_1
    iget-object v2, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v2, v0}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mHandler:Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/meizu/statsos/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method public setUploaded(Z)V
    .locals 2
    .param p1, "upload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUpload:Z

    if-eq v0, p1, :cond_0

    .line 408
    iput-boolean p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUpload:Z

    .line 409
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/statsos/UsageStatsUploader;

    iget-boolean v1, p0, Lcom/meizu/statsos/UsageStatsManagerServer;->mUpload:Z

    invoke-virtual {v0, v1}, Lcom/meizu/statsos/UsageStatsUploader;->setUploaded(Z)V

    .line 411
    :cond_0
    return-void
.end method
