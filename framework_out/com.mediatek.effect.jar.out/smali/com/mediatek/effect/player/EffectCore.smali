.class public Lcom/mediatek/effect/player/EffectCore;
.super Ljava/lang/Object;
.source "EffectCore.java"


# static fields
.field public static final FILTER_BLACKWHITE:I = 0x1

.field public static final FILTER_COLORTEMPERATURE:I = 0x2

.field public static final FILTER_CROSSPROCESS:I = 0x3

.field public static final FILTER_DOCUMENTARY:I = 0x4

.field public static final FILTER_DUOTONE:I = 0x5

.field public static final FILTER_FILLLIGHT:I = 0x6

.field public static final FILTER_FISHEYE:I = 0x7

.field public static final FILTER_FLIP:I = 0x9

.field public static final FILTER_GF_BIG_EYES:I = 0x15

.field public static final FILTER_GF_BIG_MOUTH:I = 0x16

.field public static final FILTER_GF_BIG_NOSE:I = 0x18

.field public static final FILTER_GF_SMALL_EYES:I = 0x19

.field public static final FILTER_GF_SMALL_MOUTH:I = 0x17

.field public static final FILTER_GF_SQUEEZE:I = 0x14

.field public static final FILTER_GRAIN:I = 0xa

.field public static final FILTER_GRAY:I = 0x12

.field public static final FILTER_LOMOISH:I = 0xb

.field public static final FILTER_NEGATIVE:I = 0xc

.field public static final FILTER_POSTERIZE:I = 0xd

.field public static final FILTER_PROCESS_MAX:I = 0x1b

.field public static final FILTER_RANDOMIZE_EFFECT:I = 0x1a

.field public static final FILTER_ROTATION:I = 0x8

.field public static final FILTER_SATURATE:I = 0xe

.field public static final FILTER_SEPIA:I = 0xf

.field public static final FILTER_SHARPEN:I = 0x10

.field public static final FILTER_TINT:I = 0x11

.field public static final FILTER_VIDEO_TRANSITION:I = 0x1b

.field public static final FILTER_VIGNETTE:I = 0x13

.field public static final MAX_FILTER_EFFECT:I = 0x19

.field public static final MAX_NORMAL_FILTER_EFFECT:I = 0x13

