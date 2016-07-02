.class public Lcom/meizu/stats/UsageStatsUploader;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;,
        Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    }
.end annotation


# static fields
.field private static final BATCH_UPLOAD_URL:Ljava/lang/String; = "https://uxip.meizu.com/api/upload"

.field private static final GET_UMID_URL:Ljava/lang/String; = "https://umid.orion.meizu.com/umid/generator"

.field private static final NETWORK_STATE_CHANGED:I = 0x3

.field private static final ONE_UPLOAD_URL:Ljava/lang/String; = "https://uxip.meizu.com/api/report/realtime"

.field private static final POWER_CONNECTED:I = 0x5

.field private static final SIGN_KEY_FORMAT:Ljava/lang/String; = "key=OjUiuYe80AUYnbgBNT6&nonce=%s&ts=%s&md5=%s"

.field private static final TAG:Ljava/lang/String; = "UsageStatsUploader"

.field private static final TIME_CHANGED:I = 0x4

.field private static final UPLOAD:I = 0x1

.field private static final UPLOAD_TIME_ALARM:I = 0x2

.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;


# instance fields
.field private mAllowUpload:Z

.field private mContext:Landroid/content/Context;

.field private mEventCome:I

.field private mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

.field private mIsUploadByEventCome:Z

.field private mLastAlarmTime:J

.field private mLastUploadTime:J

.field private mNetworkConnected:Z

.field private mOnline:Z

.field private mOnlineDayFlowSum:J

.field private mPackageSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mParcelLimit:I

.field private volatile mPowerConnecting:Z

.field private mRatio:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStatsUploadThread:Landroid/os/HandlerThread;

.field private volatile mUpload:Z

.field private mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

