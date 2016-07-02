.class public Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceViewOutFilter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static mCount:[I


# instance fields
.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGLMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mIsBound:Z

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

.field private mScreenWidth:I

.field private mSurfaceId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceView"
    .end annotation
.end field

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mCount:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 113
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 66
    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->RENDERMODE_STRETCH:I

    .line 67
    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->RENDERMODE_FIT:I

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->RENDERMODE_FILL_CROP:I

    .line 86
    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mIsBound:Z

    .line 90
    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderMode:I

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mAspectRatio:F

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceId:I

    .line 103
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameShader:Ljava/lang/String;

    .line 114
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mLogVerbose:Z

    .line 115
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 116
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 117
    return-void
.end method

.method private updateTargetRect()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 310
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenHeight:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_0

    .line 311
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 312
    .local v1, "screenAspectRatio":F
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mAspectRatio:F

    div-float v0, v1, v2

    .line 314
    .local v0, "relativeAspectRatio":F
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderMode:I

    packed-switch v2, :pswitch_data_0

    .line 355
    .end local v0    # "relativeAspectRatio":F
    .end local v1    # "screenAspectRatio":F
    :cond_0
    :goto_0
    return-void

    .line 316
    .restart local v0    # "relativeAspectRatio":F
    .restart local v1    # "screenAspectRatio":F
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v7, v7, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 317
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v7, v7, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 320
    :pswitch_1
    cmpl-float v2, v0, v5

    if-lez v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v6, v0

    sub-float v3, v6, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 325
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v6, v0

    sub-float v3, v6, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v6, v0

    sub-float v3, v6, v3

    invoke-virtual {v2, v7, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 332
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v6, v0

    sub-float v3, v6, v3

    invoke-virtual {v2, v7, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 337
    :pswitch_2
    cmpl-float v2, v0, v5

    if-lez v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v6, v0

    sub-float v3, v6, v3

    invoke-virtual {v2, v7, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 342
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v6, v0

    sub-float v3, v6, v3

    invoke-virtual {v2, v7, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v6, v0

    sub-float v3, v6, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 349
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v6, v0

    sub-float v3, v6, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    .line 264
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 267
    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceId:I

    if-lez v0, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceId:I

    .line 271
    :cond_0
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->updateTargetRect()V

    .line 258
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
    .line 121
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    const/4 v5, 0x3

    .line 182
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v2}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    .line 183
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/filterfw/core/FilterSurfaceView;->bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V

    .line 188
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v3}, Landroid/filterfw/core/FilterSurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v4}, Landroid/filterfw/core/FilterSurfaceView;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    const/16 v4, 0x68

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/GLFrame;

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 193
    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v3}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 197
    .local v0, "gl":Landroid/filterfw/core/GLEnvironment;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open() mSurfaceTexture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenWidth:I

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 199
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 200
    .local v1, "surface":Landroid/view/Surface;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceId:I

    .line 201
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open() new surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSurfaceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 204
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceId:I

    if-gtz v2, :cond_1

    .line 205
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register SurfaceTexture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_1
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v4, 0x3

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 156
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 158
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v3, v6, v6, v7}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 159
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 160
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->updateRenderMode()V

    .line 165
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v2}, Landroid/filterfw/core/FilterSurfaceView;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 167
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const/16 v2, 0x65

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 170
    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    .line 173
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mFrameExtractorProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v3, v6, v6, v7}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 174
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v10, 0x3

    .line 212
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mIsBound:Z

    if-nez v6, :cond_1

    .line 213
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v8, "process() Ignoring frame as there is no surface to render to!"

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v6}, Landroid/filterfw/core/FilterSurfaceView;->getGLEnv()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    .line 218
    .local v2, "glEnv":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v6

    if-eq v2, v6, :cond_2

    .line 219
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Surface created under different GLEnvironment!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 223
    .restart local v2    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :cond_2
    :try_start_2
    const-string v6, "frame"

    invoke-virtual {p0, v6}, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 224
    .local v4, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    .line 226
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

    .line 228
    .local v1, "currentAspectRatio":F
    iget v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mAspectRatio:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_4

    .line 229
    iget-boolean v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mLogVerbose:Z

    if-eqz v6, :cond_3

    .line 230
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    iget v9, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mAspectRatio:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 231
    :cond_3
    iput v1, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mAspectRatio:F

    .line 232
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->updateTargetRect()V

    .line 236
    :cond_4
    const/4 v3, 0x0

    .line 237
    .local v3, "gpuFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    .line 238
    .local v5, "target":I
    if-eq v5, v10, :cond_5

    .line 239
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 240
    const/4 v0, 0x1

    .line 245
    :goto_1
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v6}, Landroid/filterfw/core/FilterSurfaceView;->getSurfaceId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 246
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v7, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v6, v3, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 248
    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 242
    :cond_5
    move-object v3, v4

    goto :goto_1
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NULL SurfaceView passed to SurfaceRenderFilter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    const-string v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 134
    return-void
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 295
    iput p3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenWidth:I

    .line 296
    iput p4, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenHeight:I

    .line 297
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    .line 298
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->updateTargetRect()V

    .line 299
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 286
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 306
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mGLMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 282
    :cond_1
    return-void
.end method

.method public updateRenderMode()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderMode:I

    .line 148
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->updateTargetRect()V

    .line 149
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderMode:I

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderMode:I

    goto :goto_0

    .line 145
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/SurfaceViewOutFilter;->mRenderModeString:Ljava/lang/String;

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
