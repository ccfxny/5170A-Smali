.class public Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
.super Ljava/lang/Object;
.source "ActivityRecognitionProviderWatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProviderWatcher"

.field private static sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

.field private static final sWatcherLock:Ljava/lang/Object;


# instance fields
.field private mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

.field private mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcherLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;-><init>(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;)V

    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;Lcom/android/location/provider/ActivityRecognitionProvider;)Lcom/android/location/provider/ActivityRecognitionProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
    .param p1, "x1"    # Lcom/android/location/provider/ActivityRecognitionProvider;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

    return-object p1
.end method

.method public static getInstance()Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    invoke-direct {v0}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;-><init>()V

    sput-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getActivityRecognitionProvider()Lcom/android/location/provider/ActivityRecognitionProvider;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;

    return-object v0
.end method
