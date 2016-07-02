.class public Lcom/meizu/stats/UsageStatsProxy;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsProxy$Event;
    }
.end annotation


# static fields
.field public static final EVENT_PROPERTY_VALUE:Ljava/lang/String; = "value"

.field public static final EVENT_TYPE_EVENT:I = 0x1

.field public static final EVENT_TYPE_LOG:I = 0x3

.field public static final EVENT_TYPE_PAGE:I = 0x2

.field public static final LOG_PACKAGE:Ljava/lang/String; = "com.meizu.uxip.log"

.field public static final PAGE_START_TIME:Ljava/lang/String; = "start_time"

.field public static final PAGE_STOP_TIME:Ljava/lang/String; = "stop_time"

.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnline:Z

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_1

    .line 92
    :goto_0
    return-void

    .line 80
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 85
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    const-string v2, "com.meizu.stats"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    .line 89
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    .line 90
    new-instance v1, Lcom/meizu/stats/UsageStatsManager;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    invoke-direct {v1, v2, v3, p3}, Lcom/meizu/stats/UsageStatsManager;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    .line 91
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProxy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z

    .prologue
    .line 102
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_1

    .line 103
    sget-object v1, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Lcom/meizu/stats/UsageStatsProxy;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 113
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_1

    .line 114
    sget-object v1, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsProxy;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 118
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getOfflineInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlineInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProxy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upload"    # Z

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/meizu/stats/UsageStatsProxy;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    return-object v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 283
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUMID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 294
    const-string v0, "00000000000000000000000000000000000"

    .line 295
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    const-string v3, "00000000000000000000000000000000000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_0
    return-object v0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :cond_2
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v9, 0x0

    .line 206
    .local v9, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 208
    .restart local v9    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "value"

    invoke-interface {v9, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v11}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :cond_2
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v11}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method

.method public onEventRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :cond_2
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v11}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v1, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method

.method public onLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p1, "logName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 269
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :cond_2
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v3, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    move-object v2, p1

    move-object v8, v6

    move-object v9, p2

    invoke-direct/range {v1 .. v11}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/stats/UsageStatsManager;->onPage(Ljava/lang/String;ZLjava/lang/String;J)V

    goto :goto_0
.end method

.method public onPageStop(Ljava/lang/String;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/stats/UsageStatsManager;->onPage(Ljava/lang/String;ZLjava/lang/String;J)V

    goto :goto_0
.end method

.method public setUploaded(Z)V
    .locals 1
    .param p1, "upload"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0, p1}, Lcom/meizu/stats/UsageStatsManager;->setUploaded(Z)V

    goto :goto_0
.end method
