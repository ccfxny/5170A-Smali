.class public Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;
.super Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
.source "VideoEventStill.java"


# static fields
.field private static mMergeShader:Ljava/lang/String;


# instance fields
.field private mMergeProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg = texture2D(tex_sampler_0, v_texcoord);\n  vec4 bg = texture2D(tex_sampler_1, v_texcoord);\n  gl_FragColor = mix(fg, bg, factor);\n}\n"

    sput-object v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mMergeShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 64
    const-string v2, "Still"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 65
    return-void
.end method


# virtual methods
.method public open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 70
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mMergeShader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    .line 71
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "factor"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;
    .param p3, "isRenderOutput"    # Z
    .param p4, "output"    # Landroid/filterfw/core/GLFrame;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z

    .line 78
    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    .line 79
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mGotMainFrame:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mGotBgFrame:Z

    if-nez v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/filterfw/core/Frame;

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mMainFrame:Landroid/filterfw/core/GLFrame;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mBgFrame:Landroid/filterfw/core/GLFrame;

    aput-object v3, v0, v2

    .line 84
    .local v0, "flist":[Landroid/filterfw/core/Frame;
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mGotMainFrame:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mGotBgFrame:Z

    if-nez v3, :cond_3

    .line 85
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mMainFrame:Landroid/filterfw/core/GLFrame;

    aput-object v1, v0, v2

    .line 89
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0, p4}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    move v1, v2

    .line 90
    goto :goto_0

    .line 86
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mGotMainFrame:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mGotBgFrame:Z

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;->mBgFrame:Landroid/filterfw/core/GLFrame;

    aput-object v3, v0, v1

    goto :goto_1
.end method
