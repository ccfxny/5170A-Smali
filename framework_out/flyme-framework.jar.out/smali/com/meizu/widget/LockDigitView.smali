.class public Lcom/meizu/widget/LockDigitView;
.super Landroid/view/View;
.source "LockDigitView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/LockDigitView$ShapeHolder;,
        Lcom/meizu/widget/LockDigitView$CellInfo;,
        Lcom/meizu/widget/LockDigitView$OnPatternListener;,
        Lcom/meizu/widget/LockDigitView$Cell;
    }
.end annotation


# static fields
.field private static final BG_SIZE_MIN:I = 0xa0

.field private static final COLUMN_NUM:I = 0x3

.field private static final DEBUG_DRAWINGS:Z = false

.field private static final ROW_NUM:I = 0x4

.field static final TAG:Ljava/lang/String; = "LockDigitView"

.field private static final TEXT_COLOR_TOUCHED:I = -0x4c000001


# instance fields
.field private CircleRadio:I

.field private alphaPlay:Z

.field private iconHeight:I

.field private iconWidth:I

.field private isAlphaAnimating:Z

.field private isWhiteAnim:Z

.field private lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

.field private mAlphaAnim:Landroid/animation/AnimatorSet;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCellInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/widget/LockDigitView$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellPaint:Landroid/graphics/Paint;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDefIcons:[Landroid/graphics/drawable/Drawable;

.field private mEnableHapticFeedback:Z

.field private mFMI:Landroid/graphics/Paint$FontMetricsInt;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

.field private mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDown:Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mTextColorDefault:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSizeDefault:I

.field private touchOne:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LockDigitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0xaa

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mDebugPaint:Landroid/graphics/Paint;

    .line 45
    const v0, -0x4c000001

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->mTextColorDefault:I

    .line 53
    const/16 v0, 0x48

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->mTextSizeDefault:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    .line 63
    iput v4, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 64
    iput v4, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 66
    iput-boolean v3, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 67
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    .line 68
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    .line 69
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 70
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 72
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    .line 81
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->isAlphaAnimating:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    .line 83
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->touchOne:Z

    .line 85
    iput-boolean v3, p0, Lcom/meizu/widget/LockDigitView;->alphaPlay:Z

    .line 86
    iput-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->isWhiteAnim:Z

    .line 87
    const/16 v0, 0x51

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->CircleRadio:I

    .line 88
    iput v5, p0, Lcom/meizu/widget/LockDigitView;->iconWidth:I

    .line 89
    iput v5, p0, Lcom/meizu/widget/LockDigitView;->iconHeight:I

    .line 641
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    .line 191
    invoke-virtual {p0, v3}, Lcom/meizu/widget/LockDigitView;->setClickable(Z)V

    .line 193
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    .line 194
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/LockDigitView;->mTextColorDefault:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa02005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->CircleRadio:I

    .line 201
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->iconWidth:I

    .line 202
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->mTextSizeDefault:I

    .line 203
    iget v0, p0, Lcom/meizu/widget/LockDigitView;->iconWidth:I

    iput v0, p0, Lcom/meizu/widget/LockDigitView;->iconHeight:I

    .line 204
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->mAudioManager:Landroid/media/AudioManager;

    .line 205
    return-void
.end method

.method private addCellToPattern(Lcom/meizu/widget/LockDigitView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    .line 402
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->shouldSpeakPasswordForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 404
    .local v0, "num":I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 407
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/LockDigitView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 409
    .end local v0    # "num":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyCellAdded()V

    .line 411
    return-void
.end method

.method private canAdd2Pattern(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-static {p1, p2}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v1

    .line 777
    .local v1, "key":I
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$CellInfo;

    .line 778
    .local v0, "info":Lcom/meizu/widget/LockDigitView$CellInfo;
    if-eqz v0, :cond_2

    .line 779
    iget-object v3, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v2

    .line 782
    :cond_1
    iget-boolean v2, v0, Lcom/meizu/widget/LockDigitView$CellInfo;->enabled:Z

    goto :goto_0

    .line 784
    :cond_2
    invoke-direct {p0, v1}, Lcom/meizu/widget/LockDigitView;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 785
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkForNewHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "moving"    # Z

    .prologue
    .line 425
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    .line 426
    .local v8, "squareWidth":F
    iget v9, p0, Lcom/meizu/widget/LockDigitView;->mHitFactor:F

    mul-float/2addr v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v3, v10

    .line 428
    .local v3, "hitRadius":F
    const/4 v7, -0x1

    .line 429
    .local v7, "rowHit":I
    const/4 v0, -0x1

    .line 431
    .local v0, "columnHit":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ge v4, v9, :cond_2

    .line 432
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1

    .line 433
    invoke-direct {p0, v4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v9

    sub-float v1, p1, v9

    .line 434
    .local v1, "cx":F
    invoke-direct {p0, v5}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v9

    sub-float v2, p2, v9

    .line 435
    .local v2, "cy":F
    mul-float v9, v1, v1

    mul-float v10, v2, v2

    add-float/2addr v9, v10

    cmpg-float v9, v9, v3

    if-gez v9, :cond_0

    .line 436
    move v7, v5

    .line 437
    move v0, v4

    .line 432
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 431
    .end local v1    # "cx":F
    .end local v2    # "cy":F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 442
    .end local v5    # "j":I
    :cond_2
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    const/4 v9, -0x1

    if-ne v0, v9, :cond_4

    .line 443
    :cond_3
    const/4 v9, 0x0

    .line 457
    :goto_2
    return-object v9

    .line 445
    :cond_4
    if-eqz p3, :cond_5

    iget-object v9, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 446
    iget-object v9, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/LockDigitView$Cell;

    .line 447
    .local v6, "last":Lcom/meizu/widget/LockDigitView$Cell;
    iget v9, v6, Lcom/meizu/widget/LockDigitView$Cell;->row:I

    if-ne v9, v7, :cond_5

    iget v9, v6, Lcom/meizu/widget/LockDigitView$Cell;->column:I

    if-ne v9, v0, :cond_5

    .line 448
    const/4 v9, 0x0

    goto :goto_2

    .line 452
    .end local v6    # "last":Lcom/meizu/widget/LockDigitView$Cell;
    :cond_5
    invoke-direct {p0, v7, v0}, Lcom/meizu/widget/LockDigitView;->canAdd2Pattern(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 455
    invoke-static {v7, v0}, Lcom/meizu/widget/LockDigitView$Cell;->of(II)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v9

    goto :goto_2

    .line 457
    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private createAlphaAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 828
    new-instance v2, Lcom/meizu/widget/LockDigitView$ShapeHolder;

    invoke-direct {v2, p0}, Lcom/meizu/widget/LockDigitView$ShapeHolder;-><init>(Lcom/meizu/widget/LockDigitView;)V

    iput-object v2, p0, Lcom/meizu/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    .line 829
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 831
    .local v0, "numAlphaPHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/meizu/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 833
    .local v1, "pressAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 834
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 835
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10c0006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 837
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 839
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    .line 840
    iget-object v2, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 841
    iget-object v2, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 842
    return-void

    .line 829
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "moving"    # Z

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/LockDigitView;->checkForNewHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v0

    .line 389
    .local v0, "cell":Lcom/meizu/widget/LockDigitView$Cell;
    if-eqz v0, :cond_1

    .line 390
    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->addCellToPattern(Lcom/meizu/widget/LockDigitView$Cell;)V

    .line 391
    iget-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/LockDigitView;->performHapticFeedback(II)Z

    .line 398
    .end local v0    # "cell":Lcom/meizu/widget/LockDigitView$Cell;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "cell":Lcom/meizu/widget/LockDigitView$Cell;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawCell(Landroid/graphics/Canvas;IILcom/meizu/widget/LockDigitView$Cell;)Z
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "row"    # I
    .param p3, "column"    # I
    .param p4, "active"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    .line 704
    const/4 v11, 0x0

    .line 705
    .local v11, "label":Ljava/lang/String;
    const/4 v8, 0x0

    .line 706
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    .line 708
    .local v7, "enabled":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v5

    .line 709
    .local v5, "cx":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v6

    .line 720
    .local v6, "cy":F
    invoke-static/range {p2 .. p3}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v10

    .line 721
    .local v10, "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/widget/LockDigitView$CellInfo;

    .line 722
    .local v9, "info":Lcom/meizu/widget/LockDigitView$CellInfo;
    if-eqz v9, :cond_2

    .line 723
    iget-object v8, v9, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 724
    iget-object v11, v9, Lcom/meizu/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    .line 725
    iget-boolean v7, v9, Lcom/meizu/widget/LockDigitView$CellInfo;->enabled:Z

    .line 730
    :goto_0
    if-nez v8, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    if-nez v7, :cond_3

    .line 731
    :cond_1
    const/16 v17, 0x0

    .line 772
    :goto_1
    return v17

    .line 727
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/meizu/widget/LockDigitView;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_0

    .line 733
    :cond_3
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_8

    const/4 v14, 0x1

    .line 734
    .local v14, "touched":Z
    :goto_2
    if-eqz v9, :cond_4

    iget-object v0, v9, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    .line 735
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->alphaPlay:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v14, :cond_9

    sget-object v17, Landroid/view/View;->PRESSED_STATE_SET:[I

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 737
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 743
    :cond_6
    :goto_4
    if-eqz v8, :cond_c

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/meizu/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 760
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->touchOne:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->alphaPlay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 762
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->isWhiteAnim:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x99

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 769
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/LockDigitView;->CircleRadio:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 770
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/LockDigitView;->touchOne:Z

    .line 772
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 733
    .end local v14    # "touched":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 736
    .restart local v14    # "touched":Z
    :cond_9
    sget-object v17, Landroid/view/View;->EMPTY_STATE_SET:[I

    goto/16 :goto_3

    .line 739
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/LockDigitView;->alphaPlay:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 740
    iget-object v0, v9, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v14, :cond_b

    sget-object v17, Landroid/view/View;->PRESSED_STATE_SET:[I

    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_4

    :cond_b
    sget-object v17, Landroid/view/View;->EMPTY_STATE_SET:[I

    goto :goto_7

    .line 746
    :cond_c
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/LockDigitView;->mTextColorDefault:I

    .line 747
    .local v12, "textColor":I
    :goto_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/LockDigitView;->mTextSizeDefault:I

    .line 748
    .local v13, "textSize":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    .line 755
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v15, v5, v17

    .line 756
    .local v15, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v18, v0

    add-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v6, v17

    .line 757
    .local v16, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v11, v15, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 746
    .end local v12    # "textColor":I
    .end local v13    # "textSize":I
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/LockDigitView;->mTextColorDefault:I

    goto/16 :goto_8

    .line 747
    .restart local v12    # "textColor":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/LockDigitView;->mTextSizeDefault:I

    move/from16 v17, v0

    div-int/lit8 v13, v17, 0x2

    goto/16 :goto_9

    .line 753
    .restart local v13    # "textSize":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    goto :goto_a

    .line 766
    .end local v12    # "textColor":I
    .end local v13    # "textSize":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xa6

    const/16 v19, 0xaa

    const/16 v20, 0xaf

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x50

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_6
.end method

.method private drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    const/16 v9, 0xff

    .line 663
    invoke-direct {p0, p4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v0

    .line 664
    .local v0, "cx":F
    invoke-direct {p0, p3}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v1

    .line 665
    .local v1, "cy":F
    if-eqz p2, :cond_1

    .line 666
    const/4 v6, 0x0

    .line 667
    .local v6, "w":I
    const/4 v2, 0x0

    .line 668
    .local v2, "h":I
    const/4 v3, 0x0

    .line 669
    .local v3, "l":I
    const/4 v5, 0x0

    .line 670
    .local v5, "t":I
    iget-boolean v7, p0, Lcom/meizu/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/meizu/widget/LockDigitView;->alphaPlay:Z

    if-eqz v7, :cond_3

    .line 672
    iget-object v4, p0, Lcom/meizu/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/widget/LockDigitView$ShapeHolder;

    .line 673
    .local v4, "shapeHolder":Lcom/meizu/widget/LockDigitView$ShapeHolder;
    iget v6, p0, Lcom/meizu/widget/LockDigitView;->iconWidth:I

    .line 674
    iget v2, p0, Lcom/meizu/widget/LockDigitView;->iconHeight:I

    .line 675
    invoke-direct {p0, p4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v7

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 676
    invoke-direct {p0, p3}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 677
    invoke-virtual {p2, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 678
    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    invoke-virtual {v7}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v7

    if-ne v7, p4, :cond_0

    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    invoke-virtual {v7}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v7

    if-ne v7, p3, :cond_0

    .line 680
    iget-boolean v7, p0, Lcom/meizu/widget/LockDigitView;->isWhiteAnim:Z

    if-eqz v7, :cond_2

    .line 681
    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView$ShapeHolder;->getAlpha()F

    move-result v8

    const/high16 v9, 0x42960000    # 75.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 687
    :goto_0
    iget v7, p0, Lcom/meizu/widget/LockDigitView;->CircleRadio:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 689
    :cond_0
    add-int v7, v3, v6

    add-int v8, v5, v2

    invoke-virtual {p2, v3, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 690
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 701
    .end local v2    # "h":I
    .end local v3    # "l":I
    .end local v4    # "shapeHolder":Lcom/meizu/widget/LockDigitView$ShapeHolder;
    .end local v5    # "t":I
    .end local v6    # "w":I
    :cond_1
    :goto_1
    return-void

    .line 684
    .restart local v2    # "h":I
    .restart local v3    # "l":I
    .restart local v4    # "shapeHolder":Lcom/meizu/widget/LockDigitView$ShapeHolder;
    .restart local v5    # "t":I
    .restart local v6    # "w":I
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/16 v8, 0xa6

    const/16 v9, 0xaa

    const/16 v10, 0xaf

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 685
    iget-object v7, p0, Lcom/meizu/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/meizu/widget/LockDigitView$ShapeHolder;->getAlpha()F

    move-result v8

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 692
    .end local v4    # "shapeHolder":Lcom/meizu/widget/LockDigitView$ShapeHolder;
    :cond_3
    iget v6, p0, Lcom/meizu/widget/LockDigitView;->iconWidth:I

    .line 693
    iget v2, p0, Lcom/meizu/widget/LockDigitView;->iconHeight:I

    .line 694
    invoke-direct {p0, p4}, Lcom/meizu/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v7

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 695
    invoke-direct {p0, p3}, Lcom/meizu/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 696
    add-int v7, v3, v6

    add-int v8, v5, v2

    invoke-virtual {p2, v3, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 697
    invoke-virtual {p2, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 698
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0xc

    .line 208
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 209
    const/16 v0, 0xc

    .line 210
    .local v0, "N":I
    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    .line 211
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xa090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 212
    .local v2, "icons":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 213
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "icons":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, p1

    return-object v3
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 584
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 585
    .local v2, "y":F
    invoke-direct {p0, v1, v2, v4}, Lcom/meizu/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v0

    .line 586
    .local v0, "hitCell":Lcom/meizu/widget/LockDigitView$Cell;
    if-eqz v0, :cond_1

    .line 587
    iput-boolean v5, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 588
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternStarted()V

    .line 589
    iget-boolean v3, p0, Lcom/meizu/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz v3, :cond_0

    .line 590
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 592
    :cond_0
    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    .line 593
    iput-boolean v5, p0, Lcom/meizu/widget/LockDigitView;->touchOne:Z

    .line 594
    invoke-virtual {p0, v4}, Lcom/meizu/widget/LockDigitView;->playSoundEffect(I)V

    .line 595
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 600
    :goto_0
    iput v1, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 601
    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 602
    return-void

    .line 597
    :cond_1
    iput-boolean v4, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 598
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    .line 510
    iget-boolean v8, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    if-nez v8, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 518
    .local v2, "historySize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    add-int/lit8 v8, v2, 0x1

    if-ge v4, v8, :cond_0

    .line 519
    iget-boolean v8, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    if-nez v8, :cond_2

    .line 520
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    goto :goto_0

    .line 523
    :cond_2
    if-ge v4, v2, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    .line 524
    .local v6, "x":F
    :goto_2
    if-ge v4, v2, :cond_8

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    .line 525
    .local v7, "y":F
    :goto_3
    invoke-direct {p0, v6, v7, v11}, Lcom/meizu/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/widget/LockDigitView$Cell;

    move-result-object v3

    .line 526
    .local v3, "hitCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v8, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 527
    .local v5, "patternSize":I
    if-eqz v3, :cond_3

    if-ne v5, v11, :cond_3

    .line 528
    iput-boolean v11, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 529
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternStarted()V

    .line 531
    :cond_3
    if-eqz v3, :cond_5

    .line 532
    iget-boolean v8, p0, Lcom/meizu/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz v8, :cond_4

    .line 533
    iget-object v8, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    .line 535
    :cond_4
    iput-object v3, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    .line 536
    iput-boolean v11, p0, Lcom/meizu/widget/LockDigitView;->touchOne:Z

    .line 537
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 540
    :cond_5
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 541
    .local v0, "dx":F
    iget v8, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 542
    .local v1, "dy":F
    add-float v8, v0, v1

    iget v9, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    const v10, 0x3c23d70a    # 0.01f

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 543
    iput v6, p0, Lcom/meizu/widget/LockDigitView;->mInProgressX:F

    .line 544
    iput v7, p0, Lcom/meizu/widget/LockDigitView;->mInProgressY:F

    .line 518
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 523
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v3    # "hitCell":Lcom/meizu/widget/LockDigitView$Cell;
    .end local v5    # "patternSize":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    goto :goto_2

    .line 524
    .restart local v6    # "x":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    goto :goto_3
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 563
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 564
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->touchOne:Z

    .line 565
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 567
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternDetected()V

    .line 569
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    if-eqz v0, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->createAlphaAnimation()V

    .line 574
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->isAlphaAnimating:Z

    .line 576
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 580
    :cond_1
    return-void
.end method

.method private isCellNumeric(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 790
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 791
    const/4 v0, 0x0

    .line 793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 280
    :cond_0
    const-string v0, "lockscreen_access_pattern_cell_added"

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    invoke-interface {v0}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternCleared()V

    .line 301
    :cond_0
    const-string v0, "lockscreen_access_pattern_cleared"

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 294
    :cond_0
    const-string v0, "lockscreen_access_pattern_detected"

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    invoke-interface {v0}, Lcom/meizu/widget/LockDigitView$OnPatternListener;->onPatternStart()V

    .line 287
    :cond_0
    const-string v0, "lockscreen_access_pattern_start"

    invoke-direct {p0, v0}, Lcom/meizu/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 340
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 349
    move v0, v1

    .line 351
    :goto_0
    return v0

    .line 342
    :sswitch_0
    move v0, p2

    .line 343
    goto :goto_0

    .line 345
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 346
    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "idName"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v1, -0x1

    .line 552
    .local v1, "resId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 553
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 554
    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/widget/LockDigitView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 557
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/meizu/widget/LockDigitView;->sendAccessibilityEvent(I)V

    .line 558
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/widget/LockDigitView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 559
    return-void
.end method

.method private shouldSpeakPasswordForAccessibility()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "speak_password"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 416
    .local v1, "speakPassword":Z
    :goto_0
    iget-object v4, p0, Lcom/meizu/widget/LockDigitView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/meizu/widget/LockDigitView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/LockDigitView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v0, v2

    .line 419
    .local v0, "hasHeadphones":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .end local v0    # "hasHeadphones":Z
    .end local v1    # "speakPassword":Z
    :cond_3
    move v1, v3

    .line 414
    goto :goto_0

    .restart local v1    # "speakPassword":Z
    :cond_4
    move v0, v3

    .line 416
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public deleteLastCell()V
    .locals 3

    .prologue
    .line 797
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 798
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 799
    iget-object v1, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 800
    :cond_0
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 319
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    .line 326
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 363
    const/16 v0, 0x280

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 357
    const/16 v0, 0x1e0

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 862
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->isAlphaAnimating:Z

    .line 856
    const/4 p1, 0x0

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/LockDigitView;->lastTouched:Lcom/meizu/widget/LockDigitView$Cell;

    .line 858
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 866
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 851
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 847
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 614
    iget-object v4, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    .line 615
    .local v4, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/LockDigitView$Cell;>;"
    const/4 v3, 0x0

    .line 617
    .local v3, "lastPattern":Lcom/meizu/widget/LockDigitView$Cell;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 618
    .local v0, "N":I
    if-lez v0, :cond_0

    iget-boolean v5, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    if-eqz v5, :cond_0

    .line 619
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastPattern":Lcom/meizu/widget/LockDigitView$Cell;
    check-cast v3, Lcom/meizu/widget/LockDigitView$Cell;

    .line 622
    .restart local v3    # "lastPattern":Lcom/meizu/widget/LockDigitView$Cell;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 623
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 624
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/meizu/widget/LockDigitView;->drawCell(Landroid/graphics/Canvas;IILcom/meizu/widget/LockDigitView$Cell;)Z

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 622
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 463
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 465
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 476
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/LockDigitView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 477
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 479
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 467
    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 470
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 473
    :pswitch_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 369
    .local v2, "minimumWidth":I
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 370
    .local v1, "minimumHeight":I
    invoke-direct {p0, p1, v2}, Lcom/meizu/widget/LockDigitView;->resolveMeasured(II)I

    move-result v4

    .line 371
    .local v4, "viewWidth":I
    invoke-direct {p0, p2, v1}, Lcom/meizu/widget/LockDigitView;->resolveMeasured(II)I

    move-result v3

    .line 372
    .local v3, "viewHeight":I
    mul-int/lit8 v5, v4, 0x4

    div-int/lit8 v5, v5, 0x3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 374
    .local v0, "minSize":I
    move v3, v0

    .line 375
    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 376
    invoke-virtual {p0, v4, v3}, Lcom/meizu/widget/LockDigitView;->setMeasuredDimension(II)V

    .line 377
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 331
    .local v1, "width":I
    int-to-float v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    .line 333
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 334
    .local v0, "height":I
    int-to-float v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    .line 335
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 484
    iget-boolean v2, p0, Lcom/meizu/widget/LockDigitView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 506
    :goto_0
    return v0

    .line 488
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 506
    goto :goto_0

    .line 490
    :pswitch_0
    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 491
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 494
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 497
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 500
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/meizu/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 501
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 502
    iput-boolean v1, p0, Lcom/meizu/widget/LockDigitView;->mPatternInProgress:Z

    .line 503
    invoke-direct {p0}, Lcom/meizu/widget/LockDigitView;->notifyPatternCleared()V

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetPattern()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/LockDigitView;->mPatternDown:Z

    .line 309
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 310
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 311
    return-void
.end method

.method public setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 807
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 808
    return-void
.end method

.method public setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "enabled"    # Z

    .prologue
    .line 651
    invoke-static {p1, p2}, Lcom/meizu/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v0

    .line 652
    .local v0, "index":I
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v3, 0x1

    if-ne p5, v3, :cond_0

    .line 653
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 657
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 658
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 659
    .local v2, "y":I
    int-to-float v3, v1

    iget v4, p0, Lcom/meizu/widget/LockDigitView;->mSquareWidth:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v2

    iget v5, p0, Lcom/meizu/widget/LockDigitView;->mSquareHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/meizu/widget/LockDigitView;->invalidate(IIII)V

    .line 660
    return-void

    .line 655
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    new-instance v4, Lcom/meizu/widget/LockDigitView$CellInfo;

    invoke-direct {v4, p3, p4, p5}, Lcom/meizu/widget/LockDigitView$CellInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setDefIcons([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "defIcons"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 816
    if-eqz p1, :cond_0

    .line 817
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 818
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    .line 821
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 822
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mInStealthMode:Z

    .line 242
    return-void
.end method

.method public setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/meizu/widget/LockDigitView$OnPatternListener;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/widget/LockDigitView$OnPatternListener;

    .line 262
    return-void
.end method

.method public setPattern(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v0, p0, Lcom/meizu/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    invoke-virtual {p0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 274
    return-void
.end method

.method public setPressedAnimation(Z)V
    .locals 0
    .param p1, "isPlay"    # Z

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->alphaPlay:Z

    .line 896
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/meizu/widget/LockDigitView;->mEnableHapticFeedback:Z

    .line 252
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 905
    iput p1, p0, Lcom/meizu/widget/LockDigitView;->mTextColorDefault:I

    .line 906
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 900
    iput p1, p0, Lcom/meizu/widget/LockDigitView;->mTextSizeDefault:I

    .line 901
    return-void
.end method
