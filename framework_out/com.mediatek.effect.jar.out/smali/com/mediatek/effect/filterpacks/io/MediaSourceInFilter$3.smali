.class Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;
.super Ljava/lang/Object;
.source "MediaSourceInFilter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 705
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const/16 v1, 0x77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer has completed playback, mLooping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLooping:Z
    invoke-static {v3}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$600(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLooping:Z
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$600(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    monitor-enter v1

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z
    invoke-static {v0, v2}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$702(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z

    .line 711
    monitor-exit v1

    .line 713
    :cond_0
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
