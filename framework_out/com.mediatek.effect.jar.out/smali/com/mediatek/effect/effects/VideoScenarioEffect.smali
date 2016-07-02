.class public Lcom/mediatek/effect/effects/VideoScenarioEffect;
.super Ljava/lang/Object;
.source "VideoScenarioEffect.java"


# static fields
.field protected static mCount:[I


# instance fields
.field private mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

.field protected mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private processResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mCount:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 59
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/effect/effects/VideoScenarioEffect;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/effects/VideoScenarioEffect;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z

    return p1
.end method

.method private declared-synchronized playVideoSetup(Lcom/mediatek/effect/player/EffectMediaPlayer;)Z
    .locals 6
    .param p1, "mp"    # Lcom/mediatek/effect/player/EffectMediaPlayer;

    .prologue
    .line 133
    monitor-enter p0

    if-nez p1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 184
    :goto_0
    monitor-exit p0

    return v1

    .line 136
    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setAudioStreamType(I)V

    .line 138
    const/4 v1, 0x1

    .line 140
    .local v1, "result":Z
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setLooping(Z)V

    .line 141
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setVolume(FF)V

    .line 142
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 144
    new-instance v2, Lcom/mediatek/effect/effects/VideoScenarioEffect$1;

    invoke-direct {v2, p0}, Lcom/mediatek/effect/effects/VideoScenarioEffect$1;-><init>(Lcom/mediatek/effect/effects/VideoScenarioEffect;)V

    invoke-virtual {p1, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setProcessDoneCallBack(Lcom/mediatek/effect/filterpacks/ProcessDoneListener;)V

    .line 155
    new-instance v2, Lcom/mediatek/effect/effects/VideoScenarioEffect$2;

    invoke-direct {v2, p0}, Lcom/mediatek/effect/effects/VideoScenarioEffect$2;-><init>(Lcom/mediatek/effect/effects/VideoScenarioEffect;)V

    invoke-virtual {p1, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 160
    new-instance v2, Lcom/mediatek/effect/effects/VideoScenarioEffect$3;

    invoke-direct {v2, p0}, Lcom/mediatek/effect/effects/VideoScenarioEffect$3;-><init>(Lcom/mediatek/effect/effects/VideoScenarioEffect;)V

    invoke-virtual {p1, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 165
    new-instance v2, Lcom/mediatek/effect/effects/VideoScenarioEffect$4;

    invoke-direct {v2, p0}, Lcom/mediatek/effect/effects/VideoScenarioEffect$4;-><init>(Lcom/mediatek/effect/effects/VideoScenarioEffect;)V

    invoke-virtual {p1, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "MediaPlayer.prepared()"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/mediatek/effect/player/EffectMediaPlayer;->prepare()V

    .line 174
    iget-object v2, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "MediaPlayer.start() "

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/mediatek/effect/player/EffectMediaPlayer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 178
    const/4 v1, 0x0

    .line 182
    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x77

    const-string v2, "cancel() !"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/mediatek/effect/player/EffectMediaPlayer;->stop()V

    .line 236
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setProcessDoneCallBack(Lcom/mediatek/effect/filterpacks/ProcessDoneListener;)V

    .line 237
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/mediatek/effect/player/EffectMediaPlayer;->release()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z

    .line 244
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "notifyAll() !"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "No context to be released ! ignored"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    return-void
.end method

.method public process()Z
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 193
    .local v1, "localPlayer":Lcom/mediatek/effect/player/EffectMediaPlayer;
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x64

    const-string v5, "process()"

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 196
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z

    .line 197
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-direct {p0, v3}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->playVideoSetup(Lcom/mediatek/effect/player/EffectMediaPlayer;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    iget-boolean v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x64

    const-string v5, "wait for result"

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z

    .line 212
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/mediatek/effect/player/EffectMediaPlayer;->stop()V

    .line 217
    invoke-virtual {v1, v7}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setProcessDoneCallBack(Lcom/mediatek/effect/filterpacks/ProcessDoneListener;)V

    .line 218
    invoke-virtual {v1}, Lcom/mediatek/effect/player/EffectMediaPlayer;->release()V

    .line 220
    :cond_1
    monitor-enter p0

    .line 221
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    if-eqz v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-virtual {v3}, Lcom/mediatek/effect/player/EffectMediaPlayer;->stop()V

    .line 223
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setProcessDoneCallBack(Lcom/mediatek/effect/filterpacks/ProcessDoneListener;)V

    .line 224
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-virtual {v3}, Lcom/mediatek/effect/player/EffectMediaPlayer;->release()V

    .line 225
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    .line 227
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 229
    return v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterruptedException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    .line 207
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    .line 208
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 227
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method public setScenario(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scenario"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->setScenario(Landroid/content/Context;Ljava/lang/String;Landroid/media/CamcorderProfile;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setScenario(Landroid/content/Context;Ljava/lang/String;Landroid/media/CamcorderProfile;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scenario"    # Ljava/lang/String;
    .param p3, "videoProfile"    # Landroid/media/CamcorderProfile;
    .param p4, "object1"    # Ljava/lang/Object;
    .param p5, "object2"    # Ljava/lang/Object;

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v7, "setScenario()"

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 78
    invoke-static {p1, p2, p4, p5}, Lcom/mediatek/effect/filterpacks/ve/ScenarioReader;->getScenario(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 79
    .local v3, "scen":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    const/4 v2, 0x0

    .line 81
    .local v2, "result":Z
    if-eqz v3, :cond_0

    .line 84
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video_ow"

    invoke-virtual {v3, v6}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 85
    .local v4, "width":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video_oh"

    invoke-virtual {v3, v6}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    .local v1, "height":I
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Output size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 87
    new-instance v5, Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-direct {v5, v4, v1}, Lcom/mediatek/effect/player/EffectMediaPlayer;-><init>(II)V

    iput-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const/16 v6, 0x1b

    invoke-virtual {v5, v6}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setEffect(I)Z

    .line 94
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const-string v6, ""

    invoke-virtual {v5, p1, v6}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setResourceContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-virtual {v5, v3}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setVideoScenario(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)V

    .line 96
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const-string v6, "/sdcard/save.mp4"

    invoke-virtual {v5, v6, p3}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setRecordingPath(Ljava/lang/String;Landroid/media/CamcorderProfile;)V

    .line 97
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setIgnoreMainFrameStreem(Z)V

    .line 99
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 100
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.quality:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.fileFormat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.videoCodec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.videoBitRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 104
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.videoFrameRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 105
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.videoFrameWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 106
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.videoFrameHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.audioCodec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.audioBitRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.audioSampleRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 110
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoProfile.audioChannels:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 112
    const-string v5, "video1"

    invoke-virtual {v3, v5}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "video1"

    invoke-virtual {v3, v8}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mMediaPlayer:Lcom/mediatek/effect/player/EffectMediaPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video1"

    invoke-virtual {v3, v7}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/effect/player/EffectMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    const/4 v2, 0x1

    .line 128
    .end local v1    # "height":I
    .end local v4    # "width":I
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Output Size Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "result":Z
    .end local v3    # "scen":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 117
    .restart local v1    # "height":I
    .restart local v2    # "result":Z
    .restart local v3    # "scen":Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .restart local v4    # "width":I
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecurityException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
