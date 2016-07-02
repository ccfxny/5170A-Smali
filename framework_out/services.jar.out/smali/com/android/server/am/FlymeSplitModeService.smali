.class public Lcom/android/server/am/FlymeSplitModeService;
.super Lmeizu/splitmode/IFlymeSplitModeService$Stub;
.source "FlymeSplitModeService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivitySplitModeManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "asmm"    # Lcom/android/server/am/ActivitySplitModeManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lmeizu/splitmode/IFlymeSplitModeService$Stub;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/server/am/FlymeSplitModeService;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/server/am/FlymeSplitModeService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 22
    iput-object p3, p0, Lcom/android/server/am/FlymeSplitModeService;->mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;

    .line 23
    return-void
.end method


# virtual methods
.method public disableResize(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/am/FlymeSplitModeService;->mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/am/FlymeSplitModeService;->mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivitySplitModeManager;->disableResize(Landroid/os/IBinder;)V

    .line 54
    :cond_0
    return-void
.end method

.method public getActivitySplitRect(Landroid/os/IBinder;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v3

    .line 30
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 31
    .local v0, "origId":J
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 33
    .local v2, "splitActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/am/FlymeSplitModeService;->mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;

    if-eqz v4, :cond_2

    .line 34
    iget-object v3, p0, Lcom/android/server/am/FlymeSplitModeService;->mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/ActivitySplitModeManager;->getActivitySplitRectLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;)Z

    move-result v3

    monitor-exit p0

    goto :goto_0

    .line 36
    .end local v2    # "splitActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "splitActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public isSplitMode()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/am/FlymeSplitModeService;->mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/server/am/FlymeSplitModeService;->mSplitManager:Lcom/android/server/am/ActivitySplitModeManager;

    invoke-virtual {v0}, Lcom/android/server/am/ActivitySplitModeManager;->isSplitMode()Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
