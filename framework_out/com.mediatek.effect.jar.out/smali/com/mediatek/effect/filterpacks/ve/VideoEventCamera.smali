.class public Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;
.super Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
.source "VideoEventCamera.java"


# static fields
.field private static mOverlayShader:Ljava/lang/String;


# instance fields
.field private mCopyProgram:Landroid/filterfw/core/ShaderProgram;

.field private mIsGotPreviousFrame:Z

.field private mPreviousFrame:Landroid/filterfw/core/GLFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float center_r;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 coord = v_texcoord - vec2(0.5);\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float rrr = length(coord);\n  if (0.0 <= center_r) {    mask = vec4(0.0);\n  }\n  if (rrr > center_r) {\n    original = vec4(0.0);\n  }\n  gl_FragColor = original + mask;\n}\n"

    sput-object v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mOverlayShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 84
    const-string v2, "Camera"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 85
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 189
    :cond_0
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 90
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mOverlayShader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    .line 91
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "center_r"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    .line 94
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z
    .locals 16
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;
    .param p3, "isRenderOutput"    # Z
    .param p4, "output"    # Landroid/filterfw/core/GLFrame;

    .prologue
    .line 98
    invoke-super/range {p0 .. p4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getInputCameraGLFrame()Landroid/filterfw/core/GLFrame;

    move-result-object v2

    .line 103
    .local v2, "camera":Landroid/filterfw/core/GLFrame;
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v9

    .line 105
    .local v9, "inputFormat":Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    if-nez v12, :cond_0

    .line 106
    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v10

    .line 107
    .local v10, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v12

    check-cast v12, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12, v2, v13}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 112
    .end local v10    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    if-nez v12, :cond_1

    .line 113
    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v10

    .line 114
    .restart local v10    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v12

    check-cast v12, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 118
    .end local v10    # "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    :cond_1
    const/4 v12, 0x2

    new-array v11, v12, [Landroid/filterfw/core/Frame;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    aput-object v13, v11, v12

    .line 120
    .local v11, "subtractInputs":[Landroid/filterfw/core/Frame;
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getNowTimeStamp()J

    move-result-wide v6

    .line 123
    .local v6, "currentTimeStamp":J
    const-string v12, "camera_photo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 125
    :try_start_0
    const-string v12, "camera_photo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mStart:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    add-long v4, v12, v14

    .line 132
    .local v4, "cameraPhoto":J
    cmp-long v12, v6, v4

    if-ltz v12, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mGotMainFrame:Z

    if-nez v12, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mColor:[F

    const/4 v13, 0x3

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    const-string v13, "ccc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mColor:[F

    invoke-virtual {v12, v13, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12, v2, v13}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 138
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mGotMainFrame:Z

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v13, 0x64

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got CameraInput:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 141
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    aput-object v13, v11, v12

    .line 144
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v6, v12

    if-gez v12, :cond_5

    .line 146
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 147
    if-eqz p3, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0, v13}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 152
    :goto_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    .line 153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v13, 0x64

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got PreviousInput:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 157
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mEffectEnd:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v6, v12

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v6, v12

    if-gez v12, :cond_8

    .line 158
    :cond_6
    const/4 v12, 0x0

    .line 178
    .end local v4    # "cameraPhoto":J
    :goto_1
    return v12

    .line 126
    :catch_0
    move-exception v8

    .line 127
    .local v8, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v8}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 128
    const/4 v12, 0x0

    goto :goto_1

    .line 150
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .restart local v4    # "cameraPhoto":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12, v2, v13}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto :goto_0

    .line 161
    :cond_8
    const/4 v3, 0x0

    .line 163
    .local v3, "center_r":F
    cmp-long v12, v4, v6

    if-ltz v12, :cond_a

    .line 164
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v6, v14

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v4, v14

    long-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v3, v12, v13

    .line 165
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    aput-object v13, v11, v12

    .line 171
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v13, "center_r"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    if-eqz p4, :cond_9

    if-nez p3, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p4

    invoke-virtual {v12, v11, v0}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 176
    :cond_9
    const/4 v12, 0x1

    goto :goto_1

    .line 167
    :cond_a
    sub-long v12, v6, v4

    long-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mEffectEnd:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v14, v4

    long-to-float v13, v14

    div-float v3, v12, v13

    .line 168
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mMainFrame:Landroid/filterfw/core/GLFrame;

    aput-object v13, v11, v12

    goto :goto_2

    .line 178
    .end local v3    # "center_r":F
    .end local v4    # "cameraPhoto":J
    :cond_b
    const/4 v12, 0x0

    goto :goto_1
.end method
