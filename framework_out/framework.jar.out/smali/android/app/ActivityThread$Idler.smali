.class Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .prologue
    .line 1846
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 1846
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1849
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v4, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1850
    .local v0, "a":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    .line 1851
    .local v3, "stopProfiling":Z
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v4, v4, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v4, v4, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    if-eqz v4, :cond_0

    .line 1853
    const/4 v3, 0x1

    .line 1855
    :cond_0
    if-eqz v0, :cond_4

    .line 1856
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iput-object v8, v4, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1857
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1864
    .local v1, "am":Landroid/app/IActivityManager;
    :cond_1
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_3

    .line 1867
    :try_start_0
    sget-boolean v4, Landroid/app/ActivityThread;->mTraceEnabled:Z

    if-eqz v4, :cond_2

    .line 1868
    const/4 v4, 0x0

    sput-boolean v4, Landroid/app/ActivityThread;->mTraceEnabled:Z

    .line 1869
    const-string v4, "ActivityThread"

    const-string v5, "Stop profiling after 2 seconds"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v5, Landroid/app/ActivityThread$Idler$1;

    invoke-direct {v5, p0}, Landroid/app/ActivityThread$Idler$1;-><init>(Landroid/app/ActivityThread$Idler;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/ActivityThread$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1878
    :cond_2
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v4, v5, v3}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 1879
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    :cond_3
    :goto_0
    move-object v2, v0

    .line 1885
    .local v2, "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1886
    iput-object v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1887
    if-nez v0, :cond_1

    .line 1889
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_4
    if-eqz v3, :cond_5

    .line 1890
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v4}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 1892
    :cond_5
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 1893
    return v9

    .line 1880
    .restart local v1    # "am":Landroid/app/IActivityManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
