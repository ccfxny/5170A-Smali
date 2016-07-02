.class public Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;
.super Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
.source "VideoEventOverlay.java"


# static fields
.field private static final MIN_FRAME_STEP:J = 0x25317c0L

.field private static mOverlayShader:Ljava/lang/String;


# instance fields
.field private mEdgeFrame:Landroid/filterfw/core/GLFrame;

.field private mInitOffsetTime:I

.field private mIsSeekToBegin:Z

.field private mIsWaitFirstFrame:Z

.field private mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

.field private mMergeProgram:Landroid/filterfw/core/ShaderProgram;

.field private mPreviousFrame:Landroid/filterfw/core/GLFrame;

.field private mStillBgFrame:Landroid/filterfw/core/GLFrame;

.field private mVideoPrevRelatedTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float fgfactor;\nuniform float bgfactor;\nuniform mat3 matrixroll;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 bgcolor = texture2D(tex_sampler_1, v_texcoord);\n  vec2 coord = (matrixroll * vec3(v_texcoord, 1.0)).xy;\n  vec2 coordinside;\n    coordinside.x = ((coord.x-0.5) * 1320.0 / 1280.0) + 0.5;\n    coordinside.y = ((coord.y-0.5) * 760.0 / 720.0) + 0.5;\n  vec4 original = texture2D(tex_sampler_0, coordinside);\n  vec4 edge = texture2D(tex_sampler_2, coord);\n  if ((coordinside.x > 1.0 || coordinside.y > 1.0) ||\n      (coordinside.x < 0.0 || coordinside.y < 0.0)) {\n    original = mix(bgcolor * bgfactor, original, edge.a);\n  }\n  original = mix(original, edge, smoothstep(0.0, 1.0, edge.a));\n  gl_FragColor = mix(bgcolor * bgfactor, original, fgfactor);\n}\n"

    sput-object v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mOverlayShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 96
    const-string v2, "Overlay"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mVideoPrevRelatedTimeStamp:J

    .line 97
    return-void
.end method

