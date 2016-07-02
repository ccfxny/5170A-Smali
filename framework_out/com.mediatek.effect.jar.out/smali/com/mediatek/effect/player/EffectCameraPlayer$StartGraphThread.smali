.class public Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;
.super Ljava/lang/Object;
.source "EffectCameraPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/effect/player/EffectCameraPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartGraphThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;


# direct methods
.method public constructor <init>(Lcom/mediatek/effect/player/EffectCameraPlayer;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectCameraPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Start Graph Thread - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CameraPlayer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x64

    const-string v5, "showCamera() Srart-Thread Start ... "

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->isStartThreadRunning:Z

    .line 157
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v2}, Lcom/mediatek/effect/player/EffectCore;->graphClose()V

    .line 159
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    iget-boolean v2, v2, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v4, v4, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCntx:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v5, v5, Lcom/mediatek/effect/player/EffectCameraPlayer;->mEffectVideoUri:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/effect/player/EffectCore;->setResourceContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v2}, Lcom/mediatek/effect/player/EffectCore;->graphCreate()Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 163
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v2}, Lcom/mediatek/effect/player/EffectCore;->graphRun()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 165
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mWidth:I

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget v4, v4, Lcom/mediatek/effect/player/EffectCameraPlayer;->mHeight:I

    invoke-virtual {v1, v2, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 168
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraId:I
    invoke-static {v4}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$100(Lcom/mediatek/effect/player/EffectCameraPlayer;)I

    move-result v4

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    # setter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v4}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$002(Lcom/mediatek/effect/player/EffectCameraPlayer;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 171
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # invokes: Lcom/mediatek/effect/player/EffectCameraPlayer;->getCameraParameters()Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$200(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera$Parameters;

    .line 172
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$300(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget v4, v4, Lcom/mediatek/effect/player/EffectCameraPlayer;->mWidth:I

    iget-object v5, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget v5, v5, Lcom/mediatek/effect/player/EffectCameraPlayer;->mHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 173
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$000(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$300(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 174
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$000(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mDegree:I
    invoke-static {v4}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$400(Lcom/mediatek/effect/player/EffectCameraPlayer;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$000(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$000(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 188
    .end local v1    # "st":Landroid/graphics/SurfaceTexture;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->isStartThreadRunning:Z

    .line 189
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCameraPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x64

    const-string v5, "showCamera() Srart-Thread End ... "

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 190
    monitor-exit v3

    .line 191
    return-void

    .line 178
    .restart local v1    # "st":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    # getter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$000(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 180
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;->this$0:Lcom/mediatek/effect/player/EffectCameraPlayer;

    const/4 v4, 0x0

    # setter for: Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v4}, Lcom/mediatek/effect/player/EffectCameraPlayer;->access$002(Lcom/mediatek/effect/player/EffectCameraPlayer;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 181
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind camera surface texture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
