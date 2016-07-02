.class Landroid/media/AudioService$5;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->MzCreateMediaserverWatchdogThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 6984
    iput-object p1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6989
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    # setter for: Landroid/media/AudioService;->mThreadIsRunning:Z
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$10902(Landroid/media/AudioService;Z)Z

    .line 6992
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioService;->mMonitorSucceed:Z
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$11002(Landroid/media/AudioService;Z)Z

    .line 6993
    const-string v1, "AudioService"

    const-string v2, "MzCreateMediaserverWatchdogThread: monitor mediaserver start !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6994
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/media/AudioService$5$1;

    invoke-direct {v2, p0}, Landroid/media/AudioService$5$1;-><init>(Landroid/media/AudioService$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7006
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 7007
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorSucceed:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$11000(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7008
    const-string v1, "AudioService"

    const-string v2, "MzCreateMediaserverWatchdogThread: notify mediaserver restart !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7009
    const-string v1, "sys.mediaserver.restart"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7018
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mThreadIsRunning:Z
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$10902(Landroid/media/AudioService;Z)Z

    .line 7019
    return-void

    .line 7012
    :cond_0
    :try_start_1
    const-string v1, "AudioService"

    const-string v2, "MzCreateMediaserverWatchdogThread: monitor mediaserver end !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7013
    :catch_0
    move-exception v0

    .line 7015
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
