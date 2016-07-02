.class public Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaSourceInFilter.java"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final PREP_TIMEOUT:I = 0x64

.field private static final PREP_TIMEOUT_REPEAT:I = 0x12c

.field private static final mAngleIndex:[[I

.field private static mCount:[I

.field private static final mSourceCoords_0:[F

.field private static final mSourceCoords_180:[F

.field private static final mSourceCoords_270:[F

.field private static final mSourceCoords_90:[F


# instance fields
.field private mCompleted:Z

.field private mContext:Landroid/content/Context;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "context"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGotSize:Z

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mInitOffsetTime:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "init_offset"
    .end annotation
.end field

.field private mInputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inheight"
    .end annotation
.end field

.field private mInputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inwidth"
    .end annotation
.end field

.field private mIsTruncate:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "truncate"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mLooping:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "loop"
    .end annotation
.end field

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNewFrameAvailable:Z

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOrientationUpdated:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mPaused:Z

.field private mPlaying:Z

.field private mPrepared:Z

.field private mSelectedIsUrl:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceIsUrl"
    .end annotation
.end field

.field private mSourceAsset:Landroid/content/res/AssetFileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceAsset"
    .end annotation
.end field

.field private mSourceUrl:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceUrl"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private mVolume:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "volume"
    .end annotation
.end field

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/4 v3, 0x4

    .line 66
    new-array v0, v4, [I

    aput v2, v0, v2

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCount:[I

    .line 178
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_0:[F

    .line 182
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_270:[F

    .line 186
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_180:[F

    .line 190
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_90:[F

    .line 195
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    return-void

    .line 178
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 182
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 186
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 190
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 195
    :array_4
    .array-data 4
        0x0
        0x4
        0x8
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x4
        0xc
        0x0
        0x8
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x8
        0x4
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x0
        0xc
        0x4
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    .line 78
    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 84
    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mContext:Landroid/content/Context;

    .line 90
    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    .line 97
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mWaitForNewFrame:Z

    .line 103
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLooping:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mVolume:F

    .line 115
    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    .line 134
    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputWidth:I

    .line 137
    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputHeight:I

    .line 140
    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mIsTruncate:Z

    .line 143
    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInitOffsetTime:I

    .line 155
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mFrameShader:Ljava/lang/String;

    .line 680
    new-instance v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$1;-><init>(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 693
    new-instance v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$2;-><init>(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 704
    new-instance v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$3;-><init>(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 716
    new-instance v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter$4;-><init>(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    .line 215
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 216
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 217
    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mNewFrameAvailable:Z

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputWidth:I

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputHeight:I

    return p1
.end method

.method static synthetic access$402(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mGotSize:Z

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLooping:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    return p1
.end method

.method static synthetic access$802(Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 234
    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mWidth:I

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 236
    return-void
.end method

.method private setSourceRect([FI[F)V
    .locals 11
    .param p1, "sourceCoords"    # [F
    .param p2, "angleIndex"    # I
    .param p3, "sourceCoords_out"    # [F

    .prologue
    .line 239
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputWidth:I

    int-to-float v3, v8

    .line 240
    .local v3, "localInputWidth":F
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputHeight:I

    int-to-float v2, v8

    .line 242
    .local v2, "localInputHeight":F
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_1

    .line 243
    :cond_0
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputHeight:I

    int-to-float v3, v8

    .line 244
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputWidth:I

    int-to-float v2, v8

    .line 247
    :cond_1
    iget-boolean v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mIsTruncate:Z

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputWidth:I

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInputHeight:I

    if-eqz v8, :cond_6

    .line 248
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mHeight:I

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 249
    .local v4, "outputAspectRatio":F
    div-float v1, v3, v2

    .line 250
    .local v1, "inputAspectRatio":F
    const/4 v6, 0x0

    .line 251
    .local v6, "xOffset":F
    const/4 v7, 0x0

    .line 253
    .local v7, "yOffset":F
    cmpg-float v8, v4, v1

    if-gtz v8, :cond_5

    .line 254
    mul-float v8, v2, v4

    sub-float v8, v3, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v6, v8, v9

    .line 255
    div-float v8, v6, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 261
    :goto_0
    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_3

    .line 262
    :cond_2
    move v5, v6

    .line 263
    .local v5, "tmp":F
    move v6, v7

    .line 264
    move v7, v5

    .line 268
    .end local v5    # "tmp":F
    :cond_3
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x0

    aget v9, v9, v10

    aget v9, p1, v9

    sub-float/2addr v9, v6

    aput v9, p3, v8

    .line 269
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    sub-float/2addr v9, v7

    aput v9, p3, v8

    .line 270
    const/4 v8, 0x2

    const/4 v9, 0x2

    aget v9, p1, v9

    aput v9, p3, v8

    .line 271
    const/4 v8, 0x3

    const/4 v9, 0x3

    aget v9, p1, v9

    aput v9, p3, v8

    .line 274
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x1

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x1

    aget v9, v9, v10

    aget v9, p1, v9

    add-float/2addr v9, v6

    aput v9, p3, v8

    .line 275
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    sub-float/2addr v9, v7

    aput v9, p3, v8

    .line 276
    const/4 v8, 0x6

    const/4 v9, 0x6

    aget v9, p1, v9

    aput v9, p3, v8

    .line 277
    const/4 v8, 0x7

    const/4 v9, 0x7

    aget v9, p1, v9

    aput v9, p3, v8

    .line 280
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x2

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x2

    aget v9, v9, v10

    aget v9, p1, v9

    sub-float/2addr v9, v6

    aput v9, p3, v8

    .line 281
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x2

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    add-float/2addr v9, v7

    aput v9, p3, v8

    .line 282
    const/16 v8, 0xa

    const/16 v9, 0xa

    aget v9, p1, v9

    aput v9, p3, v8

    .line 283
    const/16 v8, 0xb

    const/16 v9, 0xb

    aget v9, p1, v9

    aput v9, p3, v8

    .line 286
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x3

    aget v8, v8, v9

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x3

    aget v9, v9, v10

    aget v9, p1, v9

    add-float/2addr v9, v6

    aput v9, p3, v8

    .line 287
    sget-object v8, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v8, v8, p2

    const/4 v9, 0x3

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mAngleIndex:[[I

    aget-object v9, v9, p2

    const/4 v10, 0x3

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    add-float/2addr v9, v7

    aput v9, p3, v8

    .line 288
    const/16 v8, 0xe

    const/16 v9, 0xe

    aget v9, p1, v9

    aput v9, p3, v8

    .line 289
    const/16 v8, 0xf

    const/16 v9, 0xf

    aget v9, p1, v9

    aput v9, p3, v8

    .line 295
    .end local v1    # "inputAspectRatio":F
    .end local v4    # "outputAspectRatio":F
    .end local v6    # "xOffset":F
    .end local v7    # "yOffset":F
    :cond_4
    return-void

    .line 257
    .restart local v1    # "inputAspectRatio":F
    .restart local v4    # "outputAspectRatio":F
    .restart local v6    # "xOffset":F
    .restart local v7    # "yOffset":F
    :cond_5
    div-float v8, v3, v4

    sub-float v8, v2, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v7, v8, v9

    .line 258
    div-float v8, v7, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    goto/16 :goto_0

    .line 291
    .end local v1    # "inputAspectRatio":F
    .end local v4    # "outputAspectRatio":F
    .end local v6    # "xOffset":F
    .end local v7    # "yOffset":F
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, p1

    if-ge v0, v8, :cond_4

    .line 292
    aget v8, p1, v0

    aput v8, p3, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private declared-synchronized setupMediaPlayer(Z)Z
    .locals 9
    .param p1, "useUrl"    # Z

    .prologue
    const/4 v8, 0x1

    .line 592
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPrepared:Z

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mGotSize:Z

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPlaying:Z

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPaused:Z

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mNewFrameAvailable:Z

    .line 599
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Setting up playback."

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 603
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Resetting existing MediaPlayer."

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 612
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create a MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 607
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Creating new MediaPlayer."

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 608
    :cond_3
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 617
    :cond_4
    if-eqz p1, :cond_8

    .line 618
    :try_start_2
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting MediaPlayer source to URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 619
    :cond_5
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 620
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLooping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLooping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 659
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mVolume:F

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 662
    new-instance v7, Landroid/view/Surface;

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v7, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 663
    .local v7, "surface":Landroid/view/Surface;
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 664
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 668
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 669
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 670
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 673
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 675
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Preparing MediaPlayer."

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 676
    :cond_6
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 677
    monitor-exit p0

    return v8

    .line 622
    .end local v7    # "surface":Landroid/view/Surface;
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 628
    :catch_0
    move-exception v6

    .line 629
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 632
    if-eqz p1, :cond_a

    .line 633
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to URL %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 625
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_6
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting MediaPlayer source to asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 626
    :cond_9
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 637
    :catch_1
    move-exception v6

    .line 638
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 639
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 641
    if-eqz p1, :cond_b

    .line 642
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to URL %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 635
    .local v6, "e":Ljava/io/IOException;
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to asset %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 644
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to asset %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 646
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 647
    .local v6, "e":Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 648
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 650
    if-eqz p1, :cond_c

    .line 651
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to URL %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 653
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to asset %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPrepared:Z

    .line 498
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mGotSize:Z

    .line 499
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPlaying:Z

    .line 500
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPaused:Z

    .line 501
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    .line 502
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mNewFrameAvailable:Z

    .line 504
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 505
    iput-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 506
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 507
    iput-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 508
    iget-boolean v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    const-string v3, "MediaSource closed"

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 509
    :cond_1
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v2, 0x64

    .line 526
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, "Parameter update"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 527
    :cond_0
    const-string v0, "sourceUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, "Opening new source URL"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 530
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    if-eqz v0, :cond_2

    .line 531
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setupMediaPlayer(Z)Z

    .line 566
    :cond_2
    :goto_0
    return-void

    .line 534
    :cond_3
    const-string v0, "sourceAsset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, "Opening new source FD"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 537
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    if-nez v0, :cond_2

    .line 538
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setupMediaPlayer(Z)Z

    goto :goto_0

    .line 541
    :cond_5
    const-string v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 545
    :cond_6
    const-string v0, "sourceIsUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 546
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    if-eqz v0, :cond_8

    .line 548
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, "Opening new source URL"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 552
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setupMediaPlayer(Z)Z

    goto :goto_0

    .line 550
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, "Opening new source Asset"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_1

    .line 554
    :cond_9
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 555
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mVolume:F

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 558
    :cond_a
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mGotSize:Z

    if-eqz v0, :cond_2

    .line 559
    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_c

    .line 560
    :cond_b
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mWidth:I

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 564
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientationUpdated:Z

    goto/16 :goto_0

    .line 562
    :cond_c
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mHeight:I

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_2
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 223
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 224
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v3, 0x64

    .line 311
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, "Opening MediaSource"

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 313
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current URL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 320
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 325
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 327
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setupMediaPlayer(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error setting up MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, "Current source is Asset!"

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientationUpdated:Z

    .line 332
    return-void
.end method

.method public declared-synchronized pauseVideo(Z)V
    .locals 1
    .param p1, "pauseState"    # Z

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPaused:Z

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 576
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 572
    :cond_1
    if-nez p1, :cond_0

    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPaused:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 299
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Preparing MediaSource"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 301
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 304
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 306
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->createFormats()V

    .line 307
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 24
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "Processing new frame"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 339
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_1

    .line 341
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v7, "Unexpected null media player!"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 344
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    if-eqz v5, :cond_2

    .line 346
    const-string v5, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->closeOutputPort(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPlaying:Z

    if-nez v5, :cond_7

    .line 351
    const/16 v21, 0x0

    .line 352
    .local v21, "waitCount":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "Waiting for preparation to complete"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 353
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mGotSize:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPrepared:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_6

    .line 355
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mGotSize:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mGotSize:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPrepared:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPrepared:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 356
    const-wide/16 v10, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    if-eqz v5, :cond_5

    .line 362
    const-string v5, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->closeOutputPort(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_5
    add-int/lit8 v21, v21, 0x1

    .line 366
    const/16 v5, 0x12c

    move/from16 v0, v21

    if-ne v0, v5, :cond_3

    .line 367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 368
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "MediaPlayer timed out while preparing!"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 372
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MediaPlayer starting playback offset("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInitOffsetTime:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mInitOffsetTime:I

    invoke-virtual {v5, v7}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 379
    .end local v21    # "waitCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPaused:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPlaying:Z

    if-nez v5, :cond_10

    .line 380
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mWaitForNewFrame:Z

    if-eqz v5, :cond_e

    .line 381
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "Waiting for new frame"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 383
    :cond_9
    const/16 v21, 0x0

    .line 384
    .restart local v21    # "waitCount":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mNewFrameAvailable:Z

    if-nez v5, :cond_d

    .line 385
    const/16 v5, 0xa

    move/from16 v0, v21

    if-ne v0, v5, :cond_b

    .line 386
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    if-eqz v5, :cond_a

    .line 388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "closeOutputPort(video);"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 389
    const-string v5, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->closeOutputPort(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "the filter already completed !"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "ignore this.wait()"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 399
    :cond_b
    const-wide/16 v10, 0x64

    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 404
    :cond_c
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 400
    :catch_0
    move-exception v18

    .line 401
    .local v18, "e":Ljava/lang/InterruptedException;
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "interrupted"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_3

    .line 406
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mNewFrameAvailable:Z

    .line 407
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "Got new frame"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 410
    .end local v21    # "waitCount":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    if-eqz v5, :cond_f

    .line 411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v9, "the filter already completed ! ignore this frame"

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 418
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientationUpdated:Z

    if-eqz v5, :cond_12

    .line 419
    const/16 v5, 0x10

    new-array v6, v5, [F

    .line 420
    .local v6, "surfaceTransform":[F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 422
    const/16 v5, 0x10

    new-array v8, v5, [F

    .line 423
    .local v8, "sourceCoordsin":[F
    const/16 v5, 0x10

    new-array v4, v5, [F

    .line 424
    .local v4, "sourceCoords":[F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    sparse-switch v5, :sswitch_data_0

    .line 427
    sget-object v5, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_0:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setSourceRect([FI[F)V

    .line 428
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 451
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v5, :cond_11

    .line 452
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OrientationHint = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 453
    const-string v5, "SetSourceRegion: %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x4

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x5

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x4

    const/16 v10, 0xc

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x5

    const/16 v10, 0xd

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x6

    const/16 v10, 0x8

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x7

    const/16 v10, 0x9

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 456
    .local v20, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    move-object/from16 v0, v20

    invoke-virtual {v5, v7, v0}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 458
    .end local v20    # "temp":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    const/4 v5, 0x4

    aget v10, v4, v5

    const/4 v5, 0x5

    aget v11, v4, v5

    const/4 v5, 0x0

    aget v12, v4, v5

    const/4 v5, 0x1

    aget v13, v4, v5

    const/16 v5, 0xc

    aget v14, v4, v5

    const/16 v5, 0xd

    aget v15, v4, v5

    const/16 v5, 0x8

    aget v16, v4, v5

    const/16 v5, 0x9

    aget v17, v4, v5

    invoke-virtual/range {v9 .. v17}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 462
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOrientationUpdated:Z

    .line 465
    .end local v4    # "sourceCoords":[F
    .end local v6    # "surfaceTransform":[F
    .end local v8    # "sourceCoordsin":[F
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v5, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v19

    .line 466
    .local v19, "output":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v19

    invoke-virtual {v5, v7, v0}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v22

    .line 469
    .local v22, "timestamp":J
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mLogVerbose:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v22

    long-to-double v10, v0

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 470
    :cond_13
    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 472
    const-string v5, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 473
    invoke-virtual/range {v19 .. v19}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 475
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mPlaying:Z

    goto/16 :goto_0

    .line 433
    .end local v19    # "output":Landroid/filterfw/core/Frame;
    .end local v22    # "timestamp":J
    .restart local v4    # "sourceCoords":[F
    .restart local v6    # "surfaceTransform":[F
    .restart local v8    # "sourceCoordsin":[F
    :sswitch_0
    sget-object v5, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_90:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setSourceRect([FI[F)V

    .line 434
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_4

    .line 439
    :sswitch_1
    sget-object v5, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_180:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setSourceRect([FI[F)V

    .line 440
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_4

    .line 445
    :sswitch_2
    sget-object v5, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mSourceCoords_270:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setSourceRect([FI[F)V

    .line 446
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 357
    .end local v4    # "sourceCoords":[F
    .end local v6    # "surfaceTransform":[F
    .end local v8    # "sourceCoordsin":[F
    .restart local v21    # "waitCount":I
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized seekTo(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 580
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setCompleted()V
    .locals 4

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCompleted() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 480
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z

    if-nez v0, :cond_0

    .line 481
    const-string v0, "video"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->closeOutputPort(Ljava/lang/String;)V

    .line 483
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 229
    const-string v0, "video"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 231
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 516
    :cond_0
    return-void
.end method
