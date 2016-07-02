.class public Lcom/mediatek/effect/filterpacks/VideoEventFilter;
.super Landroid/filterfw/core/Filter;
.source "VideoEventFilter.java"


# static fields
.field private static mCount:[I


# instance fields
.field private mCamera:Landroid/filterfw/core/GLFrame;

.field private mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "effectplayer"
    .end annotation
.end field

.field private mEndtime:J

.field private mFirstTimeStamp:J

.field private mFrameCount:I

.field private mGotFirstTimeStamp:Z

.field private final mInputPortCamera:Ljava/lang/String;

.field private final mInputPortVideo:Ljava/lang/String;

.field private mKeys:[Ljava/lang/Object;

.field private mMediaSourceFilter:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "mediasourcefilter"
    .end annotation
.end field

.field private mNow:J

.field private final mOutputPort:Ljava/lang/String;

.field private mProcessDoneListener:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "processDoneListener"
    .end annotation
.end field

.field private mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

.field private mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

.field private mVideo:Landroid/filterfw/core/GLFrame;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCount:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/mediatek/effect/filterpacks/MyUtility;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCount:[I

    invoke-direct {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    .line 67
    iput-object v3, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mProcessDoneListener:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    .line 70
    iput-object v3, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mMediaSourceFilter:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    .line 73
    iput-object v3, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    .line 76
    new-instance v0, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-direct {v0}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;-><init>()V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .line 78
    const-string v0, "image"

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mInputPortCamera:Ljava/lang/String;

    .line 79
    const-string v0, "video"

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mInputPortVideo:Ljava/lang/String;

    .line 80
    const-string v0, "image"

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mOutputPort:Ljava/lang/String;

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->startTime:J

    .line 88
    iput-boolean v4, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mGotFirstTimeStamp:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mFirstTimeStamp:J

    .line 91
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mEndtime:J

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 98
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    sget-object v1, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCount:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->setIDandIncrease([I)V

    .line 99
    return-void
.end method

.method private printFPS(Landroid/filterfw/core/FilterContext;)V
    .locals 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 263
    iget v2, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mFrameCount:I

    rem-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_0

    .line 264
    iget-wide v2, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->startTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 265
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 266
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->startTime:J

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 270
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 272
    .local v0, "endTime":J
    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v3, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Avg. frame duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->startTime:J

    sub-long v8, v0, v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms. Avg. fps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide v8, 0x408f400000000000L    # 1000.0

    iget-wide v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->startTime:J

    sub-long v10, v0, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double/2addr v10, v12

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 274
    iput-wide v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->startTime:J

    goto :goto_0
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 248
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v7, 0x64

    const-string v8, "Filter Closing!"

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 250
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    if-eqz v6, :cond_1

    .line 252
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 253
    .local v3, "key":Ljava/lang/Object;
    iget-object v6, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-virtual {v6, v3}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 254
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;

    if-eqz v6, :cond_0

    move-object v1, v5

    .line 255
    check-cast v1, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;

    .line 256
    .local v1, "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    invoke-virtual {v1, p1, p0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 252
    .end local v1    # "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "len$":I
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_1
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
    .line 103
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

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

    .line 104
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 105
    return-void
.end method

.method public getFristTimeStamp()J
    .locals 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mGotFirstTimeStamp:Z

    if-nez v0, :cond_0

    .line 289
    const-wide/16 v0, 0x0

    .line 291
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mFirstTimeStamp:J

    goto :goto_0
.end method

.method public getInputCameraGLFrame()Landroid/filterfw/core/GLFrame;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCamera:Landroid/filterfw/core/GLFrame;

    return-object v0
.end method

.method public getInputVideoGLFrame()Landroid/filterfw/core/GLFrame;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mVideo:Landroid/filterfw/core/GLFrame;

    return-object v0
.end method

.method public getNowTimeStamp()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    return-wide v0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 125
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    return-object v0
.end method

.method public getScenario()Lcom/mediatek/effect/filterpacks/ve/VideoScenario;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    return-object v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v11, 0x64

    .line 136
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 138
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    if-eqz v8, :cond_3

    .line 139
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-virtual {v8}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    .line 140
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 142
    const/4 v7, 0x0

    .line 143
    .local v7, "orientation":I
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    const-string v9, "orientation"

    invoke-virtual {v8, v9}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    const-string v10, "orientation"

    invoke-virtual {v9, v10}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 151
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open() Total Event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 153
    .local v4, "key":Ljava/lang/Object;
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-virtual {v8, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 154
    .local v6, "obj":Ljava/lang/Object;
    instance-of v8, v6, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;

    if-eqz v8, :cond_2

    move-object v2, v6

    .line 155
    check-cast v2, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;

    .line 156
    .local v2, "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    invoke-virtual {v2, v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->setOrientation(I)V

    .line 157
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getStartTime()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getEndTime()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 158
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mMediaSourceFilter:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    if-eqz v8, :cond_1

    .line 159
    const-string v8, "mediasource"

    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mMediaSourceFilter:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    invoke-virtual {v2, v8, v9}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_1
    invoke-virtual {v2, p1, p0}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 152
    .end local v2    # "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "len$":I
    .end local v6    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    goto :goto_0

    .line 165
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "orientation":I
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mGotFirstTimeStamp:Z

    .line 167
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    const-string v9, "THEENDTIME"

    invoke-virtual {v8, v9}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 168
    iget-object v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    const-string v9, "THEENDTIME"

    invoke-virtual {v8, v9}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mEndtime:J

    .line 170
    :cond_4
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 132
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 174
    const-string v9, "image"

    invoke-virtual {p0, v9}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v9

    check-cast v9, Landroid/filterfw/core/GLFrame;

    iput-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCamera:Landroid/filterfw/core/GLFrame;

    .line 175
    const-string v9, "video"

    invoke-virtual {p0, v9}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v9

    check-cast v9, Landroid/filterfw/core/GLFrame;

    iput-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mVideo:Landroid/filterfw/core/GLFrame;

    .line 178
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    const-string v10, "IgnoreMainFrame"

    invoke-virtual {v9, v10}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 179
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mVideo:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v10}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    check-cast v7, Landroid/filterfw/core/GLFrame;

    .line 184
    .local v7, "output":Landroid/filterfw/core/GLFrame;
    :goto_0
    iget-boolean v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mGotFirstTimeStamp:Z

    if-nez v9, :cond_0

    .line 185
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCamera:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v9}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mFirstTimeStamp:J

    .line 186
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mGotFirstTimeStamp:Z

    .line 189
    :cond_0
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCamera:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v9}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mFirstTimeStamp:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    .line 190
    const/4 v8, 0x0

    .line 192
    .local v8, "result":Z
    iget-wide v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mEndtime:J

    iget-wide v12, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_6

    .line 193
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v10, 0x77

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " End Time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mEndtime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 197
    .local v4, "key":Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 198
    .local v6, "obj":Ljava/lang/Object;
    instance-of v9, v6, Lcom/mediatek/effect/filterpacks/ve/VideoEventStill;

    if-eqz v9, :cond_5

    move-object v2, v6

    .line 199
    check-cast v2, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;

    .line 200
    .local v2, "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getStartTime()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    cmp-long v9, v10, v12

    if-gtz v9, :cond_5

    .line 201
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v10, 0x64

    const-string v11, "VideoEventStill.process()"

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 202
    invoke-virtual {v2, p1, p0, v8, v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z

    .line 203
    const-string v9, "image"

    invoke-virtual {p0, v9, v7}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 204
    invoke-virtual {v7}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 210
    .end local v2    # "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    if-eqz v9, :cond_2

    .line 211
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;

    invoke-virtual {v9}, Lcom/mediatek/effect/player/EffectPlayer;->stop()V

    .line 213
    :cond_2
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mMediaSourceFilter:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    if-eqz v9, :cond_3

    .line 214
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mMediaSourceFilter:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pauseVideo(Z)V

    .line 244
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    :goto_2
    return-void

    .line 181
    .end local v7    # "output":Landroid/filterfw/core/GLFrame;
    .end local v8    # "result":Z
    :cond_4
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCamera:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v10}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    check-cast v7, Landroid/filterfw/core/GLFrame;

    .restart local v7    # "output":Landroid/filterfw/core/GLFrame;
    goto/16 :goto_0

    .line 196
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v3    # "i$":I
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v5    # "len$":I
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v8    # "result":Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "len$":I
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_6
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    if-eqz v9, :cond_a

    .line 221
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mKeys:[Ljava/lang/Object;

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v5, :cond_a

    aget-object v4, v0, v3

    .line 222
    .restart local v4    # "key":Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-virtual {v9, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 223
    .restart local v6    # "obj":Ljava/lang/Object;
    instance-of v9, v6, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;

    if-eqz v9, :cond_8

    move-object v2, v6

    .line 224
    check-cast v2, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;

    .line 225
    .restart local v2    # "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getStartTime()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    cmp-long v9, v10, v12

    if-gtz v9, :cond_8

    iget-wide v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->getEndTime()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_8

    .line 226
    invoke-virtual {v2, p1, p0, v8, v7}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z

    move-result v1

    .line 227
    .local v1, "b":Z
    if-nez v8, :cond_7

    if-eqz v1, :cond_9

    :cond_7
    const/4 v8, 0x1

    .line 221
    .end local v1    # "b":Z
    .end local v2    # "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 227
    .restart local v1    # "b":Z
    .restart local v2    # "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 233
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "b":Z
    .end local v2    # "event":Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
    .end local v3    # "i$":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "len$":I
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_a
    if-eqz v8, :cond_b

    .line 234
    const-string v9, "image"

    invoke-virtual {p0, v9, v7}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 240
    :goto_5
    invoke-virtual {v7}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 242
    iget v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mFrameCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mFrameCount:I

    .line 243
    invoke-direct {p0, p1}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->printFPS(Landroid/filterfw/core/FilterContext;)V

    goto :goto_2

    .line 236
    :cond_b
    iget-object v9, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v10, 0x77

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mNow:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " no VideoEvent process() !"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 237
    const-string v9, "image"

    iget-object v10, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mCamera:Landroid/filterfw/core/GLFrame;

    invoke-virtual {p0, v9, v10}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    goto :goto_5
.end method

.method public setScenario(Lcom/mediatek/effect/filterpacks/ve/VideoScenario;)V
    .locals 1
    .param p1, "scenario"    # Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    invoke-virtual {v0}, Lcom/mediatek/effect/filterpacks/ve/VideoScenario;->clear()V

    .line 304
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->mScenario:Lcom/mediatek/effect/filterpacks/ve/VideoScenario;

    .line 305
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 114
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 116
    .local v0, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 117
    const-string v1, "video"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 119
    const-string v1, "image"

    const-string v2, "image"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/filterfw/core/Filter;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 110
    return-void
.end method