.field private mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsUploader;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "StatsUploadThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    .line 84
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    .line 91
    iput-boolean v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mAllowUpload:Z

    .line 92
    iput-boolean v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    .line 95
    iput v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    .line 96
    iput-wide v10, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 97
    iput-boolean v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mIsUploadByEventCome:Z

    .line 100
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    .line 101
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    .line 102
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    .line 103
    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v5, :cond_4

    sget v5, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_EVENTS_PARCEL_LIMIT:I

    :goto_0
    iput v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mParcelLimit:I

    .line 105
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatsProviderHelper;->getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    .line 106
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const-string v6, "com.meizu.stats"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 107
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "last_upload_time"

    invoke-interface {v5, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    .line 108
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "today_upload_flag"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mAllowUpload:Z

    .line 109
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "ratio"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    .line 110
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "online_flow_sum"

    invoke-interface {v5, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 111
    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v5, :cond_0

    .line 112
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 114
    :cond_0
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v5, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;-><init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    .line 116
    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v5, :cond_1

    .line 117
    new-instance v5, Lcom/meizu/stats/UsageStatsReceiver;

    invoke-direct {v5}, Lcom/meizu/stats/UsageStatsReceiver;-><init>()V

    iput-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;

    .line 118
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    new-instance v6, Lcom/meizu/stats/UsageStatsUploader$1;

    invoke-direct {v6, p0}, Lcom/meizu/stats/UsageStatsUploader$1;-><init>(Lcom/meizu/stats/UsageStatsUploader;)V

    invoke-virtual {v5, v6}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->post(Ljava/lang/Runnable;)Z

    .line 136
    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v5, :cond_3

    .line 138
    :try_start_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, "batteryfilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 141
    .local v4, "result":Landroid/content/Intent;
    if-eqz v4, :cond_2

    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    .line 144
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;-><init>(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsUploader$1;)V

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    .end local v0    # "batteryfilter":Landroid/content/IntentFilter;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "result":Landroid/content/Intent;
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/meizu/stats/UsageStatsUploader;->sendOfflineUploadAlarm(J)V

    .line 153
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 155
    :cond_3
    return-void

    .line 103
    :cond_4
    sget v5, Lcom/meizu/experiencedatasync/UsageStatsConstants;->EVENTS_PARCEL_LIMIT:I

    goto/16 :goto_0

    .line 126
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v2

    .line 150
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 122
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->parcelEvents()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->uploadEvents(Lorg/json/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->parcelSimpleEvents()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/stats/UsageStatsUploader;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader;->setTodayAllowUpload(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/stats/UsageStatsUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->setLastUploadTime(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mIsUploadByEventCome:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/meizu/stats/UsageStatsUploader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mIsUploadByEventCome:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/meizu/stats/UsageStatsUploader;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    return v0
.end method

.method static synthetic access$1802(Lcom/meizu/stats/UsageStatsUploader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    return p1
.end method

.method static synthetic access$1902(Lcom/meizu/stats/UsageStatsUploader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader;->parcelUmidInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/stats/UsageStatsUploader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/meizu/stats/UsageStatsUploader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/stats/UsageStatsUploader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/stats/UsageStatsUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->sendOfflineUploadAlarm(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/stats/UsageStatsUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkOnlineResetConditions()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    return-object v0
.end method

.method private checkOfflineMobile(Lorg/json/JSONObject;)Z
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 689
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    const-wide/16 v4, 0x2800

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mAllowUpload:Z

    if-eqz v1, :cond_0

    .line 690
    const-string v1, "UsageStatsUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline this data.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x1

    .line 694
    :cond_0
    return v0
.end method

.method private checkOnlineMobile(Lorg/json/JSONObject;)Z
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "result":Z
    const-wide/16 v2, 0x0

    .line 705
    .local v2, "tempSum":J
    if-eqz p1, :cond_0

    .line 706
    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 707
    const-string v1, "UsageStatsUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOnlineDayFlowSum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " online this data.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 709
    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 710
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "online_flow_sum"

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 711
    const/4 v0, 0x1

    .line 714
    :cond_0
    return v0
.end method

.method private checkOnlineResetConditions()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 803
    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v4, :cond_0

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 805
    .local v0, "cur":J
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "online_last_upload_time"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 806
    .local v2, "last":J
    cmp-long v4, v6, v2

    if-nez v4, :cond_1

    .line 807
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "online_last_upload_time"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 813
    .end local v0    # "cur":J
    .end local v2    # "last":J
    :cond_0
    :goto_0
    return-void

    .line 808
    .restart local v0    # "cur":J
    .restart local v2    # "last":J
    :cond_1
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 809
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "online_last_upload_time"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 810
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->resetOnlineUploadConditions()V

    goto :goto_0
.end method

.method private clearUploadedEvents()V
    .locals 7

    .prologue
    .line 517
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 518
    .local v2, "packageSessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 519
    .local v3, "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->deleteEvent(Ljava/util/Collection;)I

    goto :goto_0

    .line 522
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageSessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;>;"
    .end local v3    # "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_1
    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v4, :cond_2

    .line 523
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v4

    iput v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    .line 524
    const-string v4, "UsageStatsUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload successful! update mEventCome="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_2
    return-void
.end method

.method private generateMultipartEntity([B)Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    .locals 14
    .param p1, "pushData"    # [B

    .prologue
    .line 431
    invoke-static {p1}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, "md5":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v12, v0

    .line 433
    .local v12, "tsValue":I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    add-int/2addr v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "nonce":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 435
    .local v11, "ts":Ljava/lang/String;
    const-string v0, "key=OjUiuYe80AUYnbgBNT6&nonce=%s&ts=%s&md5=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 444
    .local v10, "sign":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v9, v0, [Lcom/meizu/experiencedatasync/net/multipart/Part;

    .line 445
    .local v9, "partArray":[Lcom/meizu/experiencedatasync/net/multipart/Part;
    const/4 v0, 0x0

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "nonce"

    invoke-direct {v1, v2, v8}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 446
    const/4 v0, 0x1

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "ts"

    invoke-direct {v1, v2, v11}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 447
    const/4 v0, 0x2

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "md5"

    invoke-direct {v1, v2, v6}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 448
    const/4 v0, 0x3

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "sign"

    invoke-direct {v1, v2, v10}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 449
    const/4 v13, 0x4

    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;

    const-string v1, "collect"

    const-string v2, "collect"

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/experiencedatasync/net/multipart/DataPart;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v13

    .line 450
    new-instance v7, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;

    invoke-direct {v7, v9}, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;-><init>([Lcom/meizu/experiencedatasync/net/multipart/Part;)V

    .line 451
    .local v7, "multipartEntity":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    return-object v7
.end method

.method private generateUploadData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "flymeVersion"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    move-object v2, v3

    .line 297
    :goto_0
    return-object v2

    .line 284
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v2, "uploadData":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "ver"

    const-string v5, "2.0"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    invoke-direct {p0, v2, p1}, Lcom/meizu/stats/UsageStatsUploader;->parcelDeviceInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->parcelPackages()Lorg/json/JSONArray;

    move-result-object v0

    .line 289
    .local v0, "apps":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    move-object v2, v3

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    const-string v4, "apps"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v0    # "apps":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v3

    .line 297
    goto :goto_0
.end method

.method private getEventType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_0

    .line 415
    const-string v0, ""

    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    const-string v0, "action_x"

    goto :goto_0

    .line 409
    :pswitch_1
    const-string v0, "page"

    goto :goto_0

    .line 412
    :pswitch_2
    const-string v0, "log"

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsUploader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 158
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-nez v0, :cond_1

    .line 159
    sget-object v1, Lcom/meizu/stats/UsageStatsUploader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    .line 163
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isNetworkWorking()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isNetworkWorking(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUploadSuccess(Ljava/lang/String;)Z
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 506
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, "object":Lorg/json/JSONObject;
    const/16 v3, 0xc8

    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_0

    .line 508
    const/4 v2, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parcelDeviceInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "flymeVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v0, "os_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v0, "imei"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v0, "country"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v0, "operator"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getOperater(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v0, "root"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isRoot(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 315
    const-string v0, "sn"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v0, "flyme_uid"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getFlymeUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v0, "flyme_ver"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .end local p2    # "flymeVersion":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v0, "mac_address"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v0, "product_model"

    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->PRODUCT_MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v0, "build_mask"

    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_MASK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v0, "sre"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getSre(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v0, "lla"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getLocationLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v0, "umid"

    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v0, "ter_type"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getDeviceType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    const-string v0, "os_type"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getOSType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v0, "brand"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    return-void
.end method

.method private parcelEvents()Lorg/json/JSONObject;
    .locals 14

    .prologue
    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, "flymeVersion":Ljava/lang/String;
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    iget v12, p0, Lcom/meizu/stats/UsageStatsUploader;->mParcelLimit:I

    invoke-virtual {v11, v12}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEvents(I)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 172
    const/4 v11, 0x0

    .line 218
    :goto_0
    return-object v11

    .line 174
    :cond_0
    const-string v11, "UsageStatsUploader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parcelEvents, count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 176
    const/4 v9, 0x0

    .line 177
    .local v9, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    const/4 v3, 0x0

    .line 178
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    const/4 v2, 0x0

    .line 179
    .local v2, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const/4 v6, 0x0

    .line 180
    .local v6, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 181
    .local v7, "packageVersion":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "sessionid":Ljava/lang/String;
    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .local v4, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v10, v9

    .line 183
    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v10, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 184
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->creatEvent(Landroid/database/Cursor;)Lcom/meizu/stats/UsageStatsProxy$Event;

    move-result-object v2

    .line 185
    if-eqz v2, :cond_1

    .line 188
    if-nez v5, :cond_2

    .line 189
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getFlymeVersion()Ljava/lang/String;

    move-result-object v5

    .line 191
    :cond_2
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 193
    :goto_2
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v8

    .line 194
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 196
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v10, v9

    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_1

    .line 192
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 202
    :cond_4
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_4
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v10, v9

    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto/16 :goto_1

    .line 208
    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_5
    :try_start_6
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 209
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_7
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v10, v9

    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto/16 :goto_1

    .line 216
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v9, v10

    .line 218
    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_3
    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsUploader;->generateUploadData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    goto/16 :goto_0

    .line 213
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v9, v10

    .line 214
    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 216
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catchall_0
    move-exception v11

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v9, v10

    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v11

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_5

    :catchall_2
    move-exception v11

    goto :goto_5

    .line 213
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method private parcelPackages()Lorg/json/JSONArray;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 331
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 332
    .local v1, "apps":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 333
    .local v7, "version":Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 334
    .local v4, "packageName":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 335
    .local v0, "app":Lorg/json/JSONObject;
    const-string v8, "*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 336
    .local v6, "splitIndex":I
    if-ne v10, v6, :cond_1

    move-object v3, v4

    .line 337
    .local v3, "name":Ljava/lang/String;
    :goto_1
    const-string v8, "package"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v8, "com.meizu.uxip.log"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 339
    const-string v7, "1.0"

    .line 343
    :goto_2
    const-string v8, "sdk_ver"

    const-string v9, "2.5"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v8, "version"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    invoke-direct {p0, v4}, Lcom/meizu/stats/UsageStatsUploader;->parcelSessions(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 346
    .local v5, "sessions":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 349
    const-string v8, "sessions"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 336
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "sessions":Lorg/json/JSONArray;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 341
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    if-ne v10, v6, :cond_3

    iget-object v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    goto :goto_2

    :cond_3
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 352
    .end local v0    # "app":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_5

    .end local v1    # "apps":Lorg/json/JSONArray;
    :goto_4
    return-object v1

    .restart local v1    # "apps":Lorg/json/JSONArray;
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private parcelSessions(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 356
    const-wide/16 v2, 0x0

    .line 357
    .local v2, "channel":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 358
    .local v12, "sessionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 359
    :cond_0
    const/4 v14, 0x0

    .line 400
    :cond_1
    :goto_0
    return-object v14

    .line 361
    :cond_2
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 362
    .local v14, "sessions":Lorg/json/JSONArray;
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 363
    .local v13, "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 364
    .local v7, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 367
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 368
    .local v11, "session":Lorg/json/JSONObject;
    const-string v15, "sid"

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 370
    .local v8, "events":Lorg/json/JSONArray;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 371
    .local v5, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const-wide/16 v16, 0x0

    cmp-long v15, v16, v2

    if-nez v15, :cond_4

    .line 372
    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getChannelNum()J

    move-result-wide v2

    .line 374
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 375
    .local v6, "eventJson":Lorg/json/JSONObject;
    const-string v15, "network"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getNetwork()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v15, "type"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->getEventType(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v15, "name"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const/4 v15, 0x2

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 379
    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 381
    :try_start_0
    const-string v16, "launch"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    const-string v17, "start_time"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v16, "terminate"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    const-string v17, "stop_time"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_5
    :goto_3
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 385
    :catch_0
    move-exception v4

    .line 386
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 390
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v15, "time"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 391
    const-string v15, "page"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v15, "value"

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 396
    .end local v5    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v6    # "eventJson":Lorg/json/JSONObject;
    :cond_7
    const-string v15, "channel_id"

    invoke-virtual {v11, v15, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 397
    const-string v15, "events"

    invoke-virtual {v11, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 400
    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v8    # "events":Lorg/json/JSONArray;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "session":Lorg/json/JSONObject;
    .end local v13    # "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_8
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-gtz v15, :cond_1

    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private parcelSimpleEvents()Lorg/json/JSONObject;
    .locals 20

    .prologue
    .line 222
    const/4 v8, 0x0

    .line 223
    .local v8, "flymeVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/stats/UsageStatsUploader;->mParcelLimit:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    sub-long v16, v16, v18

    invoke-virtual/range {v14 .. v17}, Lcom/meizu/stats/UsageStatsProviderHelper;->getOldEvents(IJ)Landroid/database/Cursor;

    move-result-object v2

    .line 224
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 225
    const/4 v3, 0x0

    .line 277
    :cond_0
    return-object v3

    .line 227
    :cond_1
    const-string v14, "UsageStatsUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parcelSimpleEvents, count="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 229
    const/4 v12, 0x0

    .line 230
    .local v12, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    const/4 v6, 0x0

    .line 231
    .local v6, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    const/4 v5, 0x0

    .line 232
    .local v5, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const/4 v10, 0x0

    .line 233
    .local v10, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "sessionid":Ljava/lang/String;
    move-object v7, v6

    .end local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .local v7, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v13, v12

    .line 235
    .end local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v13, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    sget v15, Lcom/meizu/experiencedatasync/UsageStatsConstants;->OFFLINE_MOBILE_EVENTS_PARCEL_LIMIT:I

    if-ge v14, v15, :cond_6

    .line 236
    invoke-static {v2}, Lcom/meizu/stats/UsageStatsProviderHelper;->creatEvent(Landroid/database/Cursor;)Lcom/meizu/stats/UsageStatsProxy$Event;

    move-result-object v5

    .line 237
    if-eqz v5, :cond_2

    .line 240
    if-nez v8, :cond_3

    .line 241
    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getFlymeVersion()Ljava/lang/String;

    move-result-object v8

    .line 243
    :cond_3
    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 244
    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v11

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v14, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 246
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v12, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v14, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v6

    .end local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v13, v12

    .end local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_0

    .line 252
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    .end local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_4
    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    move-object v13, v12

    .line 254
    .end local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_0

    .line 256
    .end local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_5
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 257
    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_5
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v7, v6

    .end local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v13, v12

    .end local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_0

    .line 264
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v12, v13

    .line 266
    .end local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/meizu/stats/UsageStatsUploader;->generateUploadData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 267
    .local v3, "data":Lorg/json/JSONObject;
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    int-to-long v14, v14

    const-wide/16 v16, 0x2800

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 268
    const-string v14, "UsageStatsUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "data.size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 270
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/meizu/stats/UsageStatsUploader;->generateUploadData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_2

    .line 261
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catch_0
    move-exception v4

    move-object v6, v7

    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v12, v13

    .line 262
    .end local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v4, "e":Ljava/lang/Exception;
    .restart local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 264
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catchall_0
    move-exception v14

    move-object v6, v7

    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v12, v13

    .end local v13    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v12    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v14

    .line 274
    .restart local v3    # "data":Lorg/json/JSONObject;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 264
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_4

    :catchall_2
    move-exception v14

    goto :goto_4

    .line 261
    .end local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :catch_1
    move-exception v4

    move-object v6, v7

    .end local v7    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_3
.end method

.method private parcelUmidInfo(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v0, "imei"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v0, "mac"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v0, "sn"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v0, "version"

    const-string v1, "2.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v0, "nonce"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "U@M##I$$$D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    return-void
.end method

.method static receiverNotifyUpload(Z)V
    .locals 2
    .param p0, "isAlarm"    # Z

    .prologue
    .line 605
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-eqz v0, :cond_0

    .line 606
    if-eqz p0, :cond_1

    .line 607
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->sendEmptyMessage(I)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method private resetOnlineUploadConditions()V
    .locals 4

    .prologue
    .line 819
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    .line 820
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 821
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ratio"

    iget v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 822
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "online_flow_sum"

    iget-wide v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 823
    return-void
.end method

.method private sendEmptyMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 615
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v0, p1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    .line 616
    return-void
.end method

.method private sendOfflineUploadAlarm(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v5, 0x1

    .line 647
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.meizu.usagestats.check_upload"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 649
    .local v1, "pIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 650
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 654
    const-wide/32 v2, 0x1b77400

    add-long/2addr v2, p1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 655
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J

    goto :goto_0
.end method

.method private setLastUploadTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 659
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    .line 660
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upload_time"

    iget-wide v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 661
    return-void
.end method

.method private setTodayAllowUpload(Z)V
    .locals 3
    .param p1, "isAllow"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mAllowUpload:Z

    .line 670
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "today_upload_flag"

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mAllowUpload:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 671
    return-void
.end method

.method private uploadEvents(Lorg/json/JSONObject;Z)Z
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "isWifi"    # Z

    .prologue
    const/4 v4, 0x0

    .line 455
    if-nez p1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v4

    .line 459
    :cond_1
    if-nez p2, :cond_3

    .line 460
    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader;->checkOnlineMobile(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    :cond_2
    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader;->checkOfflineMobile(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    :cond_3
    sget-object v5, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "00000000000000000000000000000000000"

    sget-object v6, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 468
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->requestUmid()V

    .line 470
    :try_start_0
    const-string v5, "umid"

    sget-object v6, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "dataStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 481
    const-string v5, "UsageStatsUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uploadEvent data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsUploader;->generateMultipartEntity([B)Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;

    move-result-object v3

    .line 485
    .local v3, "uploadData":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    if-eqz v3, :cond_0

    .line 486
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v5, 0x3

    if-ge v2, v5, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    const-string v5, "https://uxip.meizu.com/api/upload"

    invoke-static {v5, v3}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsUploader;->isUploadSuccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 491
    const-string v4, "UsageStatsUploader"

    const-string v5, "uploadEvents, upload successfully."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->clearUploadedEvents()V

    .line 493
    const/4 v4, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "uploadData":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 486
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "dataStr":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "uploadData":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method checkUpload()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v6, 0x1

    .line 629
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-nez v2, :cond_1

    .line 630
    const-string v2, "UsageStatsUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpload, mUpload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 634
    .local v0, "intervalTime":J
    const-string v2, "UsageStatsUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpload, mOnline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intervalTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0x36ee80

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "h, mPowerConnecting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastUploadTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    cmp-long v2, v0, v8

    if-ltz v2, :cond_2

    .line 637
    invoke-direct {p0, v6}, Lcom/meizu/stats/UsageStatsUploader;->setTodayAllowUpload(Z)V

    .line 639
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    cmp-long v2, v0, v8

    if-gez v2, :cond_3

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x1b77400

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 641
    :cond_3
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v2, v6}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 642
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v2, v6}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method eventComein()V
    .locals 3

    .prologue
    .line 421
    iget v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    .line 422
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventComein, mEventCome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    sget v1, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_EVENTS_THRESHOLD:I

    iget v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mRatio:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mIsUploadByEventCome:Z

    .line 425
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 427
    :cond_0
    return-void
.end method

.method public postRequestUmid()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    new-instance v1, Lcom/meizu/stats/UsageStatsUploader$2;

    invoke-direct {v1, p0}, Lcom/meizu/stats/UsageStatsUploader$2;-><init>(Lcom/meizu/stats/UsageStatsUploader;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->post(Ljava/lang/Runnable;)Z

    .line 797
    return-void
.end method

.method public requestUmid()V
    .locals 12

    .prologue
    .line 718
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 719
    .local v7, "uploadData":Lorg/json/JSONObject;
    invoke-direct {p0, v7}, Lcom/meizu/stats/UsageStatsUploader;->parcelUmidInfo(Lorg/json/JSONObject;)V

    .line 721
    const/4 v4, 0x0

    .line 722
    .local v4, "response":Ljava/lang/String;
    const/4 v6, 0x0

    .line 723
    .local v6, "umid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 725
    .local v3, "mac":Ljava/lang/String;
    const/4 v0, 0x0

    .line 726
    .local v0, "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    const/4 v2, 0x0

    .line 727
    .local v2, "jsonByte":[B
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 728
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;

    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    invoke-direct {v0, v2}, Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;-><init>([B)V

    .line 729
    .restart local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    const-string v9, "https://umid.orion.meizu.com/umid/generator"

    invoke-static {v9, v0}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 730
    if-nez v4, :cond_1

    .line 753
    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    .end local v2    # "jsonByte":[B
    .end local v3    # "mac":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    .end local v6    # "umid":Ljava/lang/String;
    .end local v7    # "uploadData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 733
    .restart local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    .restart local v2    # "jsonByte":[B
    .restart local v3    # "mac":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v6    # "umid":Ljava/lang/String;
    .restart local v7    # "uploadData":Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 734
    .local v5, "result":Lorg/json/JSONObject;
    const/16 v9, 0xc8

    const-string v10, "code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 735
    const-string v9, "value"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 736
    .local v8, "value":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 737
    const-string v9, "umid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 738
    const-string v9, "mac"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    if-eqz v6, :cond_2

    .line 740
    sput-object v6, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    .line 741
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-object v10, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    sget-object v11, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 743
    :cond_2
    if-eqz v3, :cond_0

    .line 744
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-object v10, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID_MAC:Ljava/lang/String;

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 748
    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    .end local v2    # "jsonByte":[B
    .end local v3    # "mac":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "result":Lorg/json/JSONObject;
    .end local v6    # "umid":Ljava/lang/String;
    .end local v7    # "uploadData":Lorg/json/JSONObject;
    .end local v8    # "value":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 750
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 751
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setUploaded(Z)V
    .locals 3
    .param p1, "upload"    # Z

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eq v0, p1, :cond_0

    .line 620
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    .line 621
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUploaded, mUpload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 626
    :cond_1
    return-void
.end method

.method uploadEvent(Lcom/meizu/stats/UsageStatsProxy$Event;Z)Z
    .locals 18
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .param p2, "isWifi"    # Z

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eqz v13, :cond_0

    if-nez p1, :cond_1

    .line 530
    :cond_0
    const/4 v13, 0x0

    .line 594
    :goto_0
    return v13

    .line 532
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 534
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v13, "ver"

    const-string v14, "2.0"

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getFlymeVersion()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/meizu/stats/UsageStatsUploader;->parcelDeviceInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 536
    const-string v13, "package"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v14, "version"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v13, v15}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v2, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v13, "sid"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 540
    .local v4, "eventJson":Lorg/json/JSONObject;
    const-string v13, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/stats/UsageStatsUploader;->getEventType(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string v13, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v13, "time"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v14

    invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 543
    const-string v13, "page"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v8

    .line 545
    .local v8, "propertiesJson":Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 546
    const-string v13, "value"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    :goto_2
    const-string v13, "event"

    invoke-virtual {v2, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v4    # "eventJson":Lorg/json/JSONObject;
    .end local v8    # "propertiesJson":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    .line 555
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 537
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 548
    .restart local v4    # "eventJson":Lorg/json/JSONObject;
    .restart local v8    # "propertiesJson":Ljava/lang/String;
    :cond_3
    const-string v13, "value"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 551
    .end local v4    # "eventJson":Lorg/json/JSONObject;
    .end local v8    # "propertiesJson":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 552
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 557
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 558
    .local v9, "pushData":[B
    if-nez v9, :cond_5

    .line 559
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 562
    :cond_5
    if-nez p2, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/stats/UsageStatsUploader;->checkOnlineMobile(Lorg/json/JSONObject;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 563
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 566
    :cond_6
    sget-object v13, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "00000000000000000000000000000000000"

    sget-object v14, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 567
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/stats/UsageStatsUploader;->requestUmid()V

    .line 569
    :try_start_2
    const-string v13, "umid"

    sget-object v14, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 575
    :cond_8
    :goto_4
    invoke-static {v9}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "md5":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v12, v14

    .line 577
    .local v12, "tsValue":I
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "nonce":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 579
    .local v11, "ts":Ljava/lang/String;
    const-string v13, "key=OjUiuYe80AUYnbgBNT6&nonce=%s&ts=%s&md5=%s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 582
    .local v10, "sign":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "nonce"

    invoke-direct {v13, v14, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "ts"

    invoke-direct {v13, v14, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "md5"

    invoke-direct {v13, v14, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sign"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "uxip_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :try_start_3
    const-string v13, "https://uxip.meizu.com/api/report/realtime"

    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v14, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-static {v13, v14}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/meizu/stats/UsageStatsUploader;->isUploadSuccess(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v13

    goto/16 :goto_0

    .line 570
    .end local v5    # "md5":Ljava/lang/String;
    .end local v6    # "nonce":Ljava/lang/String;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v10    # "sign":Ljava/lang/String;
    .end local v11    # "ts":Ljava/lang/String;
    .end local v12    # "tsValue":I
    :catch_1
    move-exception v3

    .line 571
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 590
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v5    # "md5":Ljava/lang/String;
    .restart local v6    # "nonce":Ljava/lang/String;
    .restart local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v10    # "sign":Ljava/lang/String;
    .restart local v11    # "ts":Ljava/lang/String;
    .restart local v12    # "tsValue":I
    :catch_2
    move-exception v3

    .line 591
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 594
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
