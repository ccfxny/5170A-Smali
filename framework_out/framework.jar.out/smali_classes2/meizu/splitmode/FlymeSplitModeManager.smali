.class public Lmeizu/splitmode/FlymeSplitModeManager;
.super Ljava/lang/Object;
.source "FlymeSplitModeManager.java"


# static fields
.field private static volatile mService:Lmeizu/splitmode/IFlymeSplitModeService;

.field private static volatile sInstance:Lmeizu/splitmode/FlymeSplitModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v1, "flyme_splitmode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/splitmode/IFlymeSplitModeService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/splitmode/IFlymeSplitModeService;

    move-result-object v1

    sput-object v1, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmeizu/splitmode/FlymeSplitModeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->sInstance:Lmeizu/splitmode/FlymeSplitModeManager;

    if-eqz v0, :cond_0

    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    if-nez v0, :cond_2

    .line 21
    :cond_0
    const-class v1, Lmeizu/splitmode/FlymeSplitModeManager;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->sInstance:Lmeizu/splitmode/FlymeSplitModeManager;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Lmeizu/splitmode/FlymeSplitModeManager;

    invoke-direct {v0, p0}, Lmeizu/splitmode/FlymeSplitModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->sInstance:Lmeizu/splitmode/FlymeSplitModeManager;

    .line 25
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_2
    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->sInstance:Lmeizu/splitmode/FlymeSplitModeManager;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public disableResize(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lmeizu/splitmode/IFlymeSplitModeService;->disableResize(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActivitySplitRect(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    sget-object v1, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    sget-object v1, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lmeizu/splitmode/IFlymeSplitModeService;->getActivitySplitRect(Landroid/os/IBinder;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isSplitMode()Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    sget-object v0, Lmeizu/splitmode/FlymeSplitModeManager;->mService:Lmeizu/splitmode/IFlymeSplitModeService;

    invoke-interface {v0}, Lmeizu/splitmode/IFlymeSplitModeService;->isSplitMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