.field private static mCount:[I


# instance fields
.field public isGraphRunning:Z

.field public mCntx:Landroid/content/Context;

.field private mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

.field public mEffectVideoUri:Ljava/lang/String;

.field private mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

.field protected mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFilterEffectSettingValue:I

.field private mFilterRealEffect:I

.field private mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field private mGraphString:Ljava/lang/String;

.field private mHeight:I

.field private mIgnoreMainFrameStreem:Z

.field private mInputHeight:I

.field private mInputWidth:I

.field private mIsFromMediaPlayer:Z

.field private mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

.field private mRecorderProfile:Landroid/media/CamcorderProfile;

.field private mRecordingPath:Ljava/lang/String;

.field private mRunner:Landroid/filterfw/core/GraphRunner;

.field private mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

.field private mTextureView:Landroid/view/TextureView;

.field private mTextureViewOriginalImg:Landroid/view/TextureView;

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

.field private mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/player/EffectCore;->mCount:[I

    return-void
.end method

.method public constructor <init>(IILcom/mediatek/effect/player/EffectPlayer;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "player"    # Lcom/mediatek/effect/player/EffectPlayer;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/player/EffectCore;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 112
    iput v4, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterEffectSettingValue:I

    .line 113
    iput v4, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    .line 115
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 116
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 119
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    .line 120
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    .line 121
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 123
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 124
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    .line 125
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureViewOriginalImg:Landroid/view/TextureView;

    .line 127
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

    .line 129
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    .line 140
    iput v4, p0, Lcom/mediatek/effect/player/EffectCore;->mInputWidth:I

    .line 141
    iput v4, p0, Lcom/mediatek/effect/player/EffectCore;->mInputHeight:I

    .line 142
    iput-boolean v4, p0, Lcom/mediatek/effect/player/EffectCore;->mIgnoreMainFrameStreem:Z

    .line 144
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mRecorderProfile:Landroid/media/CamcorderProfile;

    .line 145
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mRecordingPath:Ljava/lang/String;

    .line 146
    iput-boolean v4, p0, Lcom/mediatek/effect/player/EffectCore;->mIsFromMediaPlayer:Z

    .line 148
    new-instance v0, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-direct {v0}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;-><init>()V

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .line 150
    iput-boolean v4, p0, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    .line 151
    iput-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 157
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 158
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/player/EffectCore;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/effect/player/EffectCore;->setOntputSize(II)V

    .line 162
    iput-object p3, p0, Lcom/mediatek/effect/player/EffectCore;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    .line 164
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/effect/player/EffectCore;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCore;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCore;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/ProcessDoneListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCore;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectCore;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    return-object v0
.end method

.method public static getGraphEffectName(I)Ljava/lang/String;
    .locals 1
    .param p0, "filter"    # I

    .prologue
    .line 296
    const-string v0, ""

    .line 297
    .local v0, "name":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 407
    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    const-string v0, "BLACKWHITE"

    .line 300
    goto :goto_0

    .line 303
    :pswitch_1
    const-string v0, "COLORTEMPERATURE"

    .line 304
    goto :goto_0

    .line 307
    :pswitch_2
    const-string v0, "CROSSPROCESS"

    .line 308
    goto :goto_0

    .line 311
    :pswitch_3
    const-string v0, "DOCUMENTARY"

    .line 312
    goto :goto_0

    .line 315
    :pswitch_4
    const-string v0, "DUOTONE"

    .line 316
    goto :goto_0

    .line 319
    :pswitch_5
    const-string v0, "FILLLIGHT"

    .line 320
    goto :goto_0

    .line 323
    :pswitch_6
    const-string v0, "FISHEYE"

    .line 324
    goto :goto_0

    .line 327
    :pswitch_7
    const-string v0, "ROTATION"

    .line 328
    goto :goto_0

    .line 331
    :pswitch_8
    const-string v0, "FLIP"

    .line 332
    goto :goto_0

    .line 335
    :pswitch_9
    const-string v0, "GRAIN"

    .line 336
    goto :goto_0

    .line 339
    :pswitch_a
    const-string v0, "LOMO"

    .line 340
    goto :goto_0

    .line 343
    :pswitch_b
    const-string v0, "NEGATIVE"

    .line 344
    goto :goto_0

    .line 347
    :pswitch_c
    const-string v0, "POSTERIZE"

    .line 348
    goto :goto_0

    .line 351
    :pswitch_d
    const-string v0, "SATURATE"

    .line 352
    goto :goto_0

    .line 355
    :pswitch_e
    const-string v0, "SEPIA"

    .line 356
    goto :goto_0

    .line 359
    :pswitch_f
    const-string v0, "SHARPEN"

    .line 360
    goto :goto_0

    .line 363
    :pswitch_10
    const-string v0, "TINT"

    .line 364
    goto :goto_0

    .line 367
    :pswitch_11
    const-string v0, "GRAY"

    .line 368
    goto :goto_0

    .line 371
    :pswitch_12
    const-string v0, "VIGNETTE"

    .line 372
    goto :goto_0

    .line 375
    :pswitch_13
    const-string v0, "SQUEEZE"

    .line 376
    goto :goto_0

    .line 379
    :pswitch_14
    const-string v0, "BIG_EYES"

    .line 380
    goto :goto_0

    .line 383
    :pswitch_15
    const-string v0, "BIG_MOUTH"

    .line 384
    goto :goto_0

    .line 387
    :pswitch_16
    const-string v0, "SMALL_MOUTH"

    .line 388
    goto :goto_0

    .line 391
    :pswitch_17
    const-string v0, "BIG_NOSE"

    .line 392
    goto :goto_0

    .line 395
    :pswitch_18
    const-string v0, "SMALL_EYES"

    .line 396
    goto :goto_0

    .line 399
    :pswitch_19
    const-string v0, "RANDOMIZE"

    .line 400
    goto :goto_0

    .line 403
    :pswitch_1a
    const-string v0, "TRANSITION"

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method private getGraphEffectStringByIndex(III)Ljava/lang/String;
    .locals 3
    .param p1, "filter"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 412
    const-string v0, ""

    .line 413
    .local v0, "graph":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 536
    :goto_0
    :pswitch_0
    return-object v0

    .line 415
    :pswitch_1
    const-string v0, "@filter BlackWhiteFilter filterA {\n  black = 0.3f;  white = 0.5f;}\n\n"

    .line 419
    goto :goto_0

    .line 422
    :pswitch_2
    const-string v0, "@filter ColorTemperatureFilter filterA {\n  scale = 0.9f;}\n\n"

    .line 425
    goto :goto_0

    .line 428
    :pswitch_3
    const-string v0, "@filter CrossProcessFilter filterA {\n}\n\n"

    .line 430
    goto :goto_0

    .line 433
    :pswitch_4
    const-string v0, "@filter DocumentaryFilter filterA {\n}\n\n"

    .line 435
    goto :goto_0

    .line 438
    :pswitch_5
    const-string v0, "@filter DuotoneFilter filterA {\n}\n\n"

    .line 440
    goto :goto_0

    .line 443
    :pswitch_6
    const-string v0, "@filter FillLightFilter filterA {\n  strength = 0.9f;}\n\n"

    .line 446
    goto :goto_0

    .line 449
    :pswitch_7
    const-string v0, "@filter FisheyeFilter filterA {\n  scale = 0.9f;}\n\n"

    .line 452
    goto :goto_0

    .line 455
    :pswitch_8
    const-string v0, "@filter FixedRotationFilter filterA {\n  rotation = 180;}\n\n"

    .line 458
    goto :goto_0

    .line 461
    :pswitch_9
    const-string v0, "@filter FlipFilter filterA {\n  horizontal = true;}\n\n"

    .line 464
    goto :goto_0

    .line 467
    :pswitch_a
    const-string v0, "@filter GrainFilter filterA {\n  strength = 0.8f;}\n\n"

    .line 470
    goto :goto_0

    .line 473
    :pswitch_b
    const-string v0, "@filter LomoishFilter filterA {\n}\n\n"

    .line 475
    goto :goto_0

    .line 478
    :pswitch_c
    const-string v0, "@filter NegativeFilter filterA {\n}\n\n"

    .line 480
    goto :goto_0

    .line 483
    :pswitch_d
    const-string v0, "@filter PosterizeFilter filterA {\n}\n\n"

    .line 485
    goto :goto_0

    .line 488
    :pswitch_e
    const-string v0, "@filter SaturateFilter filterA {\n  scale = 0.9f;}\n\n"

    .line 491
    goto :goto_0

    .line 494
    :pswitch_f
    const-string v0, "@filter SepiaFilter filterA {\n}\n\n"

    .line 496
    goto :goto_0

    .line 499
    :pswitch_10
    const-string v0, "@filter SharpenFilter filterA {\n  scale = 0.9f;}\n\n"

    .line 502
    goto :goto_0

    .line 505
    :pswitch_11
    const-string v0, "@filter TintFilter filterA {\n  tint = 65280;}\n\n"

    .line 508
    goto :goto_0

    .line 511
    :pswitch_12
    const-string v0, "@filter ToGrayFilter filterA {\n}\n\n"

    .line 513
    goto :goto_0

    .line 516
    :pswitch_13
    const-string v0, "@filter VignetteFilter filterA {\n  scale = 0.7f;}\n\n"

    .line 519
    goto :goto_0

    .line 522
    :pswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@filter VideoEventFilter filterA {\n}\n\n@filter MediaSourceInFilter videoeffect {\n  sourceUrl = \"no_file_specified\";\n  waitForNewFrame = true;\n  width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  orientation = $orientation;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch
.end method

.method private getGraphOutputViewString(IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outName"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string v0, ""

    .line 256
    .local v0, "outputFilter":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    if-eqz v1, :cond_1

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@filter SurfaceViewOutFilter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  surfaceView = $OutputSurfaceView;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@filter TextureViewOutFilter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  textureView = $OutputTextureView;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private graphConstruct(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "orientationOrg"    # I

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@setting autoBranch = \"synced\";\n@import android.filterpacks.ui;\n@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import android.filterpacks.videosrc;\n@import android.filterpacks.videosink;\n@import com.mediatek.effect.filterpacks;\n@import com.mediatek.effect.filterpacks.io;\n\n@external OutputSurfaceView;\n@external OutputTextureView;\n@external OutputTextureView1;\n@set orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@set orientationOrg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter SurfaceTextureInFilter source {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  waitForNewFrame = true;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  orientation = $orientation;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display"

    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/effect/player/EffectCore;->getGraphOutputViewString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    invoke-direct {p0, v1, p1, p2}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffectStringByIndex(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 588
    iget v0, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    if-gtz v0, :cond_4

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect source[video] => display[frame];\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 603
    :cond_0
    :goto_0
    const/16 v0, 0x14

    iget v1, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@setting autoBranch = \"synced\";\n@import android.filterpacks.videosrc;\n@import android.filterpacks.videosink;\n@import android.filterpacks.ui;\n@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import android.filterpacks.videosink;\n@import com.mediatek.effect.filterpacks;\n@import com.mediatek.effect.filterpacks.io;\n@import com.google.android.filterpacks.facedetect;\n\n@setting autoBranch = \"synced\";\n\n\n@external OutputSurfaceView;\n@external OutputTextureView;\n@external OutputTextureView1;\n@set orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@set orientationOrg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter SurfaceTextureInFilter source {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  waitForNewFrame = true;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  orientation = $orientation;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display"

    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/effect/player/EffectCore;->getGraphOutputViewString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter ToPackedGrayFilter toPackedGray {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    owidth = 320;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    oheight = 240;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    keepAspectRatio = true;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter MultiFaceTrackerFilter faceTracker {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    numChannelsDetector = 3;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    quality = 0.0f;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    smoothness = 0.2f;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    minEyeDist = 25.0f;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    rollRange = 45.0f;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    numSkipFrames = 9;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    trackingError = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mouthOnlySmoothing = 0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    useAffineCorrection = 1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    patchSize = 15;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter GoofyFastRenderFilter goofyrenderer {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    distortionAmount = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter FixedRotationFilter rotate {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    rotation = 0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter FaceMetaFixedRotationFilter metarotate {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    rotation = 0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect source[video] => rotate[image];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect rotate[image] => toPackedGray[image];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect toPackedGray[image] => faceTracker[image];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect source[video] => goofyrenderer[image];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect faceTracker[faces] => metarotate[faces];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect metarotate[faces] => goofyrenderer[faces];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 671
    invoke-direct {p0}, Lcom/mediatek/effect/player/EffectCore;->hasViewForOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect goofyrenderer[outimage] => display[frame];\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureViewOriginalImg:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter TextureViewOutFilter displayWithoutEffect {\n  textureView = $OutputTextureView1;\n  width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect source[video] => displayWithoutEffect[frame];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mRecordingPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@filter MediaEncoderOutFilter recorder {\n  orientationHint = $orientationOrg;\n  recording = true;\n  width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  outputFile = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mRecordingPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 697
    iget v0, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    if-gtz v0, :cond_6

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect source[video] => recorder[videoframe];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 703
    :cond_3
    :goto_1
    return-void

    .line 591
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect source[video] => filterA[image];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 593
    iget v0, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_5

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect videoeffect[video] => filterA[video];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    .line 598
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/effect/player/EffectCore;->hasViewForOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect filterA[image] => display[frame];\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    goto/16 :goto_0

    .line 700
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@connect filterA[image] => recorder[videoframe];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    goto :goto_1
.end method

.method private hasViewForOutput()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filterName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 540
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 544
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 545
    :try_start_0
    new-instance v3, Ljava/lang/Thread;

    const-string v5, "isAvailable"

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 546
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 548
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 555
    .local v2, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-class v5, Landroid/filterfw/core/Filter;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    const/4 v4, 0x1

    .end local v2    # "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v4

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 556
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static isGMSGoofySupport()Z
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/mediatek/effect/player/EffectCore;->isSupport(I)Z

    move-result v0

    return v0
.end method

.method public static isSupport(I)Z
    .locals 5
    .param p0, "effect"    # I

    .prologue
    .line 185
    const-string v1, "EffectCoreUtility"

    .line 187
    .local v1, "TAG":Ljava/lang/String;
    const-string v2, "EffectCoreUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/16 v2, 0x14

    if-gt v2, p0, :cond_0

    const/16 v2, 0x19

    if-gt p0, v2, :cond_0

    .line 189
    const-string v2, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 190
    .local v0, "Support":Z
    const-string v2, "EffectCoreUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSupport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "Support":Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setEffectInternal(I)V
    .locals 5
    .param p1, "effect"    # I

    .prologue
    const/16 v4, 0x64

    .line 214
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectInternal ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 216
    const/16 v1, 0x14

    if-gt v1, p1, :cond_0

    const/16 v1, 0x19

    if-gt p1, v1, :cond_0

    .line 217
    invoke-static {}, Lcom/mediatek/effect/player/EffectCore;->isGMSGoofySupport()Z

    move-result v0

    .line 218
    .local v0, "aaa":Z
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Facedetect Packs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 219
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    .line 225
    .end local v0    # "aaa":Z
    :goto_0
    return-void

    .line 224
    :cond_0
    iput p1, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    goto :goto_0
.end method

.method private setGraphCompleted()V
    .locals 6

    .prologue
    .line 1101
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    if-eqz v3, :cond_0

    .line 1102
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    const-string v4, "recording"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    :cond_0
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    if-eqz v3, :cond_1

    .line 1105
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setCompleted(Z)V

    .line 1107
    :cond_1
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v3, :cond_2

    .line 1108
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    .line 1109
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    if-eqz v1, :cond_2

    .line 1110
    const-string v3, "videoeffect"

    invoke-virtual {v1, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 1111
    .local v0, "filter":Landroid/filterfw/core/Filter;
    instance-of v3, v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 1112
    check-cast v2, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    .line 1113
    .local v2, "videoeffect":Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    if-eqz v2, :cond_2

    .line 1114
    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->setCompleted()V

    .line 1118
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    .end local v1    # "graph":Landroid/filterfw/core/FilterGraph;
    .end local v2    # "videoeffect":Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkEffect()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffectSetting()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 203
    invoke-static {}, Lcom/mediatek/effect/player/EffectCore;->isGMSGoofySupport()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/effect/player/EffectCore;->setEffectInternal(I)V

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4033000000000000L    # 19.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/effect/player/EffectCore;->setEffectInternal(I)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffectSetting()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/effect/player/EffectCore;->setEffectInternal(I)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    iget v3, p0, Lcom/mediatek/effect/player/EffectCore;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/player/EffectCore;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 174
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 175
    return-void
.end method

.method public getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 717
    const/4 v1, 0x0

    .line 719
    .local v1, "ret":Landroid/filterfw/core/Filter;
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/filterfw/GraphEnvironment;->getGraph(I)Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    .line 721
    .local v0, "graph":Landroid/filterfw/core/FilterGraph;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 724
    .end local v0    # "graph":Landroid/filterfw/core/FilterGraph;
    :cond_0
    return-object v1
.end method

.method public getGraphEffect()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    return v0
.end method

.method public getGraphEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    invoke-static {v0}, Lcom/mediatek/effect/player/EffectCore;->getGraphEffectName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGraphEffectSetting()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterEffectSettingValue:I

    return v0
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 5

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1082
    .local v0, "localSurfaceTexture":Landroid/graphics/SurfaceTexture;
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInputSurfaceTexture(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1083
    return-object v0
.end method

.method public getInputTextureId()I
    .locals 5

    .prologue
    .line 1087
    const/4 v0, 0x0

    .line 1088
    .local v0, "localTextureId":I
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    invoke-virtual {v1}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->getTextureId()I

    move-result v0

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInputTextureId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1092
    return v0
.end method

.method public getSurfaceView()Landroid/filterfw/core/FilterSurfaceView;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getTextureViewOriginal()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureViewOriginalImg:Landroid/view/TextureView;

    return-object v0
.end method

.method public declared-synchronized graphCleanResource()V
    .locals 6

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "graphCleanResource()"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1016
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v2, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/mediatek/effect/player/EffectCore;->graphCleanResourceDisconnectDisplay()V

    .line 1020
    :cond_0
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    if-eqz v2, :cond_2

    .line 1021
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "Tear down graph"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 1026
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1027
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 1029
    :cond_1
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v3}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 1030
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1031
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    .end local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :cond_2
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v2, :cond_3

    .line 1040
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->close()V

    .line 1042
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 1044
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 1046
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    .line 1047
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1048
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    .line 1049
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureViewOriginalImg:Landroid/view/TextureView;

    .line 1051
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "graphCleanResource() done"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1035
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1014
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public graphCleanResourceDisconnectDisplay()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 1055
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v3, "disconnect display of the graph"

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1056
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v2, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 1060
    .local v0, "display":Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;

    if-eqz v2, :cond_2

    .line 1061
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting the graph from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    move-object v1, v0

    .line 1062
    check-cast v1, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;

    .line 1063
    .local v1, "outFilter":Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->disconnect(Landroid/filterfw/core/FilterContext;)V

    .line 1066
    .end local v1    # "outFilter":Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    const-string v3, "displayWithoutEffect"

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;

    if-eqz v2, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting the graph from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureViewOriginalImg:Landroid/view/TextureView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    move-object v1, v0

    .line 1069
    check-cast v1, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;

    .line 1070
    .restart local v1    # "outFilter":Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/effect/filterpacks/io/TextureViewOutFilter;->disconnect(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0
.end method

.method public graphClose()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 991
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v2, "graphClose()"

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 993
    invoke-direct {p0}, Lcom/mediatek/effect/player/EffectCore;->setGraphCompleted()V

    .line 995
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 996
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for EffetThread released !! isGraphRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 998
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1004
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v2, "mRunner.close()"

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1006
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->close()V

    .line 1007
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v2, "mRunner.close() done"

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v2, "graphClose() done"

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 1011
    return-void
.end method

.method public declared-synchronized graphCreate()Z
    .locals 24

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    const-string v22, "graphCreate()"

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/effect/player/EffectCore;->checkEffect()V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/effect/player/EffectCore;->hasTargetOutput()Z

    move-result v20

    if-nez v20, :cond_0

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x77

    const-string v22, "There is no target view for output"

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRecordingPath:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x77

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Only Recorder to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRecordingPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 742
    :cond_0
    const/4 v13, 0x0

    .line 743
    .local v13, "orientation":I
    const/4 v14, 0x0

    .line 744
    .local v14, "orientationVideoSrc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "orientation"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    if-eqz v20, :cond_1

    .line 746
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "orientation"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 747
    const/4 v14, 0x0

    .line 752
    :cond_1
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v14, v13}, Lcom/mediatek/effect/player/EffectCore;->graphConstruct(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 755
    :try_start_3
    new-instance v20, Landroid/filterfw/GraphEnvironment;

    invoke-direct/range {v20 .. v20}, Landroid/filterfw/GraphEnvironment;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/GraphEnvironment;->createGLEnvironment()V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "OutputSurfaceView"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "OutputTextureView"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "OutputTextureView1"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTextureViewOriginalImg:Landroid/view/TextureView;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object v10

    .line 762
    .local v10, "graph":Landroid/filterfw/core/FilterGraph;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/filterfw/GraphEnvironment;->addGraph(Landroid/filterfw/core/FilterGraph;)I

    move-result v11

    .line 763
    .local v11, "graphId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    move-object/from16 v20, v0

    new-instance v21, Lcom/mediatek/effect/player/EffectCore$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/effect/player/EffectCore$1;-><init>(Lcom/mediatek/effect/player/EffectCore;)V

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 796
    const-string v20, "source"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v20

    check-cast v20, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    const-string v21, "inwidth"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mInputWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    const-string v21, "inheight"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mInputHeight:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setHandler(Lcom/mediatek/effect/player/EffectUiHandler;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "truncate"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    const-string v21, "truncate"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/player/EffectCore;->mIgnoreMainFrameStreem:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "IgnoreMainFrame"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    const-string v21, "width"

    const/16 v22, 0x10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    const-string v21, "height"

    const/16 v22, 0x10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    const-string v21, "ignoreframe"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    move-object/from16 v20, v0

    const-string v21, "effectplayer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 815
    :cond_3
    const-string v20, "recorder"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v20

    check-cast v20, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "isFromMediaPlayer"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/player/EffectCore;->mIsFromMediaPlayer:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "recordingProfile"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRecorderProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRecorderProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "width"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "height"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "effectplayer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "livephoto"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "livephoto"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    :cond_5
    const/16 v20, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    move/from16 v20, v0

    const/16 v21, 0x19

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_8

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v20

    const-string v21, "rotate"

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v17

    .line 832
    .local v17, "rotateFilter":Landroid/filterfw/core/Filter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v20

    const-string v21, "metarotate"

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v12

    .line 833
    .local v12, "metaRotateFilter":Landroid/filterfw/core/Filter;
    if-eqz v17, :cond_6

    if-eqz v12, :cond_6

    .line 834
    const-string v20, "rotation"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 835
    const/16 v16, 0x0

    .line 836
    .local v16, "reverseDegrees":I
    const-string v20, "rotation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v20

    const-string v21, "goofyrenderer"

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v9

    .line 839
    .local v9, "goofyFilter":Landroid/filterfw/core/Filter;
    const-string v20, "currentEffect"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x14

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 903
    .end local v9    # "goofyFilter":Landroid/filterfw/core/Filter;
    .end local v12    # "metaRotateFilter":Landroid/filterfw/core/Filter;
    .end local v16    # "reverseDegrees":I
    .end local v17    # "rotateFilter":Landroid/filterfw/core/Filter;
    :cond_6
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    const-string v22, "graphCreate() done"

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 904
    const/16 v20, 0x1

    .end local v10    # "graph":Landroid/filterfw/core/FilterGraph;
    .end local v11    # "graphId":I
    .end local v13    # "orientation":I
    .end local v14    # "orientationVideoSrc":I
    :goto_2
    monitor-exit p0

    return v20

    .line 737
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x77

    const-string v22, "Effect Stopped !"

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 738
    const/16 v20, 0x0

    goto :goto_2

    .line 748
    .restart local v13    # "orientation":I
    .restart local v14    # "orientationVideoSrc":I
    :catch_0
    move-exception v5

    .line 749
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 841
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "graph":Landroid/filterfw/core/FilterGraph;
    .restart local v11    # "graphId":I
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/player/EffectCore;->mFilterRealEffect:I

    move/from16 v20, v0

    const/16 v21, 0x1b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v20

    const-string v21, "videoeffect"

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v19

    .line 844
    .local v19, "videoeffect":Landroid/filterfw/core/Filter;
    if-eqz v19, :cond_c

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mCntx:Landroid/content/Context;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 846
    const-string v20, "context"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mCntx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "video2"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 850
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v21, v0

    const-string v22, "video2"

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/player/EffectCore;->mEffectVideoUri:Ljava/lang/String;

    .line 853
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EffectVideoUri: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEffectVideoUri:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 855
    const-string v20, "sourceIsUrl"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    const-string v20, "sourceUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEffectVideoUri:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "truncate"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 859
    const-string v20, "truncate"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "video2_init_offset"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 863
    const-string v20, "init_offset"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v22, v0

    const-string v23, "video2_init_offset"

    invoke-virtual/range {v22 .. v23}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 868
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v20

    const-string v21, "filterA"

    invoke-virtual/range {v20 .. v21}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v18

    check-cast v18, Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .line 869
    .local v18, "transition":Lcom/mediatek/effect/filterpacks/VideoEventFilter;
    const-string v20, "effectplayer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    const-string v20, "mediasourcefilter"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->setScenario(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "THEENDTIME"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 876
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v21, v0

    const-string v22, "THEENDTIME"

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 877
    .local v6, "endtime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "endtime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    .end local v6    # "endtime":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "outputvideo"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 880
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v21, v0

    const-string v22, "outputvideo"

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 881
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "outputFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 883
    .end local v15    # "path":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "outputvideo_fps"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 884
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v21, v0

    const-string v22, "outputvideo_fps"

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 885
    .local v8, "fps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "framerate"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    .end local v8    # "fps":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v20, v0

    const-string v21, "outputvideo_bitrate"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 888
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    move-object/from16 v21, v0

    const-string v22, "outputvideo_bitrate"

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 889
    .local v4, "bitrate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mEncoderFilter:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    move-object/from16 v20, v0

    const-string v21, "bitrate"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 893
    .end local v4    # "bitrate":I
    .end local v10    # "graph":Landroid/filterfw/core/FilterGraph;
    .end local v11    # "graphId":I
    .end local v18    # "transition":Lcom/mediatek/effect/filterpacks/VideoEventFilter;
    .end local v19    # "videoeffect":Landroid/filterfw/core/Filter;
    :catch_1
    move-exception v5

    .line 894
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x77

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not read graph: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 895
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 896
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 897
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v5

    .line 898
    .local v5, "e":Landroid/filterfw/io/GraphIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v20, v0

    const/16 v21, 0x77

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not read graph: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 899
    invoke-virtual {v5}, Landroid/filterfw/io/GraphIOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 900
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 728
    .end local v5    # "e":Landroid/filterfw/io/GraphIOException;
    .end local v13    # "orientation":I
    .end local v14    # "orientationVideoSrc":I
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20
.end method

.method public declared-synchronized graphRun()Landroid/graphics/SurfaceTexture;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 908
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/mediatek/effect/player/EffectCore$2;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/player/EffectCore$2;-><init>(Lcom/mediatek/effect/player/EffectCore;)V

    .line 943
    .local v0, "EffectThread":Ljava/lang/Runnable;
    iget-boolean v4, p0, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    if-nez v4, :cond_0

    .line 944
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    .line 945
    invoke-virtual {p0, v0}, Lcom/mediatek/effect/player/EffectCore;->submit(Ljava/lang/Runnable;)V

    .line 948
    :cond_0
    const/4 v2, 0x0

    .line 949
    .local v2, "waitCount":I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 951
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    if-eqz v4, :cond_1

    .line 953
    :goto_0
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    invoke-virtual {v4}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 955
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_2

    .line 975
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v4, Lcom/mediatek/effect/player/EffectCore$3;

    invoke-direct {v4, p0}, Lcom/mediatek/effect/player/EffectCore$3;-><init>(Lcom/mediatek/effect/player/EffectCore;)V

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 984
    :cond_1
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v3

    .line 959
    :cond_2
    const/16 v4, 0x64

    if-ge v2, v4, :cond_3

    :try_start_1
    iget-boolean v4, p0, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    if-nez v4, :cond_4

    .line 960
    :cond_3
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get OpenGL SurfaceTexture error ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 908
    .end local v0    # "EffectThread":Ljava/lang/Runnable;
    .end local v2    # "waitCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 964
    .restart local v0    # "EffectThread":Ljava/lang/Runnable;
    .restart local v2    # "waitCount":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 966
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 970
    :goto_2
    :try_start_4
    monitor-exit v4

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :catch_0
    move-exception v1

    .line 968
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v6, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get OpenGL SurfaceTexture error ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " times)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_2

    .line 970
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public hasTargetOutput()Z
    .locals 2

    .prologue
    .line 706
    const/4 v0, 0x1

    .line 708
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    if-nez v1, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 712
    :cond_0
    return v0
.end method

.method public setEffect(I)Z
    .locals 6
    .param p1, "effect"    # I

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x64

    .line 228
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 230
    const/16 v2, 0x14

    if-gt v2, p1, :cond_0

    const/16 v2, 0x19

    if-gt p1, v2, :cond_0

    .line 231
    invoke-static {}, Lcom/mediatek/effect/player/EffectCore;->isGMSGoofySupport()Z

    move-result v0

    .line 232
    .local v0, "aaa":Z
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Facedetect Packs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 233
    if-nez v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v3, "setEffect changed to randomization !"

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 235
    const/16 v2, 0x1a

    iput v2, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterEffectSettingValue:I

    .line 243
    .end local v0    # "aaa":Z
    :goto_0
    return v1

    .line 238
    :cond_0
    const/16 v2, 0x1b

    if-le p1, v2, :cond_1

    .line 239
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :cond_1
    iput p1, p0, Lcom/mediatek/effect/player/EffectCore;->mFilterEffectSettingValue:I

    goto :goto_0
.end method

.method public setHandler(Lcom/mediatek/effect/player/EffectUiHandler;)V
    .locals 0
    .param p1, "tv"    # Lcom/mediatek/effect/player/EffectUiHandler;

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mUIHandler:Lcom/mediatek/effect/player/EffectUiHandler;

    .line 1166
    return-void
.end method

.method public setIgnoreMainFrameStreem(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 1144
    iput-boolean p1, p0, Lcom/mediatek/effect/player/EffectCore;->mIgnoreMainFrameStreem:Z

    .line 1145
    return-void
.end method

.method public setInputSizeToFitOutputSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1139
    iput p1, p0, Lcom/mediatek/effect/player/EffectCore;->mInputWidth:I

    .line 1140
    iput p2, p0, Lcom/mediatek/effect/player/EffectCore;->mInputHeight:I

    .line 1141
    return-void
.end method

.method public setIsFromMediaPlayer(Z)V
    .locals 0
    .param p1, "is"    # Z

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/mediatek/effect/player/EffectCore;->mIsFromMediaPlayer:Z

    .line 1131
    return-void
.end method

.method public setOntputSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1148
    iput p1, p0, Lcom/mediatek/effect/player/EffectCore;->mWidth:I

    .line 1149
    iput p2, p0, Lcom/mediatek/effect/player/EffectCore;->mHeight:I

    .line 1150
    return-void
.end method

.method public setOutputSurfaceView(Landroid/filterfw/core/FilterSurfaceView;)V
    .locals 0
    .param p1, "sv"    # Landroid/filterfw/core/FilterSurfaceView;

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 1154
    return-void
.end method

.method public setOutputTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1, "tv"    # Landroid/view/TextureView;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureView:Landroid/view/TextureView;

    .line 1158
    return-void
.end method

.method public setOutputTextureViewWithoutEffect(Landroid/view/TextureView;)V
    .locals 0
    .param p1, "tv"    # Landroid/view/TextureView;

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mTextureViewOriginalImg:Landroid/view/TextureView;

    .line 1162
    return-void
.end method

.method public setProcessDoneCallBack(Lcom/mediatek/effect/filterpacks/ProcessDoneListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    .line 1170
    return-void
.end method

.method public setProcessMaxFrameCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mSourceFilter:Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;

    invoke-virtual {v0, p1}, Lcom/mediatek/effect/filterpacks/io/SurfaceTextureInFilter;->setProcessMaxFrameCount(I)V

    .line 1098
    :cond_0
    return-void
.end method

.method public setRecordingPath(Ljava/lang/String;Landroid/media/CamcorderProfile;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mRecordingPath:Ljava/lang/String;

    .line 1135
    iput-object p2, p0, Lcom/mediatek/effect/player/EffectCore;->mRecorderProfile:Landroid/media/CamcorderProfile;

    .line 1136
    return-void
.end method

.method public setResourceContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "video"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mCntx:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/mediatek/effect/player/EffectCore;->mEffectVideoUri:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setScenario(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)V
    .locals 0
    .param p1, "scenario"    # Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .prologue
    .line 1125
    if-eqz p1, :cond_0

    .line 1126
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore;->mTransitionScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .line 1127
    :cond_0
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1078
    :cond_0
    return-void
.end method
