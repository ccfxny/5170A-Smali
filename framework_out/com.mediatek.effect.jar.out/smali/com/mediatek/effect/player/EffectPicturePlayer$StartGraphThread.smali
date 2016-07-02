.class public Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;
.super Ljava/lang/Object;
.source "EffectPicturePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/effect/player/EffectPicturePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartGraphThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;


# direct methods
.method public constructor <init>(Lcom/mediatek/effect/player/EffectPicturePlayer;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v3, v3, Lcom/mediatek/effect/player/EffectPicturePlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Start Graph Thread - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PicturePlayer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 57
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    const-string v3, "showPicture() Srart-Thread Start ... "

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->isStartThreadRunning:Z

    .line 61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    iget-boolean v1, v1, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    if-nez v1, :cond_2

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectPicturePlayer;->mCntx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v3, v3, Lcom/mediatek/effect/player/EffectPicturePlayer;->mEffectVideoUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/player/EffectCore;->setResourceContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v1}, Lcom/mediatek/effect/player/EffectCore;->graphCreate()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v1}, Lcom/mediatek/effect/player/EffectCore;->graphRun()Landroid/graphics/SurfaceTexture;

    move-result-object v16

    .line 66
    .local v16, "st":Landroid/graphics/SurfaceTexture;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/effect/player/EffectCore;->setProcessMaxFrameCount(I)V

    .line 68
    if-eqz v16, :cond_0

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget v2, v2, Lcom/mediatek/effect/player/EffectPicturePlayer;->mHeight:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 71
    new-instance v15, Landroid/view/Surface;

    invoke-direct/range {v15 .. v16}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 72
    .local v15, "sf":Landroid/view/Surface;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget v3, v3, Lcom/mediatek/effect/player/EffectPicturePlayer;->mWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget v4, v4, Lcom/mediatek/effect/player/EffectPicturePlayer;->mHeight:I

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    .local v11, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    # getter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 75
    .local v13, "scaleX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    # getter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-float v2, v2

    div-float v14, v1, v2

    .line 76
    .local v14, "scaleY":F
    cmpl-float v1, v13, v14

    if-lez v1, :cond_3

    move v12, v13

    .line 79
    .local v12, "scale":F
    :goto_0
    :try_start_1
    invoke-virtual {v15, v11}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8

    .line 81
    .local v8, "cc":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 82
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    # getter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    # getter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    # getter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 86
    .local v9, "dstbmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {v15, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    invoke-virtual {v15}, Landroid/view/Surface;->release()V

    .line 98
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "cc":Landroid/graphics/Canvas;
    .end local v9    # "dstbmp":Landroid/graphics/Bitmap;
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "scale":F
    .end local v13    # "scaleX":F
    .end local v14    # "scaleY":F
    .end local v15    # "sf":Landroid/view/Surface;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    # getter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    # getter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/mediatek/effect/player/EffectPicturePlayer;->access$002(Lcom/mediatek/effect/player/EffectPicturePlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 105
    .end local v16    # "st":Landroid/graphics/SurfaceTexture;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->isStartThreadRunning:Z

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectPicturePlayer;

    iget-object v1, v1, Lcom/mediatek/effect/player/EffectPicturePlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    const-string v3, "showPicture() Srart-Thread End ... "

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 107
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    return-void

    .restart local v11    # "rect":Landroid/graphics/Rect;
    .restart local v13    # "scaleX":F
    .restart local v14    # "scaleY":F
    .restart local v15    # "sf":Landroid/view/Surface;
    .restart local v16    # "st":Landroid/graphics/SurfaceTexture;
    :cond_3
    move v12, v14

    .line 76
    goto :goto_0

    .line 89
    .restart local v12    # "scale":F
    :catch_0
    move-exception v10

    .line 90
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :try_start_4
    invoke-virtual {v15}, Landroid/view/Surface;->release()V

    goto :goto_1

    .line 107
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "scale":F
    .end local v13    # "scaleX":F
    .end local v14    # "scaleY":F
    .end local v15    # "sf":Landroid/view/Surface;
    .end local v16    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 91
    .restart local v11    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "scale":F
    .restart local v13    # "scaleX":F
    .restart local v14    # "scaleY":F
    .restart local v15    # "sf":Landroid/view/Surface;
    .restart local v16    # "st":Landroid/graphics/SurfaceTexture;
    :catch_1
    move-exception v10

    .line 92
    .local v10, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_5
    invoke-virtual {v10}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :try_start_6
    invoke-virtual {v15}, Landroid/view/Surface;->release()V

    goto :goto_1

    .end local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_1
    move-exception v1

    invoke-virtual {v15}, Landroid/view/Surface;->release()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
