.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AbsSeekBar"

.field private static final NO_ALPHA:I = 0xff

.field public static final SEEK_BAR_SCROLL_MODE_COMMON:I = 0x0

.field public static final SEEK_BAR_SCROLL_MODE_SLOW:I = 0x1


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F

.field private mDragTouchDownY:F

.field private mHalfThumbWidth:I

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mInDragoning:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F

.field protected mTouchScrollMode:I

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 51
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 52
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 53
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 54
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 68
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 74
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 51
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 52
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 53
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 54
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 68
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 74
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 51
    iput-object v8, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 52
    iput-object v8, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 53
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 54
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 68
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 74
    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 98
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 102
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 107
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 110
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 112
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 118
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 120
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 126
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 134
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->mzInit()V

    .line 136
    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 277
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 281
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 287
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 291
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 718
    :cond_0
    return-void
.end method

.method private getIntFromFloat(F)I
    .locals 1
    .param p1, "num"    # F

    .prologue
    .line 904
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPosByProgress(I)I
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 909
    .local v2, "width":I
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v4, v5

    .line 910
    .local v0, "available":I
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 911
    .local v3, "x":I
    int-to-float v4, p1

    iget v5, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .line 912
    .local v1, "prog":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    move v4, v3

    .line 925
    :goto_0
    return v4

    .line 916
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 917
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v4, v2, v4

    goto :goto_0

    .line 920
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v3

    .line 921
    goto :goto_0

    .line 924
    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move v4, v3

    .line 925
    goto :goto_0
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 455
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private invalidateThumb()V
    .locals 7

    .prologue
    .line 849
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 857
    :goto_0
    return-void

    .line 852
    :cond_0
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int v0, v3, v4

    .line 853
    .local v0, "delta":I
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 854
    .local v2, "thumbBound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 856
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private mzDrawThumb(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 870
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 872
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 873
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 874
    .local v3, "thumbWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v4, v5, v6

    .line 875
    .local v4, "width":I
    const/4 v0, 0x0

    .line 876
    .local v0, "delta":I
    if-le v4, v3, :cond_0

    .line 877
    sub-int v5, v4, v3

    div-int/lit8 v0, v5, 0x2

    .line 879
    :cond_0
    int-to-float v5, v0

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 891
    .end local v0    # "delta":I
    .end local v3    # "thumbWidth":I
    .end local v4    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 883
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 884
    .local v2, "thumbHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 885
    .local v1, "height":I
    const/4 v0, 0x0

    .line 886
    .restart local v0    # "delta":I
    if-le v1, v2, :cond_3

    .line 887
    sub-int v5, v1, v2

    div-int/lit8 v0, v5, 0x2

    .line 889
    :cond_3
    int-to-float v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private mzInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1032
    iget v0, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 1033
    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 1034
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 1035
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 1036
    iput v2, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 1037
    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 1038
    return-void
.end method

.method private mzInitTouchDownStates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1041
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1043
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1047
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 1048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 1050
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 1051
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    .line 1053
    :cond_1
    return-void
.end method

.method private mzInitTouchDownStates2(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1056
    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 1057
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 1059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 1060
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 1061
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 1065
    :goto_0
    return-void

    .line 1063
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private mzProcessTouchAction(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 930
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v13, v10, :cond_7

    .line 931
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v10, v13, :cond_4

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v10, :cond_4

    .line 935
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_2

    .line 936
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    .line 937
    .local v8, "width":I
    int-to-float v10, v8

    sub-float/2addr v10, v9

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    int-to-float v11, v11

    sub-float v6, v10, v11

    .line 938
    .local v6, "rtlX":F
    int-to-float v10, v8

    iget v11, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    int-to-float v11, v11

    sub-float v5, v10, v11

    .line 939
    .local v5, "rtlDragTouchDownX":F
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v10, v11

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_1

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_1

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_1

    .line 943
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 1023
    .end local v5    # "rtlDragTouchDownX":F
    .end local v6    # "rtlX":F
    .end local v8    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 944
    .restart local v5    # "rtlDragTouchDownX":F
    .restart local v6    # "rtlX":F
    .restart local v8    # "width":I
    :cond_1
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gtz v10, :cond_0

    .line 948
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 952
    .end local v5    # "rtlDragTouchDownX":F
    .end local v6    # "rtlX":F
    .end local v8    # "width":I
    :cond_2
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v10, v11

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_3

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_3

    iget v10, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v11, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v11}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    .line 956
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 957
    :cond_3
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v10}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    iget v11, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v11}, Landroid/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 961
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 964
    :cond_4
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v10, v13, :cond_6

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-ne v10, v13, :cond_6

    .line 967
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v10, v11

    .line 968
    .local v0, "available":I
    if-eqz v0, :cond_0

    .line 971
    iget v10, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v9, v10

    .line 972
    .local v1, "deltaX":F
    int-to-float v10, v0

    div-float v7, v1, v10

    .line 975
    .local v7, "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_5

    .line 976
    neg-float v7, v7

    .line 979
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 981
    .local v3, "max":I
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v11, v3

    mul-float/2addr v11, v7

    invoke-direct {p0, v11}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v10, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 983
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v3    # "max":I
    .end local v7    # "scale":F
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 985
    :cond_7
    const/4 v10, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 986
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    if-ne v10, v13, :cond_a

    .line 987
    iget v10, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 988
    .restart local v1    # "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 993
    .local v2, "deltaY":F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    .line 994
    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v10, :cond_8

    .line 995
    iput v9, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 996
    iput-boolean v13, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 1000
    :cond_8
    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    if-eqz v10, :cond_0

    .line 1004
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v10, v11

    .line 1005
    .restart local v0    # "available":I
    if-eqz v0, :cond_0

    .line 1008
    iget v10, p0, Landroid/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v10, v9, v10

    int-to-float v11, v0

    div-float v7, v10, v11

    .line 1011
    .restart local v7    # "scale":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_9

    .line 1012
    neg-float v7, v7

    .line 1015
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 1017
    .restart local v3    # "max":I
    iget v10, p0, Landroid/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v11, v3

    mul-float/2addr v11, v7

    invoke-direct {p0, v11}, Landroid/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v11

    add-int v4, v10, v11

    .line 1018
    .local v4, "progress":I
    invoke-virtual {p0, v4, v13}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 1020
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "max":I
    .end local v4    # "progress":I
    .end local v7    # "scale":F
    :cond_a
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method private mzSetInDragoning()V
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mInDragoning:Z

    .line 1069
    return-void
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 673
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 676
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 469
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 470
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 471
    .local v13, "thumbHeight":I
    sub-int/2addr v4, v15

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    .line 476
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 479
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 481
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 482
    .local v16, "top":I
    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    .line 488
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v6, "bottom":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    sub-int v8, v4, v14

    .line 489
    .local v8, "left":I
    :goto_1
    add-int v12, v8, v15

    .line 491
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 492
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 494
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 495
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 496
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v6, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 501
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 502
    return-void

    .line 484
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_1
    move/from16 v16, p4

    .line 485
    .restart local v16    # "top":I
    add-int v6, p4, v13

    .restart local v6    # "bottom":I
    goto :goto_0

    :cond_2
    move v8, v14

    .line 488
    goto :goto_1
