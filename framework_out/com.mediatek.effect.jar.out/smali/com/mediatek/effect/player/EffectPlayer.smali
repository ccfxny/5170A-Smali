.class public Lcom/mediatek/effect/player/EffectPlayer;
.super Landroid/media/MediaPlayer;
.source "EffectPlayer.java"


# static fields
.field public static final FILTER_PROCESS_MAX:I = 0x1b

.field public static final FILTER_RANDOMIZE_EFFECT:I = 0x1a

.field public static final FILTER_VIDEO_TRANSITION:I = 0x1b

.field public static final MAX_FILTER_EFFECT:I = 0x19

.field public static final MAX_NORMAL_FILTER_EFFECT:I = 0x13

.field protected static mCount:[I


# instance fields
.field protected isStartThreadRunning:Z

.field protected mCntx:Landroid/content/Context;

.field protected mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

.field protected mEffectVideoUri:Ljava/lang/String;

.field protected mHeight:I

.field protected mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/player/EffectPlayer;->mCount:[I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 56
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/player/EffectPlayer;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 58
    iput v3, p0, Lcom/mediatek/effect/player/EffectPlayer;->mWidth:I

    .line 59
    iput v3, p0, Lcom/mediatek/effect/player/EffectPlayer;->mHeight:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    .line 62
    iput-boolean v3, p0, Lcom/mediatek/effect/player/EffectPlayer;->isStartThreadRunning:Z

    .line 77
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/player/EffectPlayer;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 80
    iput p1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mWidth:I

    .line 81
    iput p2, p0, Lcom/mediatek/effect/player/EffectPlayer;->mHeight:I

    .line 83
    new-instance v0, Lcom/mediatek/effect/player/EffectCore;

    invoke-direct {v0, p1, p2, p0}, Lcom/mediatek/effect/player/EffectCore;-><init>(IILcom/mediatek/effect/player/EffectPlayer;)V

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    .line 84
    return-void
.end method

.method public static getGraphEffectName(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 150
    invoke-static {p0}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffectName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGMSGoofySupport()Z
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/mediatek/effect/player/EffectPlayer;->isSupport(I)Z

    move-result v0

    return v0
.end method

.method public static isSupport(I)Z
    .locals 1
    .param p0, "effect"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcom/mediatek/effect/player/EffectCore;->isSupport(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public finalize()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/player/EffectPlayer;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/player/EffectPlayer;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/effect/player/EffectPlayer;->release()V

    .line 100
    invoke-super {p0}, Landroid/media/MediaPlayer;->finalize()V

    .line 101
    return-void
.end method

.method public getGraphEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffectName()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    iget v0, v0, Lcom/mediatek/effect/filterpacks/MyUtility;->id:I

    return v0
.end method

.method public graphClose()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0}, Lcom/mediatek/effect/player/EffectCore;->graphClose()V

    .line 184
    :cond_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 5

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    const-string v3, "release()"

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 196
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/effect/player/EffectPlayer;->isStartThreadRunning:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting for StartThread released !! isStartThreadRunning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/effect/player/EffectPlayer;->isStartThreadRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 205
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v1}, Lcom/mediatek/effect/player/EffectCore;->graphClose()V

    .line 207
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v1}, Lcom/mediatek/effect/player/EffectCore;->graphCleanResource()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    .line 210
    :cond_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    monitor-exit p0

    return-void
.end method

.method public setEffect(I)Z
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffect ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setEffect(I)Z

    move-result v0

    return v0
.end method

.method public setHandler(Lcom/mediatek/effect/player/EffectUiHandler;)V
    .locals 1
    .param p1, "tv"    # Lcom/mediatek/effect/player/EffectUiHandler;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setHandler(Lcom/mediatek/effect/player/EffectUiHandler;)V

    .line 129
    :cond_0
    return-void
.end method

.method public setIgnoreMainFrameStreem(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setIgnoreMainFrameStreem(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public setOutputSurfaceView(Landroid/filterfw/core/FilterSurfaceView;)V
    .locals 1
    .param p1, "sv"    # Landroid/filterfw/core/FilterSurfaceView;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setOutputSurfaceView(Landroid/filterfw/core/FilterSurfaceView;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setOutputTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "tv"    # Landroid/view/TextureView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setOutputTextureView(Landroid/view/TextureView;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setOutputTextureViewWithoutEffect(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "tv"    # Landroid/view/TextureView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setOutputTextureViewWithoutEffect(Landroid/view/TextureView;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setProcessDoneCallBack(Lcom/mediatek/effect/filterpacks/ProcessDoneListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setProcessDoneCallBack(Lcom/mediatek/effect/filterpacks/ProcessDoneListener;)V

    .line 134
    :cond_0
    return-void
.end method

.method public setRecordingPath(Ljava/lang/String;Landroid/media/CamcorderProfile;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/effect/player/EffectCore;->setRecordingPath(Ljava/lang/String;Landroid/media/CamcorderProfile;)V

    .line 141
    :cond_0
    return-void
.end method

.method public setResourceContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "video"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectPlayer;->mCntx:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectVideoUri:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setVideoScenario(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)V
    .locals 4
    .param p1, "scenario"    # Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScenario() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->setScenario(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)V

    .line 178
    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/effect/player/EffectPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/player/EffectCore;->submit(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    return-void
.end method
