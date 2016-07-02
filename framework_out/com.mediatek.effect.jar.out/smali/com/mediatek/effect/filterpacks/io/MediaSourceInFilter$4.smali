.class Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;
.super Ljava/lang/Object;
.source "MediaSourceInFilter.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/16 v2, 0x64

    .line 719
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const-string v1, "New frame from media player"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const/16 v2, 0x64

    const-string v3, "New frame: notify"

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mNewFrameAvailable:Z
    invoke-static {v0, v2}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$802(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z

    .line 723
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 724
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const/16 v2, 0x64

    const-string v3, "New frame: notify done"

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 725
    :cond_2
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