.method private getRelatedTimeStamp(JJ)J
    .locals 5
    .param p1, "time"    # J
    .param p3, "offset"    # J

    .prologue
    .line 125
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p3

    sub-long v0, p1, v2

    .line 126
    .local v0, "result":J
    return-wide v0
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 451
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 453
    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 458
    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 463
    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 465
    :cond_2
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 102
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mOverlayShader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    .line 104
    iput v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    .line 106
    const-string v0, "background"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "background_initoffsettime"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background_initoffsettime"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " video2 Init Offset Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 112
    const-string v0, "mediasource"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "mediasource"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    .line 114
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pauseVideo(Z)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->seekTo(I)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, " mMediaPlayer.pause()"

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 120
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    .line 121
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    .line 122
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z
    .locals 48
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;
    .param p3, "isRenderOutput"    # Z
    .param p4, "output"    # Landroid/filterfw/core/GLFrame;

    .prologue
    .line 131
    invoke-super/range {p0 .. p4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z

    .line 133
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getInputCameraGLFrame()Landroid/filterfw/core/GLFrame;

    move-result-object v9

    .line 134
    .local v9, "camera":Landroid/filterfw/core/GLFrame;
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getInputVideoGLFrame()Landroid/filterfw/core/GLFrame;

    move-result-object v16

    .line 137
    .local v16, "effectVideo":Landroid/filterfw/core/GLFrame;
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v21

    .line 139
    .local v21, "inputFormat":Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    if-nez v40, :cond_0

    .line 140
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v22

    .line 141
    .local v22, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v40

    check-cast v40, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 146
    .end local v22    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    if-nez v40, :cond_1

    .line 147
    const-string v40, "edge"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 148
    const-string v40, "edge"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 149
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->createBitmapFrame(Landroid/filterfw/core/FilterContext;Landroid/graphics/Bitmap;)Landroid/filterfw/core/GLFrame;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    .line 161
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    if-nez v40, :cond_2

    .line 162
    const-string v40, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b

    const-string v40, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v40, v0

    if-eqz v40, :cond_b

    .line 163
    const-string v40, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->createBitmapFrame(Landroid/filterfw/core/FilterContext;Landroid/graphics/Bitmap;)Landroid/filterfw/core/GLFrame;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    const-string v42, "mStillBgFrame(b): bitmap"

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 177
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    if-nez v40, :cond_3

    .line 178
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v22

    .line 179
    .restart local v22    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v40

    check-cast v40, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x3

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mPreviousFrame:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->getRelatedTimeStamp(JJ)J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 188
    .end local v22    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    :cond_3
    if-eqz p3, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x3

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p4

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mPreviousFrame:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getNowTimeStamp()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 196
    :cond_4
    const/16 v40, 0x3

    move/from16 v0, v40

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v27, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    aput-object v41, v27, v40

    const/16 v40, 0x1

    aput-object v16, v27, v40

    const/16 v40, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    aput-object v41, v27, v40

    .line 198
    .local v27, "subtractInputs":[Landroid/filterfw/core/Frame;
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getNowTimeStamp()J

    move-result-wide v14

    .line 199
    .local v14, "currentTimeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStart:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 201
    .local v10, "cameraPhoto":J
    const-string v40, "move_photo"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 203
    :try_start_0
    const-string v40, "move_photo"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Long;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStart:Ljava/lang/Long;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v42

    add-long v10, v40, v42

    .line 211
    :cond_5
    cmp-long v40, v14, v10

    if-ltz v40, :cond_6

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mGotMainFrame:Z

    move/from16 v40, v0

    if-nez v40, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x3

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v9, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 217
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mGotMainFrame:Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Got CameraInput:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 222
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    cmp-long v40, v40, v14

    if-lez v40, :cond_7

    .line 223
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " mMediaPlayer.seekTo(0) pause()"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->seekTo(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pauseVideo(Z)V

    .line 231
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    cmp-long v40, v40, v14

    if-gtz v40, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    move/from16 v40, v0

    if-nez v40, :cond_8

    .line 232
    const-string v40, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c

    const-string v40, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v40, v0

    if-eqz v40, :cond_c

    .line 248
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    cmp-long v40, v14, v40

    if-gez v40, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    cmp-long v40, v14, v40

    if-gez v40, :cond_e

    .line 249
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "now:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " do nothing ! ["

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "~"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "]"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 251
    const/16 v40, 0x0

    .line 444
    :goto_3
    return v40

    .line 151
    .end local v10    # "cameraPhoto":J
    .end local v14    # "currentTimeStamp":J
    .end local v27    # "subtractInputs":[Landroid/filterfw/core/Frame;
    :cond_a
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v22

    .line 152
    .restart local v22    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v40

    check-cast v40, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x3

    const/16 v42, 0x0

    aput v42, v40, v41

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto/16 :goto_0

    .line 166
    .end local v22    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    :cond_b
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v22

    .line 167
    .restart local v22    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v40

    check-cast v40, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x3

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mStillBgFrame(b):"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->getRelatedTimeStamp(JJ)J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto/16 :goto_1

    .line 204
    .end local v22    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    .restart local v10    # "cameraPhoto":J
    .restart local v14    # "currentTimeStamp":J
    .restart local v27    # "subtractInputs":[Landroid/filterfw/core/Frame;
    :catch_0
    move-exception v13

    .line 205
    .local v13, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v13}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 206
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 235
    .end local v13    # "e":Ljava/lang/ClassCastException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v40, v0

    if-eqz v40, :cond_d

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " mMediaPlayer.seekTo(0) play()"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->seekTo(I)V

    .line 238
    const-string v40, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_d

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pauseVideo(Z)V

    .line 242
    :cond_d
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    .line 243
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    goto/16 :goto_2

    .line 254
    :cond_e
    const-string v40, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_18

    const-string v40, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v40, v0

    if-eqz v40, :cond_18

    .line 278
    :goto_4
    const-string v40, "bitmap_move"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_f

    const-string v40, "bitmap_fadeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_f

    .line 279
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->getRelatedTimeStamp(JJ)J

    move-result-wide v32

    .line 282
    .local v32, "videoTime":J
    const-wide/16 v40, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mVideoPrevRelatedTimeStamp:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_1d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mVideoPrevRelatedTimeStamp:J

    move-wide/from16 v40, v0

    cmp-long v40, v32, v40

    if-gez v40, :cond_1d

    .line 283
    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    aput-object v41, v27, v40

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x77

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "video_time: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " o:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mVideoPrevRelatedTimeStamp:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x77

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "@ "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " video order bg fixed"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 290
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    cmp-long v40, v14, v40

    if-gez v40, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    const-wide/32 v42, 0x25317c0

    add-long v42, v42, v14

    cmp-long v40, v40, v42

    if-gez v40, :cond_f

    .line 291
    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    aput-object v41, v27, v40

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x77

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "@ "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " final bg fixed"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 297
    .end local v32    # "videoTime":J
    :cond_f
    const-string v40, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 298
    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    aput-object v41, v27, v40

    .line 302
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    sub-long v40, v14, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    sub-long v42, v42, v44

    const-wide/16 v44, 0x1

    add-long v42, v42, v44

    rem-long v30, v40, v42

    .line 303
    .local v30, "tickStep":J
    const-wide/32 v40, 0xf4240

    div-long v30, v30, v40

    .line 305
    const/high16 v17, 0x3f800000    # 1.0f

    .line 306
    .local v17, "fgFactor":F
    const-string v40, "bitmap_fadeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 307
    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    sub-long v44, v44, v46

    const-wide/32 v46, 0xf4240

    div-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v40, v0

    sub-float v17, v17, v40

    .line 309
    :cond_11
    const/high16 v7, 0x3f800000    # 1.0f

    .line 310
    .local v7, "bgFactor":F
    const-string v40, "background_fadein"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 311
    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    sub-long v44, v44, v46

    const-wide/32 v46, 0xf4240

    div-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-float v7, v0

    .line 314
    :cond_12
    const-string v40, "bitmap_move"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_13

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    sub-long v40, v40, v42

    const-wide/32 v42, 0xf4240

    div-long v30, v40, v42

    .line 318
    :cond_13
    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    sub-long v44, v44, v46

    const-wide/32 v46, 0xf4240

    div-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v28, v0

    .line 320
    .local v28, "tick":F
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v29, v0

    .line 321
    .local v29, "width":F
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v19, v0

    .line 322
    .local v19, "height":F
    div-float v20, v29, v19

    .line 327
    .local v20, "inputAspectRatio":F
    const/high16 v34, 0x3df00000    # 0.1171875f

    .line 328
    .local v34, "xLocation0":F
    const v37, 0x3f4c71c7

    .line 330
    .local v37, "yLocation0":F
    const/high16 v35, 0x3e380000    # 0.1796875f

    .line 331
    .local v35, "xLocation90":F
    const/high16 v38, 0x3f700000    # 0.9375f

    .line 333
    .local v38, "yLocation90":F
    const-string v40, "x"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 334
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "x"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v34

    .line 335
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "x"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v35

    .line 338
    :cond_14
    const-string v40, "y"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 339
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "y"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v37

    .line 340
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "y"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v38

    .line 343
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mOrientation:I

    move/from16 v40, v0

    sparse-switch v40, :sswitch_data_0

    .line 360
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v36, v40, v34

    .line 361
    .local v36, "xStep":F
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v39, v40, v37

    .line 366
    .local v39, "yStep":F
    :goto_6
    mul-float v36, v36, v28

    .line 367
    mul-float v39, v39, v28

    .line 369
    const v23, 0x3eb0a3d7    # 0.345f

    .line 371
    .local v23, "percent":F
    const-string v40, "scale"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 372
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "scale"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ""

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    .line 375
    :cond_16
    const/high16 v40, 0x3f800000    # 1.0f

    const/high16 v41, 0x3f800000    # 1.0f

    sub-float v41, v41, v23

    mul-float v41, v41, v28

    div-float v41, v41, v23

    add-float v26, v40, v41

    .line 379
    .local v26, "sizeRatio":F
    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    sub-long v44, v44, v46

    const-wide/32 v46, 0xf4240

    div-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-float v6, v0

    .line 380
    .local v6, "angel":F
    const/high16 v18, 0x40c00000    # 6.0f

    .line 381
    .local v18, "finalangel":F
    const/high16 v40, 0x43340000    # 180.0f

    div-float v40, v6, v40

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x400921fb54442d18L    # Math.PI

    mul-double v40, v40, v42

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-float v6, v0

    .line 383
    float-to-double v0, v6

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-float v12, v0

    .line 384
    .local v12, "cosval":F
    float-to-double v0, v6

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v25, v0

    .line 428
    .local v25, "sinval":F
    const/16 v40, 0x9

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v40, 0x0

    aput v12, v24, v40

    const/16 v40, 0x1

    mul-float v41, v25, v20

    aput v41, v24, v40

    const/16 v40, 0x2

    const/16 v41, 0x0

    aput v41, v24, v40

    const/16 v40, 0x3

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v41, v0

    div-float v41, v41, v20

    aput v41, v24, v40

    const/16 v40, 0x4

    aput v12, v24, v40

    const/16 v40, 0x5

    const/16 v41, 0x0

    aput v41, v24, v40

    const/16 v40, 0x6

    const/high16 v41, 0x3f800000    # 1.0f

    sub-float v41, v41, v12

    div-float v42, v25, v20

    add-float v41, v41, v42

    const/high16 v42, 0x3f000000    # 0.5f

    mul-float v41, v41, v42

    mul-float v42, v36, v26

    add-float v41, v41, v42

    aput v41, v24, v40

    const/16 v40, 0x7

    const/high16 v41, 0x3f800000    # 1.0f

    sub-float v41, v41, v12

    mul-float v42, v25, v20

    sub-float v41, v41, v42

    const/high16 v42, 0x3f000000    # 0.5f

    mul-float v41, v41, v42

    mul-float v42, v39, v26

    add-float v41, v41, v42

    aput v41, v24, v40

    const/16 v40, 0x8

    const/high16 v41, 0x3f800000    # 1.0f

    aput v41, v24, v40

    .line 435
    .local v24, "rollTransform":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "fgfactor"

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "bgfactor"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "matrixroll"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    if-eqz p4, :cond_17

    if-nez p3, :cond_17

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "merged "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " f:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " b:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 444
    :cond_17
    const/16 v40, 0x1

    goto/16 :goto_3

    .line 257
    .end local v6    # "angel":F
    .end local v7    # "bgFactor":F
    .end local v12    # "cosval":F
    .end local v17    # "fgFactor":F
    .end local v18    # "finalangel":F
    .end local v19    # "height":F
    .end local v20    # "inputAspectRatio":F
    .end local v23    # "percent":F
    .end local v24    # "rollTransform":[F
    .end local v25    # "sinval":F
    .end local v26    # "sizeRatio":F
    .end local v28    # "tick":F
    .end local v29    # "width":F
    .end local v30    # "tickStep":J
    .end local v34    # "xLocation0":F
    .end local v35    # "xLocation90":F
    .end local v36    # "xStep":F
    .end local v37    # "yLocation0":F
    .end local v38    # "yLocation90":F
    .end local v39    # "yStep":F
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    const-wide/32 v42, 0x5f5e100

    add-long v40, v40, v42

    cmp-long v40, v14, v40

    if-lez v40, :cond_19

    .line 258
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    goto/16 :goto_4

    .line 259
    :cond_19
    const-string v40, "background_fadein"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 260
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    goto/16 :goto_4

    .line 261
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->getRelatedTimeStamp(JJ)J

    move-result-wide v40

    const-wide/32 v42, 0x1dcd6500

    cmp-long v40, v40, v42

    if-lez v40, :cond_1c

    .line 262
    if-eqz p4, :cond_1b

    if-nez p3, :cond_1b

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v40, v0

    const/16 v41, 0x3

    const/high16 v42, 0x3f800000    # 1.0f

    aput v42, v40, v41

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    const-string v41, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mColor:[F

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v40, v0

    const/16 v41, 0x64

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "show mPreviousFrame @ "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 268
    const/16 v40, 0x1

    goto/16 :goto_3

    .line 270
    :cond_1b
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 272
    :cond_1c
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    goto/16 :goto_4

    .line 287
    .restart local v32    # "videoTime":J
    :cond_1d
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mVideoPrevRelatedTimeStamp:J

    goto/16 :goto_5

    .line 345
    .end local v32    # "videoTime":J
    .restart local v7    # "bgFactor":F
    .restart local v17    # "fgFactor":F
    .restart local v19    # "height":F
    .restart local v20    # "inputAspectRatio":F
    .restart local v28    # "tick":F
    .restart local v29    # "width":F
    .restart local v30    # "tickStep":J
    .restart local v34    # "xLocation0":F
    .restart local v35    # "xLocation90":F
    .restart local v37    # "yLocation0":F
    .restart local v38    # "yLocation90":F
    :sswitch_0
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v36, v35, v40

    .line 346
    .restart local v36    # "xStep":F
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v39, v40, v38

    .line 347
    .restart local v39    # "yStep":F
    goto/16 :goto_6

    .line 350
    .end local v36    # "xStep":F
    .end local v39    # "yStep":F
    :sswitch_1
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v36, v34, v40

    .line 351
    .restart local v36    # "xStep":F
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v39, v37, v40

    .line 352
    .restart local v39    # "yStep":F
    goto/16 :goto_6

    .line 355
    .end local v36    # "xStep":F
    .end local v39    # "yStep":F
    :sswitch_2
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v36, v40, v35

    .line 356
    .restart local v36    # "xStep":F
    const/high16 v40, 0x3f000000    # 0.5f

    sub-float v39, v38, v40

    .line 357
    .restart local v39    # "yStep":F
    goto/16 :goto_6

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
