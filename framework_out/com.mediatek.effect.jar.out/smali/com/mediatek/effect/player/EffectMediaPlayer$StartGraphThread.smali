.class public Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;
.super Ljava/lang/Object;
.source "EffectMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/effect/player/EffectMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartGraphThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/mediatek/effect/player/EffectMediaPlayer;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v6, v6, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {v6}, Lcom/mediatek/effect/filterpacks/MyUtility;->getID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Start Graph Thread - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MediaPlayer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    monitor-enter v5

    .line 79
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->isStartThreadRunning:Z

    .line 80
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v7, "start() Srart-Thread Start ... "

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v4, :cond_4

    .line 83
    const/4 v1, 0x1

    .line 84
    .local v1, "result":Z
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v4}, Lcom/mediatek/effect/player/EffectCore;->graphClose()V

    .line 86
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    iget-boolean v4, v4, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    if-nez v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    iget-object v6, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v6, v6, Lcom/mediatek/effect/player/EffectMediaPlayer;->mCntx:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v7, v7, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectVideoUri:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/effect/player/EffectCore;->setResourceContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/mediatek/effect/player/EffectCore;->setIsFromMediaPlayer(Z)V

    .line 89
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v4}, Lcom/mediatek/effect/player/EffectCore;->graphCreate()Z

    move-result v4

    if-ne v4, v8, :cond_3

    .line 90
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v4}, Lcom/mediatek/effect/player/EffectCore;->graphRun()Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 91
    .local v3, "st":Landroid/graphics/SurfaceTexture;
    if-nez v3, :cond_2

    .line 92
    const/4 v1, 0x0

    .line 109
    .end local v3    # "st":Landroid/graphics/SurfaceTexture;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 111
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    # invokes: Lcom/mediatek/effect/player/EffectMediaPlayer;->mediaPlayerStart()V
    invoke-static {v4}, Lcom/mediatek/effect/player/EffectMediaPlayer;->access$100(Lcom/mediatek/effect/player/EffectMediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v1    # "result":Z
    :cond_1
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->isStartThreadRunning:Z

    .line 121
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x64

    const-string v7, "start() Srart-Thread End ... "

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 122
    monitor-exit v5

    .line 123
    return-void

    .line 94
    .restart local v1    # "result":Z
    .restart local v3    # "st":Landroid/graphics/SurfaceTexture;
    :cond_2
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .local v2, "sf":Landroid/view/Surface;
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    # invokes: Lcom/mediatek/effect/player/EffectMediaPlayer;->setSurfaceInternal(Landroid/view/Surface;)V
    invoke-static {v4, v2}, Lcom/mediatek/effect/player/EffectMediaPlayer;->access$000(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/view/Surface;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :try_start_4
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 122
    .end local v1    # "result":Z
    .end local v2    # "sf":Landroid/view/Surface;
    .end local v3    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 97
    .restart local v1    # "result":Z
    .restart local v2    # "sf":Landroid/view/Surface;
    .restart local v3    # "st":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 99
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 101
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    throw v4

    .line 105
    .end local v2    # "sf":Landroid/view/Surface;
    .end local v3    # "st":Landroid/graphics/SurfaceTexture;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "result":Z
    :cond_4
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x77

    const-string v7, "start() no context to be used ! it may be released before!"

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
