.class public Lcom/meizu/widget/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "CircleProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final BAR_COLOR_DEF:I = -0xcd5a19

.field public static final BAR_WIDTH_DEF_DIP:F = 1.75f

.field public static final RIM_COLOR_DEF:I = 0x26000000


# instance fields
.field private mAngleAnim:Landroid/animation/ObjectAnimator;

.field private mBarColor:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarPostition:I

.field private mBarWidth:F

.field private mCenterIcon:Landroid/graphics/drawable/Drawable;

.field private mCircleBound:Landroid/graphics/RectF;

.field private mHeadSign:F

.field private mIndeterminate:Z

.field private mMax:I

.field private mNeedUpdateBound:Z

.field private mProgress:I

.field private mRimColor:I

.field private mRimPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    iput v6, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPostition:I

    .line 33
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 35
    iput-object v4, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    .line 37
    iput-boolean v6, p0, Lcom/meizu/widget/CircleProgressBar;->mNeedUpdateBound:Z

    .line 39
    iput-object v4, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    .line 40
    const/4 v3, 0x0

    iput v3, p0, Lcom/meizu/widget/CircleProgressBar;->mHeadSign:F

    .line 56
    sget-object v3, Lcom/flyme/internal/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v3, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    :cond_0
    const v3, -0xcd5a19

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/CircleProgressBar;->mBarColor:I

    .line 64
    const/4 v3, 0x1

    const/high16 v4, 0x26000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/CircleProgressBar;->mRimColor:I

    .line 65
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 67
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 68
    .local v1, "barWidthPx":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    .line 70
    invoke-super {p0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-direct {p0}, Lcom/meizu/widget/CircleProgressBar;->init()V

    .line 73
    return-void
.end method

.method private getArcDistance(F)F
    .locals 7
    .param p1, "startPoint"    # F

    .prologue
    const/high16 v6, -0x3df00000    # -36.0f

    const/high16 v5, 0x43220000    # 162.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "distance":F
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    cmpg-float v1, p1, v6

    if-gtz v1, :cond_1

    .line 293
    add-float v1, p1, v3

    mul-float v0, v1, v4

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    cmpl-float v1, p1, v6

    if-lez v1, :cond_2

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_2

    .line 295
    const/high16 v1, 0x42d80000    # 108.0f

    const/high16 v2, 0x42100000    # 36.0f

    add-float/2addr v2, p1

    mul-float/2addr v2, v4

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    .line 296
    :cond_2
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_3

    .line 297
    const/high16 v1, 0x43100000    # 144.0f

    sub-float v2, p1, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    goto :goto_0

    .line 298
    :cond_3
    cmpl-float v1, p1, v3

    if-lez v1, :cond_4

    cmpg-float v1, p1, v5

    if-gtz v1, :cond_4

    .line 299
    const/high16 v1, 0x42fc0000    # 126.0f

    sub-float v2, p1, v3

    div-float/2addr v2, v4

    sub-float v0, v1, v2

    goto :goto_0

    .line 300
    :cond_4
    cmpl-float v1, p1, v5

    if-lez v1, :cond_0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 301
    sub-float v1, p1, v5

    mul-float/2addr v1, v3

    const/high16 v2, 0x42d80000    # 108.0f

    div-float/2addr v1, v2

    sub-float v0, v3, v1

    goto :goto_0
.end method

.method private getPosByProgress(I)I
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 117
    iget v2, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    if-gtz v2, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    iget v2, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    if-lt p1, v2, :cond_1

    .line 121
    const/16 v0, 0x168

    goto :goto_0

    .line 123
    :cond_1
    int-to-float v2, p1

    iget v3, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 124
    .local v1, "scale":F
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 125
    .local v0, "position":I
    goto :goto_0
.end method

.method private getStartPoint(F)F
    .locals 6
    .param p1, "point"    # F

    .prologue
    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43580000    # 216.0f

    const/high16 v2, 0x43220000    # 162.0f

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "startPoint":F
    move v0, p1

    .line 272
    cmpl-float v1, v0, v4

    if-lez v1, :cond_3

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_3

    .line 273
    const v1, 0x3f8ccccd    # 1.1f

    mul-float v0, v1, p1

    .line 281
    :cond_0
    :goto_0
    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    .line 282
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 284
    :cond_1
    cmpl-float v1, v0, v5

    if-lez v1, :cond_2

    .line 285
    const/high16 v0, 0x43870000    # 270.0f

    .line 287
    :cond_2
    return v0

    .line 274
    :cond_3
    cmpl-float v1, v0, v2

    if-lez v1, :cond_4

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_4

    .line 275
    const v1, 0x43323333    # 178.2f

    sub-float v2, v0, v2

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    .line 276
    :cond_4
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    cmpg-float v1, v0, v5

    if-gtz v1, :cond_0

    .line 277
    const v1, 0x43658000    # 229.5f

    sub-float v2, v0, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/meizu/widget/CircleProgressBar;->setCircleBound()V

    .line 77
    invoke-direct {p0}, Lcom/meizu/widget/CircleProgressBar;->setPaint()V

    .line 78
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    .line 79
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/CircleProgressBar;->getPosByProgress(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPostition:I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 82
    const-string v2, "headSign"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/widget/CircleProgressBar;->propertyAnimator(Ljava/lang/Object;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private propertyAnimator(Ljava/lang/Object;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "begin"    # F
    .param p4, "end"    # F
    .param p5, "duration"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p3, v2, v3

    aput p4, v2, v4

    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 309
    .local v1, "pvhA":Landroid/animation/PropertyValuesHolder;
    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 310
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 311
    return-object v0
.end method

.method private setCircleBound()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 111
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 112
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 113
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 114
    return-void
.end method

.method private setPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mRimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    return-void
.end method

.method private startLoadingAnimation(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 317
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 318
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 320
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHeadSign()F
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mHeadSign:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mProgress:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    .line 130
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mNeedUpdateBound:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/meizu/widget/CircleProgressBar;->setCircleBound()V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_2

    .line 134
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mHeadSign:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/meizu/widget/CircleProgressBar;->getStartPoint(F)F

    move-result v13

    .line 135
    .local v13, "startPoint":F
    invoke-direct {p0, v13}, Lcom/meizu/widget/CircleProgressBar;->getArcDistance(F)F

    move-result v11

    .line 136
    .local v11, "distance":F
    iget-object v1, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 137
    iget-object v1, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v13

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidateOnAnimation()V

    .line 143
    .end local v11    # "distance":F
    .end local v13    # "startPoint":F
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 151
    :cond_1
    :goto_1
    return-void

    .line 140
    :cond_2
    iget-object v6, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v3

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 141
    iget-object v1, p0, Lcom/meizu/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPostition:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 147
    .local v12, "restoreCount":I
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mNeedUpdateBound:Z

    .line 156
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    .line 157
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 162
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 163
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/meizu/widget/CircleProgressBar;->startLoadingAnimation(I)V

    goto :goto_0
.end method

.method public setCircleBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 212
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarColor:I

    if-eq v0, p1, :cond_0

    .line 213
    iput p1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarColor:I

    .line 214
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    .line 217
    :cond_0
    return-void
.end method

.method public setCircleBarWidth(F)V
    .locals 5
    .param p1, "barWidth"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 230
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    cmpg-float v0, p1, v4

    if-gez v0, :cond_1

    .line 234
    iput v4, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mNeedUpdateBound:Z

    .line 241
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_0

    .line 236
    :cond_1
    iput p1, p0, Lcom/meizu/widget/CircleProgressBar;->mBarWidth:F

    goto :goto_1
.end method

.method public setCircleCenterIcon(I)V
    .locals 4
    .param p1, "centerIconId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setCircleRimColor(I)V
    .locals 2
    .param p1, "rimColor"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 221
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimColor:I

    if-eq v0, p1, :cond_0

    .line 222
    iput p1, p0, Lcom/meizu/widget/CircleProgressBar;->mRimColor:I

    .line 223
    iget-object v0, p0, Lcom/meizu/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/CircleProgressBar;->mRimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    .line 226
    :cond_0
    return-void
.end method

.method protected setHeadSign(F)V
    .locals 0
    .param p1, "headSign"    # F

    .prologue
    .line 325
    iput p1, p0, Lcom/meizu/widget/CircleProgressBar;->mHeadSign:F

    .line 326
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eq v0, p1, :cond_0

    .line 263
    iput-boolean p1, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    .line 264
    invoke-direct {p0}, Lcom/meizu/widget/CircleProgressBar;->init()V

    .line 265
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    .line 267
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    if-gez p1, :cond_2

    .line 180
    const/4 p1, 0x0

    .line 182
    :cond_2
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    if-eq p1, v0, :cond_0

    .line 183
    iput p1, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    .line 184
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mProgress:I

    if-le v0, p1, :cond_3

    .line 185
    iput p1, p0, Lcom/meizu/widget/CircleProgressBar;->mProgress:I

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/meizu/widget/CircleProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 197
    :cond_0
    if-gez p1, :cond_1

    .line 198
    const/4 p1, 0x0

    .line 200
    :cond_1
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    .line 201
    iget p1, p0, Lcom/meizu/widget/CircleProgressBar;->mMax:I

    .line 203
    :cond_2
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mProgress:I

    if-eq p1, v0, :cond_3

    .line 204
    iput p1, p0, Lcom/meizu/widget/CircleProgressBar;->mProgress:I

    .line 205
    iget v0, p0, Lcom/meizu/widget/CircleProgressBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/CircleProgressBar;->getPosByProgress(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/CircleProgressBar;->mBarPostition:I

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_0
.end method
