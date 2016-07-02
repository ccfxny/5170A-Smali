.class public Lcom/mediatek/effect/player/EffectCameraPlayer;
.super Lcom/mediatek/effect/player/EffectPlayer;
.source "EffectCameraPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;
    }
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mDegree:I

.field private mFps:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/mediatek/effect/player/EffectPlayer;-><init>(II)V

    .line 45
    iput v1, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraId:I

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mFps:I

    .line 49
    iput v1, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mDegree:I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCameraPlayer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/effect/player/EffectCameraPlayer;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCameraPlayer;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/effect/player/EffectCameraPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCameraPlayer;

    .prologue
    .line 44
    iget v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCameraPlayer;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/effect/player/EffectCameraPlayer;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/effect/player/EffectCameraPlayer;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCameraPlayer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/effect/player/EffectCameraPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCameraPlayer;

    .prologue
    .line 44
    iget v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mDegree:I

    return v0
.end method

.method private findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .locals 12
    .param p1, "fps"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 94
    .local v0, "closestRange":[I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 95
    .local v2, "range":[I
    const/4 v4, 0x0

    aget v4, v2, v4

    mul-int/lit16 v5, p1, 0x3e8

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-int/lit16 v5, p1, 0x3e8

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    aget v5, v0, v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    if-ge v4, v5, :cond_0

    .line 99
    move-object v0, v2

    goto :goto_0

    .line 102
    .end local v2    # "range":[I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v5, 0x64

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested fps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Closest frame rate range: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v0, v7

    int-to-double v8, v7

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v0, v7

    int-to-double v8, v7

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 106
    return-object v0
.end method

.method private findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 56
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 57
    .local v4, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, -0x1

    .line 58
    .local v2, "closestWidth":I
    const/4 v0, -0x1

    .line 59
    .local v0, "closestHeight":I
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v7, v8, Landroid/hardware/Camera$Size;->width:I

    .line 60
    .local v7, "smallestWidth":I
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v6, v8, Landroid/hardware/Camera$Size;->height:I

    .line 61
    .local v6, "smallestHeight":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 66
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-gt v8, p1, :cond_1

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-gt v8, p2, :cond_1

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-lt v8, v2, :cond_1

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-lt v8, v0, :cond_1

    .line 68
    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    .line 69
    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    .line 71
    :cond_1
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-ge v8, v7, :cond_0

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-ge v8, v6, :cond_0

    .line 72
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 73
    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 76
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v8, -0x1

    if-ne v2, v8, :cond_3

    .line 78
    move v2, v7

    .line 79
    move v0, v6

    .line 82
    :cond_3
    iget-object v8, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v9, 0x64

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested resolution: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "). Closest match: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 85
    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v8, 0x0

    aput v2, v1, v8

    const/4 v8, 0x1

    aput v0, v1, v8

    .line 88
    .local v1, "closestSize":[I
    return-object v1
.end method

.method private getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "closeCamera":Z
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 121
    iget v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraId:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    .line 122
    const/4 v0, 0x1

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 126
    if-eqz v0, :cond_1

    .line 127
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 128
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    .line 132
    :cond_1
    iget v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mWidth:I

    iget v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mHeight:I

    iget-object v5, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v3, v4, v5}, Lcom/mediatek/effect/player/EffectCameraPlayer;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v2

    .line 133
    .local v2, "closestSize":[I
    aget v3, v2, v6

    iput v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mWidth:I

    .line 134
    aget v3, v2, v7

    iput v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mHeight:I

    .line 135
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mWidth:I

    iget v5, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 137
    iget v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mFps:I

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v3, v4}, Lcom/mediatek/effect/player/EffectCameraPlayer;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 139
    .local v1, "closestRange":[I
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    aget v4, v1, v6

    aget v5, v1, v7

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 142
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    return-object v3
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/mediatek/effect/player/EffectPlayer;->release()V

    .line 204
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mCameraId:I

    .line 115
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mDegree:I

    .line 147
    return-void
.end method

.method public showCamera()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "showCamera() "

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 196
    iget-boolean v0, p0, Lcom/mediatek/effect/player/EffectCameraPlayer;->isStartThreadRunning:Z

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/player/EffectCameraPlayer$StartGraphThread;-><init>(Lcom/mediatek/effect/player/EffectCameraPlayer;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/player/EffectCameraPlayer;->submit(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    return-void
.end method
