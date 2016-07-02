.class public Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
.super Ljava/util/HashMap;
.source "VideoEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static mCopyShaderWithColor:Ljava/lang/String;

.field private static mCount:[I


# instance fields
.field protected mBgFrame:Landroid/filterfw/core/GLFrame;

.field protected mColor:[F

.field protected mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

.field protected mEffectEnd:Ljava/lang/Long;

.field protected mEffectStart:Ljava/lang/Long;

.field protected mEnd:Ljava/lang/Long;

.field protected mGotBgFrame:Z

.field protected mGotMainFrame:Z

.field protected mMainFrame:Landroid/filterfw/core/GLFrame;

.field private mName:Ljava/lang/String;

.field protected mOrientation:I

.field protected mStart:Ljava/lang/Long;

.field protected mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCount:[I

    .line 75
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec4 ccc;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  if (ccc.a <= 0.0) {\n    gl_FragColor.rgb = ccc.rgb;\n  }\n}\n"

    sput-object v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyShaderWithColor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "start"    # J
    .param p5, "end"    # J

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 66
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotMainFrame:Z

    .line 69
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotBgFrame:Z

    .line 72
    iput v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mOrientation:I

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    .line 91
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 94
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mType:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->setDuration(JJ)V

    .line 97
    return-void
.end method


# virtual methods
.method protected cleanResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 277
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".cleanResource() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 281
    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mBgFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mBgFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 286
    iput-object v5, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mBgFrame:Landroid/filterfw/core/GLFrame;

    .line 289
    :cond_1
    const-string v1, "bitmap"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    const-string v1, "bitmap"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 291
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    const-string v1, "bitmap"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 297
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 298
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    return-void
.end method

.method public close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".close() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->cleanResource()V

    .line 274
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
    .line 101
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 102
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 103
    return-void
.end method

.method public getEndTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEnd:Ljava/lang/Long;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mStart:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;

    .prologue
    const/4 v9, 0x1

    .line 246
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".open() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 248
    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    sget-object v2, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyShaderWithColor:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    .line 249
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v3, v9

    aput v8, v1, v2

    .line 250
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "ccc"

    iget-object v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string v1, "bitmap"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "bitmap"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 254
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/mediatek/effect/filterpacks/MyUtility;->createBitmapFrame(Landroid/filterfw/core/FilterContext;Landroid/graphics/Bitmap;)Landroid/filterfw/core/GLFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    .line 255
    iput-boolean v9, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotMainFrame:Z

    .line 258
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 261
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/mediatek/effect/filterpacks/MyUtility;->createBitmapFrame(Landroid/filterfw/core/FilterContext;Landroid/graphics/Bitmap;)Landroid/filterfw/core/GLFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mBgFrame:Landroid/filterfw/core/GLFrame;

    .line 262
    iput-boolean v9, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotBgFrame:Z

    .line 265
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "myfilter"    # Lcom/mediatek/effect/filterpacks/VideoEventFilter;
    .param p3, "isRenderOutput"    # Z
    .param p4, "output"    # Landroid/filterfw/core/GLFrame;

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public putBackground(Landroid/content/res/Resources;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resource"    # Ljava/lang/Object;
    .param p3, "isStill"    # Ljava/lang/String;
    .param p4, "isFadeIn"    # Ljava/lang/String;
    .param p5, "initTimeOffset"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".putBackground() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isStill:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 215
    if-eqz p2, :cond_3

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    move-object v0, p2

    .line 218
    check-cast v0, Landroid/graphics/Bitmap;

    .line 225
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 226
    const-string v1, "background"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local p2    # "resource":Ljava/lang/Object;
    :cond_1
    :goto_1
    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    const-string v1, "1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    const-string v1, "background_still"

    invoke-virtual {p0, v1, p3}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2
    const-string v1, "1"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    const-string v1, "background_fadein"

    invoke-virtual {p0, v1, p4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    return-void

    .line 219
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "resource":Ljava/lang/Object;
    :cond_4
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    move-object v1, p2

    .line 220
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->getBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_5
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 222
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_6
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 228
    check-cast v1, Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 229
    const-string v1, "background"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "resource":Ljava/lang/Object;
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_7
    const-string v1, "background_initoffsettime"

    invoke-virtual {p0, v1, p5}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public putEdge(Landroid/content/res/Resources;Ljava/lang/Object;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resource"    # Ljava/lang/Object;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".putEdge() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 196
    if-eqz p2, :cond_1

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 199
    check-cast v0, Landroid/graphics/Bitmap;

    .line 206
    .end local p2    # "resource":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 207
    const-string v1, "edge"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 200
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "resource":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 201
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "resource":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->getBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 202
    .restart local p2    # "resource":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 203
    check-cast p2, Ljava/lang/String;

    .end local p2    # "resource":Ljava/lang/Object;
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public putThumbnail(Landroid/content/res/Resources;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resource"    # Ljava/lang/Object;
    .param p3, "isMove"    # Ljava/lang/String;
    .param p4, "isFadeOut"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".putThumbnail() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 163
    if-eqz p2, :cond_2

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 166
    check-cast v0, Landroid/graphics/Bitmap;

    .line 173
    .end local p2    # "resource":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 174
    const-string v1, "bitmap"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "bitmap_move"

    invoke-virtual {p0, v1, p3}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const-string v1, "bitmap_fadeout"

    invoke-virtual {p0, v1, p4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void

    .line 167
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "resource":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 168
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "resource":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->getBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 169
    .restart local p2    # "resource":Ljava/lang/Object;
    :cond_4
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    check-cast p2, Ljava/lang/String;

    .end local p2    # "resource":Ljava/lang/Object;
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public setDuration(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mStart:Ljava/lang/Long;

    .line 111
    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEnd:Ljava/lang/Long;

    .line 116
    :goto_0
    const-wide/16 v0, 0x0

    sub-long v2, p3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->setDurationEffectRelatedTime(JJ)V

    .line 117
    return-void

    .line 114
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEnd:Ljava/lang/Long;

    goto :goto_0
.end method

.method public setDurationEffectRelatedTime(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "length"    # J

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mStart:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    .line 121
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    .line 123
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEnd:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEnd:Ljava/lang/Long;

    .line 126
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "ori"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mOrientation:I

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 150
    const-string v6, ""

    .line 151
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "allKeys":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 153
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v1, v2

    .line 154
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 155
    .local v5, "obj":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mStart:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEnd:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