.end method

.method private setThumbWidth()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 1029
    :cond_0
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 679
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 680
    .local v4, "width":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 681
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 683
    .local v5, "x":I
    const/4 v2, 0x0

    .line 684
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_2

    .line 685
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_0

    .line 686
    const/4 v3, 0x0

    .line 703
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 704
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 706
    int-to-float v6, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 707
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 708
    return-void

    .line 687
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_1

    .line 688
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 690
    .end local v3    # "scale":F
    :cond_1
    sub-int v6, v0, v5

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 691
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 694
    .end local v3    # "scale":F
    :cond_2
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    .line 695
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_0

    .line 696
    .end local v3    # "scale":F
    :cond_3
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    .line 697
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 699
    .end local v3    # "scale":F
    :cond_4
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 700
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v6, 0x0

    .line 424
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 425
    .local v3, "track":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 429
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 430
    .local v4, "trackHeight":I
    if-nez v0, :cond_2

    move v1, v6

    .line 435
    .local v1, "thumbHeight":I
    :goto_0
    if-le v1, v4, :cond_3

    .line 436
    sub-int v7, v1, v4

    div-int/lit8 v5, v7, 0x2

    .line 437
    .local v5, "trackOffset":I
    const/4 v2, 0x0

    .line 443
    .local v2, "thumbOffset":I
    :goto_1
    if-eqz v3, :cond_0

    .line 444
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    sub-int/2addr v8, v5

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    :cond_0
    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v6

    invoke-direct {p0, p1, v0, v6, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 451
    :cond_1
    return-void

    .line 430
    .end local v1    # "thumbHeight":I
    .end local v2    # "thumbOffset":I
    .end local v5    # "trackOffset":I
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 439
    .restart local v1    # "thumbHeight":I
    :cond_3
    const/4 v5, 0x0

    .line 440
    .restart local v5    # "trackOffset":I
    sub-int v7, v4, v1

    div-int/lit8 v2, v7, 0x2

    .restart local v2    # "thumbOffset":I
    goto :goto_1
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 547
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 551
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 553
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isColorTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->mzDrawThumb(Landroid/graphics/Canvas;)V

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 559
    :cond_1
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 525
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 526
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_0

    .line 527
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 528
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 529
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 530
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 531
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 532
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 535
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 536
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 537
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 541
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 396
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 399
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 381
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 382
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 386
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 387
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 390
    :cond_1
    return-void

    .line 383
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 863
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 864
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 865
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->invalidateThumb()V

    .line 867
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 372
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 375
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 519
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 767
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 768
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 769
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 773
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 774
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 776
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 778
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 779
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 781
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 782
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 785
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 741
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 745
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 747
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 762
    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 749
    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    .line 750
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 751
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 755
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 756
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 757
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 563
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 565
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 566
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 567
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 568
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 569
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 570
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 571
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 573
    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 574
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 576
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    monitor-exit p0

    return-void

    .line 565
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 563
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 403
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 405
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 406
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 412
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 414
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 511
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 514
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 820
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 822
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 823
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 829
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 831
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 420
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 421
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 2

    .prologue
    .line 724
    const-string v0, "AbsSeekBar"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 726
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    .prologue
    .line 733
    const-string v0, "AbsSeekBar"

    const-string/jumbo v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 735
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 582
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 668
    :cond_1
    :goto_0
    return v1

    .line 586
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 588
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 592
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->mzInitTouchDownStates(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 595
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 596
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 597
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 599
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->invalidateThumb()V

    .line 602
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 606
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->mzInitTouchDownStates2(Landroid/view/MotionEvent;)V

    .line 608
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 613
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 617
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->mzProcessTouchAction(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 620
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 621
    .local v0, "x":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 622
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 623
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 624
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 626
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->invalidateThumb()V

    .line 629
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 630
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 631
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 637
    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 640
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->mzProcessTouchAction(Landroid/view/MotionEvent;)V

    .line 641
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 642
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 653
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 656
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->mzSetInDragoning()V

    goto/16 :goto_0

    .line 646
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 647
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 648
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 661
    :pswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 662
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 663
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 665
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 789
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 815
    :goto_0
    return v2

    .line 792
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 793
    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 796
    .local v1, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 797
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 815
    goto :goto_0

    .line 799
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 800
    goto :goto_0

    .line 802
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 803
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 807
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 808
    goto :goto_0

    .line 810
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 811
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 797
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 337
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 338
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 356
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 359
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_1
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 320
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 321
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 152
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    const/4 v0, 0x1

    .line 158
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 160
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 170
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 177
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 179
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 180
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 182
    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 184
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 188
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 194
    .end local v1    # "state":[I
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->setThumbWidth()V

    .line 196
    return-void

    .line 155
    .end local v0    # "needUpdate":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 307
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 308
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 309
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 223
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 226
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 227
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 254
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 257
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 258
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 897
    iput p1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 898
    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 899
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 901
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 365
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
