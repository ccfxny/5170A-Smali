.class public Lcom/mediatek/effect/player/EffectMediaPlayer;
.super Lcom/mediatek/effect/player/EffectPlayer;
.source "EffectMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mediatek/effect/player/EffectPlayer;-><init>(II)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 50
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {v0}, Lcom/mediatek/effect/filterpacks/MyUtility;->saveToStorageInit()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectMediaPlayer;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setSurfaceInternal(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/effect/player/EffectMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectMediaPlayer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/effect/player/EffectMediaPlayer;->mediaPlayerStart()V

    return-void
.end method

.method private mediaPlayerStart()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() MediaPlayer Playing withEffect: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v3}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffect()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v3}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ............."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 72
    invoke-super {p0}, Lcom/mediatek/effect/player/EffectPlayer;->start()V

    .line 73
    return-void
.end method

.method private setSurfaceInternal(Landroid/view/Surface;)V
    .locals 0
    .param p1, "sf"    # Landroid/view/Surface;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/mediatek/effect/player/EffectPlayer;->setSurface(Landroid/view/Surface;)V

    .line 67
    return-void
.end method


# virtual methods
.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnCompletionListener() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 171
    new-instance v0, Lcom/mediatek/effect/player/EffectMediaPlayer$3;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/effect/player/EffectMediaPlayer$3;-><init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-super {p0, v0}, Lcom/mediatek/effect/player/EffectPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 180
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnErrorListener() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 186
    new-instance v0, Lcom/mediatek/effect/player/EffectMediaPlayer$4;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/effect/player/EffectMediaPlayer$4;-><init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-super {p0, v0}, Lcom/mediatek/effect/player/EffectPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 196
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnPreparedListener() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 157
    new-instance v0, Lcom/mediatek/effect/player/EffectMediaPlayer$2;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/effect/player/EffectMediaPlayer$2;-><init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-super {p0, v0}, Lcom/mediatek/effect/player/EffectPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 165
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnVideoSizeChangedListener() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 143
    new-instance v0, Lcom/mediatek/effect/player/EffectMediaPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/effect/player/EffectMediaPlayer$1;-><init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-super {p0, v0}, Lcom/mediatek/effect/player/EffectPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 151
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "sf"    # Landroid/view/Surface;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSurface() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffect()I

    move-result v0

    if-gtz v0, :cond_0

    .line 58
    invoke-super {p0, p1}, Lcom/mediatek/effect/player/EffectPlayer;->setSurface(Landroid/view/Surface;)V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/mediatek/effect/player/EffectPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->isStartThreadRunning:Z

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;-><init>(Lcom/mediatek/effect/player/EffectMediaPlayer;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/player/EffectMediaPlayer;->submit(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "stop()"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/mediatek/effect/player/EffectPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
