.class Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;
.super Ljava/lang/Object;
.source "MediaSourceInFilter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 681
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer sent dimensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # setter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputWidth:I
    invoke-static {v0, p2}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$202(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;I)I

    .line 685
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # setter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputHeight:I
    invoke-static {v0, p3}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$302(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;I)I

    .line 686
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    monitor-enter v1

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mGotSize:Z
    invoke-static {v0, v2}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$402(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z

    .line 688
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 689
    monitor-exit v1

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
