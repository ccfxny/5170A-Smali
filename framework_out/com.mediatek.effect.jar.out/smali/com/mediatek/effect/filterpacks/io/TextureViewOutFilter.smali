.class public Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;
.super Landroid/filterfw/core/Filter;
.source "TextureViewOutFilter.java"


# static fields
.field private static mCount:[I


# instance fields
.field private final RENDERMODE_CUSTOMIZE:I

.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mFrameCount:I

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "height"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "width"
    .end annotation
.end field

.field private mSourceQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceQuad"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTargetQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "targetQuad"
    .end annotation
.end field

.field private mTextureView:Landroid/view/TextureView;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "textureView"
    .end annotation
.end field

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mCount:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 122
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->RENDERMODE_STRETCH:I

    .line 70
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->RENDERMODE_FIT:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->RENDERMODE_FILL_CROP:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->RENDERMODE_CUSTOMIZE:I

    .line 76
    iput-object v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTextureView:Landroid/view/TextureView;

    .line 78
    iput-object v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 100
    new-instance v0, Landroid/filterfw/geometry/Quad;

    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v6, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    .line 106
    new-instance v0, Landroid/filterfw/geometry/Quad;

    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v6, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 116
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderMode:I

    .line 117
    iput v5, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mAspectRatio:F

    .line 123
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    .line 124
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 126
    return-void
.end method

.method private updateTargetRect()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x64

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 323
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTargetRect() Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 324
    :cond_0
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenHeight:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_2

    .line 325
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 326
    .local v1, "screenAspectRatio":F
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mAspectRatio:F

    div-float v0, v1, v2

    .line 327
    .local v0, "relativeAspectRatio":F
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTargetRect() UTR. screen w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x screen h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Screen AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mAspectRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", relative AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 333
    :cond_1
    cmpl-float v2, v0, v6

    if-nez v2, :cond_3

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 334
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v7, v7, v6, v6}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 335
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 386
    .end local v0    # "relativeAspectRatio":F
    .end local v1    # "screenAspectRatio":F
    :cond_2
    :goto_0
    return-void

    .line 337
    .restart local v0    # "relativeAspectRatio":F
    .restart local v1    # "screenAspectRatio":F
    :cond_3
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderMode:I

    packed-switch v2, :pswitch_data_0

    .line 382
    :goto_1
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTargetRect() UTR. quad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 383
    :cond_4
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    goto :goto_0

    .line 339
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v7, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 340
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v6, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 341
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v7, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 342
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v6, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 343
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto :goto_1

    .line 346
    :pswitch_1
    cmpl-float v2, v0, v6

    if-lez v2, :cond_5

    .line 348
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 349
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 350
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 351
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 360
    :goto_2
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto :goto_1

    .line 355
    :cond_5
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 356
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 357
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 358
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_2

    .line 363
    :pswitch_2
    cmpl-float v2, v0, v6

    if-lez v2, :cond_6

    .line 365
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 366
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 367
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 368
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 376
    :goto_3
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto/16 :goto_1

    .line 371
    :cond_6
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 372
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 373
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 374
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_3

    .line 379
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    goto/16 :goto_1

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    if-lez v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "disconnect()"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x77

    const-string v2, "SurfaceTexture is already null. Nothing to disconnect."

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 251
    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    if-lez v0, :cond_1

    .line 252
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fieldPortValueUpdated() FPVU. Thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->updateRenderMode()V

    .line 313
    return-void
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    return-void
.end method

.method public declared-synchronized open(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x65

    const-string v4, "open() SurfaceTexture is null!!"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 201
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register SurfaceTexture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 204
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 206
    .local v0, "gl":Landroid/filterfw/core/GLEnvironment;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open() mSurfaceTexture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenWidth:I

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 209
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 210
    .local v1, "surface":Landroid/view/Surface;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    .line 211
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open() new surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSurfaceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 214
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mFrameCount:I

    .line 215
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    if-gtz v2, :cond_1

    .line 216
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register SurfaceTexture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 174
    iget-boolean v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare() Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 180
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 181
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v5, v6, v6, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 182
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v5, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->updateRenderMode()V

    .line 187
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 189
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 190
    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenWidth:I

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreenHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 191
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const/16 v2, 0x65

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 193
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v10, 0x3

    .line 260
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v6, :cond_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    .line 266
    .local v2, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string v6, "frame"

    invoke-virtual {p0, v6}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 267
    .local v4, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    .line 269
    .local v0, "createdFrame":Z
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 271
    .local v1, "currentAspectRatio":F
    iget v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mAspectRatio:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_2

    .line 272
    iget-boolean v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v6, :cond_1

    .line 273
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process() New aspect ratio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", previously: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mAspectRatio:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Thread: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 276
    :cond_1
    iput v1, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mAspectRatio:F

    .line 277
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->updateTargetRect()V

    .line 281
    :cond_2
    const/4 v3, 0x0

    .line 282
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    .line 283
    .local v5, "target":I
    if-eq v5, v10, :cond_4

    .line 284
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 286
    const/4 v0, 0x1

    .line 292
    :goto_1
    iget v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceId:I

    invoke-virtual {v2, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 295
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v7, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v6, v3, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 297
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 300
    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 302
    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 306
    :cond_3
    iget v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mFrameCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mFrameCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 260
    .end local v0    # "createdFrame":Z
    .end local v1    # "currentAspectRatio":F
    .end local v2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    .end local v3    # "gpuFrame":Landroid/filterfw/core/Frame;
    .end local v4    # "input":Landroid/filterfw/core/Frame;
    .end local v5    # "target":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 288
    .restart local v0    # "createdFrame":Z
    .restart local v1    # "currentAspectRatio":F
    .restart local v2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    .restart local v3    # "gpuFrame":Landroid/filterfw/core/Frame;
    .restart local v4    # "input":Landroid/filterfw/core/Frame;
    .restart local v5    # "target":I
    :cond_4
    move-object v3, v4

    goto :goto_1
.end method

.method public declared-synchronized setupPorts()V
    .locals 4

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupPorts() mTextureView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupPorts() mSurfaceTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null SurfaceTexture passed to SurfaceTextureTarget"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :cond_1
    :try_start_1
    const-string v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 320
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 4

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRenderMode() Thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderMode:I

    .line 169
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->updateTargetRect()V

    .line 170
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderMode:I

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderMode:I

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "customize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderMode:I

    goto :goto_0

    .line 166
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
