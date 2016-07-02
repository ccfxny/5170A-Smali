.class Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;
.super Ljava/lang/Object;
.source "MediaSourceInFilter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 694
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const/16 v1, 0x64

    const-string v2, "MediaPlayer is prepared"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPrepared:Z
    invoke-static {v0, v2}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->access$502(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z

    .line 699
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 700
    monitor-exit v1

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
