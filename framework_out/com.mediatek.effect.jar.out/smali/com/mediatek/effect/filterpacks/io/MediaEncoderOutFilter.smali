.class public Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderOutFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static mCount:[I = null

.field private static final mInvertShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor.r = color.r;\n  gl_FragColor.g = color.g;\n  gl_FragColor.b = color.b;\n  if (factor <= v_texcoord.x && v_texcoord.x < factor+0.1) {\n     gl_FragColor.r = 1.0;\n  }\n  gl_FragColor.a = 1.0;\n}\n"


# instance fields
.field private isRunFirstClose:Z

.field private isSubmitFirstClose:Z

.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mBitRate:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "bitrate"
    .end annotation
.end field

.field private mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "releasedListener"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mContext:Landroid/filterfw/core/FilterContext;

.field private mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "effectplayer"
    .end annotation
.end field

.field private mEndTime:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "endtime"
    .end annotation
.end field

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mIsFromMediaPlayer:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "isFromMediaPlayer"
    .end annotation
.end field

.field private mIsLivePhoto:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "livephoto"
    .end annotation
.end field

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMuteAudio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "muteAudio"
    .end annotation
.end field

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private recorderStartTimestampNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCount:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 242
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v4, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCount:[I

    invoke-direct {v4, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 77
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    .line 81
    new-instance v4, Ljava/lang/String;

    const-string v5, "/sdcard/MediaEncoderOut.mp4"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFile:Ljava/lang/String;

    .line 85
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFd:Ljava/io/FileDescriptor;

    .line 91
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mAudioSource:I

    .line 98
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 104
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMuteAudio:Z

    .line 112
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 119
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 125
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;

    .line 132
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOrientationHint:I

    .line 139
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 144
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    .line 149
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    .line 154
    const/16 v4, 0x1e

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    .line 159
    const v4, 0x7a1200

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mBitRate:I

    .line 165
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFormat:I

    .line 171
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mVideoEncoder:I

    .line 185
    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxFileSize:J

    .line 191
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxDurationMs:I

    .line 194
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsLivePhoto:Z

    .line 200
    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 203
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsFromMediaPlayer:Z

    .line 206
    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    .line 208
    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEndTime:J

    .line 219
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 220
    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 221
    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 222
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 225
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    .line 229
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    .line 230
    iput-boolean v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z

    .line 677
    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    .line 243
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    .line 244
    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v5, 0x64

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v5, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCount:[I

    invoke-virtual {v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 247
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 248
    .local v0, "bl":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v12, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 249
    .local v1, "br":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v9, v12}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 250
    .local v2, "tl":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v12, v12}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 251
    .local v3, "tr":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/player/EffectPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    return-object v0
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 13
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v12, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 397
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v8, "Starting recording"

    invoke-virtual {v5, v12, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 400
    new-instance v2, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v5, 0x2

    const/4 v8, 0x3

    invoke-direct {v2, v5, v8}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 402
    .local v2, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 405
    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    if-lez v5, :cond_2

    move v4, v6

    .line 408
    .local v4, "widthHeightSpecified":Z
    :goto_0
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 409
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 410
    .local v3, "width":I
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 415
    .local v1, "height":I
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 416
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    const/16 v8, 0x65

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v2, v8, v10, v11}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 421
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 422
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->updateMediaRecorderParams()V

    .line 424
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v8, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;

    invoke-direct {v8, p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;-><init>(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)V

    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 442
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 455
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V

    .line 456
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    .line 457
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v5

    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    .line 459
    iget-boolean v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Open: registering surface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from Mediarecorder"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v12, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 460
    :cond_0
    iput v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 461
    iput-boolean v6, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 464
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v5, :cond_1

    .line 465
    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    iget-object v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v8, -0x1

    invoke-interface {v5, v7, v6, v8}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    .line 468
    :cond_1
    return-void

    .end local v1    # "height":I
    .end local v3    # "width":I
    .end local v4    # "widthHeightSpecified":Z
    :cond_2
    move v4, v7

    .line 405
    goto/16 :goto_0

    .line 412
    .restart local v4    # "widthHeightSpecified":Z
    :cond_3
    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    .line 413
    .restart local v3    # "width":I
    iget v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .line 445
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 448
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unknown Exception inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private declared-synchronized stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v8, 0x1

    .line 617
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "Stopping recording"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 619
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 620
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 621
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    .line 623
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-eq v2, v8, :cond_0

    .line 624
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 630
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    const-string v4, "Unregistering surface %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 631
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 642
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 644
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-eq v2, v8, :cond_1

    .line 645
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 646
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 652
    :cond_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;

    if-eqz v2, :cond_2

    .line 653
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingDoneListener:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;

    invoke-interface {v2}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$OnRecordingDoneListener;->onRecordingDone()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 655
    :cond_2
    monitor-exit p0

    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x65

    const-string v4, "stopRecording() MediaRecorder.stop() failed!"

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 617
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateMediaRecorderParams()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 297
    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    .line 298
    const/4 v0, 0x2

    .line 299
    .local v0, "GRALLOC_BUFFER":I
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 300
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mAudioSource:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMuteAudio:Z

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mAudioSource:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_5

    .line 305
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 306
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 309
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    if-lez v2, :cond_4

    .line 310
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 314
    :goto_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 315
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 316
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMuteAudio:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    if-nez v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 318
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 319
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 320
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    .line 330
    :goto_2
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOrientationHint:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 331
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 333
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 334
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_6

    .line 335
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 340
    :goto_3
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxFileSize:J

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_4
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMaxDurationMs:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 352
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsLivePhoto:Z

    if-eqz v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v2, v3}, Lcom/mediatek/media/MediaRecorderEx;->setLivePhotoTag(Landroid/media/MediaRecorder;I)V

    .line 355
    :cond_2
    return-void

    .line 297
    .end local v0    # "GRALLOC_BUFFER":I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 312
    .restart local v0    # "GRALLOC_BUFFER":I
    :cond_4
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_1

    .line 324
    :cond_5
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mBitRate:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 325
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFormat:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 326
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mVideoEncoder:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 327
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mWidth:I

    iget v5, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 328
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_2

    .line 337
    :cond_6
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 341
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting maxFileSize on MediaRecorder unsuccessful! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_4
.end method

.method private updateSourceRegion()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 286
    .local v0, "flippedRegion":Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 287
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 288
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 289
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 290
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 291
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Closing"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 660
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 661
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mContext:Landroid/filterfw/core/FilterContext;

    .line 662
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been updated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 270
    :cond_0
    const-string v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    const-string v0, "inputRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->updateSourceRegion()V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change recording parameters when the filter is recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
    .line 256
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 257
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 258
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Opening"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->updateSourceRegion()V

    .line 390
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 391
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    .line 392
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z

    .line 393
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mContext:Landroid/filterfw/core/FilterContext;

    .line 394
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "Preparing"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 378
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    .line 384
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v8, 0x1

    .line 519
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 521
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string v3, "videoframe"

    invoke-virtual {p0, v3}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 524
    .local v2, "input":Landroid/filterfw/core/Frame;
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    if-eqz v3, :cond_0

    .line 525
    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 528
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecording:Z

    if-nez v3, :cond_1

    .line 529
    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 532
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mRecordingActive:Z

    if-nez v3, :cond_3

    .line 534
    const-string v3, "videoframe"

    invoke-virtual {p0, v3}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/InputPort;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 538
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-eq v3, v8, :cond_2

    .line 542
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_6

    .line 543
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->skipFrameAndModifyTimestamp(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 550
    :goto_1
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mIsFromMediaPlayer:Z

    if-eqz v3, :cond_5

    .line 552
    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEndTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEndTime:J

    iget-wide v6, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    .line 553
    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stop recording !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 554
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    .line 556
    :cond_4
    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    iget-wide v6, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 560
    :cond_5
    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v1, v3}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 567
    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v3, v2, v4}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 577
    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 580
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 581
    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    .line 584
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isSubmitFirstClose:Z

    if-ne v3, v8, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z

    if-nez v3, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->stopPrepare()V

    .line 586
    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x77

    const-string v5, "Encoder close Thread part 1: wait OnInfo()"

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 587
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->isRunFirstClose:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x77

    const-string v5, "call MediaRecorder.stop()"

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 594
    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v4, 0x65

    const-string v5, "MediaRecorder.stop() failed!"

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 597
    new-instance v3, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v4, "MediaRecorder.stop() failed!"

    invoke-direct {v3, v4, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    .end local v2    # "input":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 547
    .restart local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    .restart local v2    # "input":Landroid/filterfw/core/Frame;
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 263
    const-string v0, "videoframe"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 265
    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 13
    .param p1, "timestampNs"    # J

    .prologue
    const-wide/32 v10, 0x3b9aca00

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v8, 0x64

    .line 471
    iget-boolean v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipFrameAndModifyTimestamp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recorderStartTimestampNs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 474
    :cond_0
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->recorderStartTimestampNs:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 510
    :cond_1
    :goto_0
    return v0

    .line 478
    :cond_2
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    if-nez v2, :cond_4

    .line 479
    iput-wide p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 480
    iput-wide p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 481
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: FIRST frame, last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    :cond_3
    move v0, v1

    .line 484
    goto :goto_0

    .line 490
    :cond_4
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mNumFramesEncoded:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_5

    .line 495
    iget-boolean v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v2, "timelapse: skipping intermediate frame"

    invoke-virtual {v1, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: encoding frame, Timestamp t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 505
    :cond_6
    iput-wide p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 506
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    iget v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    int-to-long v4, v0

    div-long v4, v10, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    .line 507
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mLogVerbose:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: encoding frame, setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delta t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    int-to-long v4, v3

    div-long v4, v10, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    :cond_7
    move v0, v1

    .line 510
    goto/16 :goto_0
.end method

.method public declared-synchronized stopPrepare()V
    .locals 8

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 606
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 607
    .local v0, "bb":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x65

    const-string v4, "Unregistering surface %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 610
    iget v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 612
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 613
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 604
    .end local v0    # "bb":Landroid/graphics/Bitmap;
    .end local v1    # "glEnv":Landroid/filterfw/core/GLEnvironment;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "tearDown()"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 675
    :cond_1
    return-void
.end method
