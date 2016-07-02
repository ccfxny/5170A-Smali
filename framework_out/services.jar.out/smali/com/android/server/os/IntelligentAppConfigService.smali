.class public Lcom/android/server/os/IntelligentAppConfigService;
.super Landroid/app/job/JobService;
.source "IntelligentAppConfigService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/IntelligentAppConfigService$1;,
        Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;,
        Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_FILE_ADDRESS_COMMON_CONFIG:Ljava/lang/String; = "http://safe.res.meizu.com/pack/perf_config.json"

.field private static final DOWNLOAD_FILE_SAVE_NAME:Ljava/lang/String; = "perf_intelligent_app_config.conf"

.field private static final FILESIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "IntelligentEngine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 262
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 62
    const-string v0, "IntelligentEngine,onStartJob"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;-><init>(Lcom/android/server/os/IntelligentAppConfigService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 89
    const-string v0, "IntelligentEngine,onStopJob"

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return v0
.end method
