.class Landroid/media/AudioService$5$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioService$5;


# direct methods
.method constructor <init>(Landroid/media/AudioService$5;)V
    .locals 0

    .prologue
    .line 6994
    iput-object p1, p0, Landroid/media/AudioService$5$1;->this$1:Landroid/media/AudioService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 6999
    const-string v0, "mediaserver_monitor=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7000
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 7001
    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    .line 7002
    const/4 v0, 0x7

    const/16 v1, 0xf

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 7003
    iget-object v0, p0, Landroid/media/AudioService$5$1;->this$1:Landroid/media/AudioService$5;

    iget-object v0, v0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x1

    # setter for: Landroid/media/AudioService;->mMonitorSucceed:Z
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$11002(Landroid/media/AudioService;Z)Z

    .line 7004
    return-void
.end method
