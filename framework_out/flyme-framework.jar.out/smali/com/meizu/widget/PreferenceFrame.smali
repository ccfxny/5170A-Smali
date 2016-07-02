.class public Lcom/meizu/widget/PreferenceFrame;
.super Landroid/widget/FrameLayout;
.source "PreferenceFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;,
        Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;,
        Lcom/meizu/widget/PreferenceFrame$State;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19


# instance fields
.field private mActivePointerId:I

.field private mEnableScroll:Z

.field private mFlingDistance:I

.field private mInitialMotionX:I

.field private mIsBeingDragged:Z

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOpenedState:Z

.field private mScrollToPosition:I

.field private mStateChangedListener:Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/PreferenceFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/PreferenceFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/PreferenceFrame;->mEnableScroll:Z

    .line 52
    iput-boolean v1, p0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    .line 66
    iput-boolean v1, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    .line 86
    invoke-direct {p0}, Lcom/meizu/widget/PreferenceFrame;->init()V

    .line 87
    return-void
.end method

.method private allowScroll(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 448
    iget v3, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    sub-int/2addr v3, p1

    if-lez v3, :cond_1

    move v0, v2

    .line 449
    .local v0, "toLeft":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    if-nez v3, :cond_2

    .line 453
    :cond_0
    :goto_1
    return v1

    .end local v0    # "toLeft":Z
    :cond_1
    move v0, v1

    .line 448
    goto :goto_0

    .line 451
    .restart local v0    # "toLeft":Z
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 453
    goto :goto_1
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->getScrollX()I

    move-result v1

    .line 400
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 406
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_0
    return v2
.end method

.method private init()V
    .locals 3

    .prologue
    .line 90
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->setFocusable(Z)V

    .line 91
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->setDescendantFocusability(I)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->setWillNotDraw(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 94
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/PreferenceFrame;->mTouchSlop:I

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/PreferenceFrame;->mMinimumVelocity:I

    .line 96
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/PreferenceFrame;->mMaximumVelocity:I

    .line 97
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 98
    .local v1, "density":F
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/widget/PreferenceFrame;->mFlingDistance:I

    .line 100
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 411
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 421
    :cond_0
    return-void
.end method

.method private isTouchOnView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 526
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 527
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 528
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x1

    .line 531
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 433
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 434
    .local v1, "pointerId":I
    iget v3, p0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 437
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 438
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    .line 439
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    .line 440
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    .line 441
    iget-object v3, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 442
    iget-object v3, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 445
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 460
    invoke-virtual {p0, v4}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 461
    .local v0, "currentPosition":I
    invoke-virtual {p0, v4}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v2}, Lcom/meizu/widget/ScrollPane;->getScrollRange()[I

    move-result-object v1

    .line 462
    .local v1, "limits":[I
    aget v2, v1, v4

    aget v3, v1, v5

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 463
    aget v2, v1, v5

    invoke-direct {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->scrollToTarget(I)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    aget v2, v1, v4

    invoke-direct {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->scrollToTarget(I)V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 428
    :cond_0
    return-void
.end method

.method private scrollBy(I)V
    .locals 1
    .param p1, "deltaX"    # I

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollPane;->scrollBy(I)V

    .line 387
    return-void
.end method

.method private scrollTo(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollPane;->scrollTo(I)V

    .line 395
    return-void
.end method

.method private scrollToTarget(I)V
    .locals 4
    .param p1, "target"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 470
    invoke-direct {p0, p1}, Lcom/meizu/widget/PreferenceFrame;->smoothScrollTo(I)V

    .line 471
    invoke-virtual {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v1}, Lcom/meizu/widget/ScrollPane;->getScrollRange()[I

    move-result-object v0

    .line 472
    .local v0, "limits":[I
    aget v1, v0, v3

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/meizu/widget/PreferenceFrame;->setOpenedState(Z)V

    .line 473
    return-void

    :cond_0
    move v1, v3

    .line 472
    goto :goto_0
.end method

.method private setOpenedState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/PreferenceFrame;->mStateChangedListener:Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v1, p0, Lcom/meizu/widget/PreferenceFrame;->mStateChangedListener:Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/meizu/widget/PreferenceFrame$State;->OPEN:Lcom/meizu/widget/PreferenceFrame$State;

    :goto_0
    invoke-interface {v1, v0}, Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;->onStateChanged(Lcom/meizu/widget/PreferenceFrame$State;)V

    .line 497
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    .line 499
    return-void

    .line 495
    :cond_1
    sget-object v0, Lcom/meizu/widget/PreferenceFrame$State;->CLOSE:Lcom/meizu/widget/PreferenceFrame$State;

    goto :goto_0

    .line 497
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private smoothScrollTo(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/PreferenceFrame;->smoothScrollTo(II)V

    .line 370
    return-void
.end method

.method private smoothScrollTo(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # I

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollPane;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/meizu/widget/ScrollPane;->smoothScrollTo(II)V

    .line 379
    return-void
.end method


# virtual methods
.method public determineTarget(II)I
    .locals 7
    .param p1, "velocity"    # I
    .param p2, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 476
    invoke-virtual {p0, v5}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v3}, Lcom/meizu/widget/ScrollPane;->getScrollRange()[I

    move-result-object v1

    .line 477
    .local v1, "limits":[I
    invoke-virtual {p0, v5}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 478
    .local v0, "currentPosition":I
    aget v3, v1, v5

    aget v4, v1, v6

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_1

    aget v2, v1, v6

    .line 479
    .local v2, "target":I
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/PreferenceFrame;->mFlingDistance:I

    if-le v3, v4, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/PreferenceFrame;->mMinimumVelocity:I

    if-le v3, v4, :cond_0

    .line 480
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 481
    aget v2, v1, v6

    .line 486
    :cond_0
    :goto_1
    return v2

    .line 478
    .end local v2    # "target":I
    :cond_1
    aget v2, v1, v5

    goto :goto_0

    .line 482
    .restart local v2    # "target":I
    :cond_2
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    .line 483
    aget v2, v1, v5

    goto :goto_1
.end method

.method public getCurrentState()Lcom/meizu/widget/PreferenceFrame$State;
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/widget/PreferenceFrame$State;->OPEN:Lcom/meizu/widget/PreferenceFrame$State;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/meizu/widget/PreferenceFrame$State;->CLOSE:Lcom/meizu/widget/PreferenceFrame$State;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 106
    invoke-virtual {p0, v3}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/widget/ScrollPane;

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "second child must be ScrollPane"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    invoke-virtual {p0, v3}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/ScrollPane;

    .line 112
    .local v1, "scrollPane":Lcom/meizu/widget/ScrollPane;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/HeaderLinearLayout;

    .line 114
    .local v0, "headerLayout":Lcom/meizu/widget/HeaderLinearLayout;
    invoke-virtual {v0, v1}, Lcom/meizu/widget/HeaderLinearLayout;->setScrollPane(Lcom/meizu/widget/ScrollPane;)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/meizu/widget/ScrollPane;->setHeaderLayout(Lcom/meizu/widget/HeaderLinearLayout;)V

    .line 118
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mEnableScroll:Z

    if-nez v9, :cond_0

    .line 124
    const/4 v9, 0x0

    .line 221
    :goto_0
    return v9

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 129
    .local v0, "action":I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    iget-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    if-eqz v9, :cond_1

    .line 130
    const/4 v9, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v9}, Lcom/meizu/widget/ScrollPane;->getScrollRange()[I

    move-result-object v3

    .line 135
    .local v3, "limits":[I
    iget-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/4 v10, 0x0

    aget v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 136
    const/4 v9, 0x1

    goto :goto_0

    .line 140
    :cond_2
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 221
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    goto :goto_0

    .line 146
    :pswitch_1
    iget v1, p0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    .line 147
    .local v1, "activePointerId":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 153
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 154
    .local v4, "pointerIndex":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    .line 157
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 158
    .local v5, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v7, v9

    .line 159
    .local v7, "y":I
    iget v9, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 160
    .local v6, "xDiff":I
    iget v9, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 161
    .local v8, "yDiff":I
    iget v9, p0, Lcom/meizu/widget/PreferenceFrame;->mTouchSlop:I

    if-le v6, v9, :cond_3

    sub-int v9, v6, v8

    if-lez v9, :cond_3

    invoke-direct {p0, v5}, Lcom/meizu/widget/PreferenceFrame;->allowScroll(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 163
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    .line 164
    iput v5, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    .line 165
    iput v7, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    .line 166
    invoke-direct {p0}, Lcom/meizu/widget/PreferenceFrame;->initVelocityTrackerIfNotExists()V

    .line 167
    iget-object v9, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 168
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 175
    .end local v1    # "activePointerId":I
    .end local v4    # "pointerIndex":I
    .end local v5    # "x":I
    .end local v6    # "xDiff":I
    .end local v7    # "y":I
    .end local v8    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 176
    .restart local v5    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 177
    .restart local v7    # "y":I
    invoke-direct {p0, v5, v7}, Lcom/meizu/widget/PreferenceFrame;->inChild(II)Z

    move-result v9

    if-nez v9, :cond_4

    .line 178
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    .line 179
    invoke-direct {p0}, Lcom/meizu/widget/PreferenceFrame;->recycleVelocityTracker()V

    goto :goto_1

    .line 187
    :cond_4
    iput v5, p0, Lcom/meizu/widget/PreferenceFrame;->mInitialMotionX:I

    iput v5, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    .line 188
    iput v7, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    .line 189
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    .line 191
    invoke-direct {p0}, Lcom/meizu/widget/PreferenceFrame;->initOrResetVelocityTracker()V

    .line 192
    iget-object v9, p0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 201
    .end local v5    # "x":I
    .end local v7    # "y":I
    :pswitch_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    .line 202
    const/4 v9, -0x1

    iput v9, p0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    .line 204
    invoke-direct {p0}, Lcom/meizu/widget/PreferenceFrame;->rebound()V

    goto/16 :goto_1

    .line 207
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 208
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    .line 210
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    goto/16 :goto_1

    .line 214
    .end local v2    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/meizu/widget/PreferenceFrame;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 217
    invoke-direct {p0}, Lcom/meizu/widget/PreferenceFrame;->rebound()V

    goto/16 :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/PreferenceFrame;->mEnableScroll:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 229
    const/16 v17, 0x0

    .line 318
    :goto_0
    return v17

    .line 233
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->initVelocityTrackerIfNotExists()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 239
    .local v3, "action":I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/meizu/widget/ScrollPane;

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/widget/ScrollPane;->getScrollRange()[I

    move-result-object v9

    .line 240
    .local v9, "limits":[I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/16 v18, 0x0

    aget v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->rebound()V

    .line 242
    const/16 v17, 0x0

    goto :goto_0

    .line 245
    :cond_1
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 318
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->getChildCount()I

    move-result v17

    if-nez v17, :cond_3

    .line 248
    const/16 v17, 0x0

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/PreferenceFrame;->mInitialMotionX:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    .line 253
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    goto :goto_1

    .line 257
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 258
    .local v4, "activePointerIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    .line 259
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 261
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 262
    .local v15, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 263
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    move/from16 v17, v0

    sub-int v6, v17, v15

    .line 264
    .local v6, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    move/from16 v17, v0

    sub-int v7, v17, v16

    .line 265
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v17

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v17, v17, v18

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/meizu/widget/PreferenceFrame;->allowScroll(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 268
    .local v12, "parent":Landroid/view/ViewParent;
    if-eqz v12, :cond_5

    .line 269
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 271
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    .line 272
    if-lez v6, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v6, v6, v17

    .line 278
    .end local v12    # "parent":Landroid/view/ViewParent;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 280
    move-object/from16 v0, p0

    iput v15, v0, Lcom/meizu/widget/PreferenceFrame;->mLastMotionX:I

    .line 281
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/PreferenceFrame;->mLastMotionY:I

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->getScrollX()I

    move-result v10

    .line 283
    .local v10, "oldX":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->getScrollY()I

    move-result v11

    .line 284
    .local v11, "oldY":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/widget/PreferenceFrame;->scrollBy(I)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->getScrollX()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->getScrollY()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/meizu/widget/PreferenceFrame;->onScrollChanged(IIII)V

    goto/16 :goto_1

    .line 275
    .end local v10    # "oldX":I
    .end local v11    # "oldY":I
    .restart local v12    # "parent":Landroid/view/ViewParent;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mTouchSlop:I

    move/from16 v17, v0

    add-int v6, v6, v17

    goto :goto_2

    .line 290
    .end local v4    # "activePointerIndex":I
    .end local v6    # "deltaX":I
    .end local v7    # "deltaY":I
    .end local v12    # "parent":Landroid/view/ViewParent;
    .end local v15    # "x":I
    .end local v16    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/PreferenceFrame;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 292
    .local v14, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v8, v0

    .line 295
    .local v8, "initialVelocity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 296
    .local v5, "activePointerIndex2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 297
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/PreferenceFrame;->mInitialMotionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 298
    .local v13, "totalDelta":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/meizu/widget/PreferenceFrame;->determineTarget(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/widget/PreferenceFrame;->scrollToTarget(I)V

    .line 303
    .end local v13    # "totalDelta":I
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/PreferenceFrame;->mActivePointerId:I

    .line 304
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/PreferenceFrame;->mIsBeingDragged:Z

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 300
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/PreferenceFrame;->rebound()V

    goto :goto_3

    .line 307
    .end local v5    # "activePointerIndex2":I
    .end local v8    # "initialVelocity":I
    .end local v14    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/16 v18, 0x0

    aget v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_2

    .line 308
    const/16 v17, 0x1

    aget v17, v9, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/widget/PreferenceFrame;->smoothScrollTo(I)V

    .line 309
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/widget/PreferenceFrame;->setOpenedState(Z)V

    goto/16 :goto_1

    .line 314
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/PreferenceFrame;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setOnScrollingListener(Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollPane;->setOnScrollingListener(Lcom/meizu/widget/PreferenceFrame$OnScrollingListener;)V

    .line 515
    return-void
.end method

.method public setOnStateChangedListener(Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/meizu/widget/PreferenceFrame;->mStateChangedListener:Lcom/meizu/widget/PreferenceFrame$OnStateChangedListener;

    .line 507
    return-void
.end method

.method public setScrollDistance(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollPane;->setScrollDistance(I)V

    .line 353
    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/meizu/widget/PreferenceFrame;->mEnableScroll:Z

    .line 558
    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 539
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollPane;->setShadow(Landroid/graphics/drawable/Drawable;)V

    .line 540
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->invalidate()V

    .line 541
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollPane;->setShadowWidth(I)V

    .line 549
    invoke-virtual {p0}, Lcom/meizu/widget/PreferenceFrame;->invalidate()V

    .line 550
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/PreferenceFrame;->toggle(Z)V

    .line 327
    return-void
.end method

.method public toggle(Z)V
    .locals 4
    .param p1, "smoothScroll"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 335
    invoke-virtual {p0, v2}, Lcom/meizu/widget/PreferenceFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/ScrollPane;

    invoke-virtual {v1}, Lcom/meizu/widget/ScrollPane;->getScrollRange()[I

    move-result-object v0

    .line 336
    .local v0, "limits":[I
    iget-boolean v1, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    if-eqz v1, :cond_0

    aget v1, v0, v2

    :goto_0
    iput v1, p0, Lcom/meizu/widget/PreferenceFrame;->mScrollToPosition:I

    .line 337
    if-eqz p1, :cond_1

    .line 338
    iget v1, p0, Lcom/meizu/widget/PreferenceFrame;->mScrollToPosition:I

    invoke-direct {p0, v1}, Lcom/meizu/widget/PreferenceFrame;->smoothScrollTo(I)V

    .line 342
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/widget/PreferenceFrame;->mOpenedState:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/meizu/widget/PreferenceFrame;->setOpenedState(Z)V

    .line 343
    return-void

    .line 336
    :cond_0
    aget v1, v0, v3

    goto :goto_0

    .line 340
    :cond_1
    iget v1, p0, Lcom/meizu/widget/PreferenceFrame;->mScrollToPosition:I

    invoke-direct {p0, v1}, Lcom/meizu/widget/PreferenceFrame;->scrollTo(I)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 342
    goto :goto_2
.end method
