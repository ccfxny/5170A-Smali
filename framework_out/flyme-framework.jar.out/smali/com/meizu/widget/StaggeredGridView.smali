.class public Lcom/meizu/widget/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/StaggeredGridView$FlingRunnable;,
        Lcom/meizu/widget/StaggeredGridView$PositionScroller;,
        Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;,
        Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;,
        Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;,
        Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;,
        Lcom/meizu/widget/StaggeredGridView$DragShadowItem;,
        Lcom/meizu/widget/StaggeredGridView$DragItemFilter;,
        Lcom/meizu/widget/StaggeredGridView$PerformClick;,
        Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;,
        Lcom/meizu/widget/StaggeredGridView$CheckForTap;,
        Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;,
        Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;,
        Lcom/meizu/widget/StaggeredGridView$SavedState;,
        Lcom/meizu/widget/StaggeredGridView$ColMap;,
        Lcom/meizu/widget/StaggeredGridView$ViewRectPair;,
        Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/meizu/widget/StaggeredGridView$RecycleBin;,
        Lcom/meizu/widget/StaggeredGridView$LayoutParams;,
        Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;,
        Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;,
        Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;,
        Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;,
        Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static final ANIM_DISMISS:I = 0x1

.field private static final ANIM_END:I = 0x0

.field private static final ANIM_IDLE:I = -0x1

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE_MODAL_MZ:I = 0x4

.field public static final CHOICE_MODE_NONE:I = 0x0

.field private static final COLUMN_COUNT_AUTO:I = -0x1

.field private static final DEBUG:Z = false

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field static final TOUCH_MODE_OVERSCROLL:I = 0x7

.field private static final TOUCH_MODE_REST:I = 0x6

.field private static final TOUCH_MODE_TAP:I = 0x4

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBeginClick:Z

.field private mChangeChildAlphaWhenDragView:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field private final mChildRectsForAnimation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/meizu/widget/StaggeredGridView$ViewRectPair;",
            ">;"
        }
    .end annotation
.end field

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mColCount:I

.field private mColCountSetting:I

.field private mColMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColWidth:I

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDataChanged:Z

.field mDelayUpdate:Ljava/lang/Runnable;

.field private mDeleteItemId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mDragAndDropPosition:I

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragScrollY:I

.field private mDragViewBackground:I

.field private mDragViewBackgroundDelete:I

.field private mDragViewBackgroundFilter:I

.field private mDrawSelectorOnTop:Z

.field private mEnableAnimation:Z

.field private mEnableTopShadow:Z

.field private mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOuting:Z

.field private mFastChildLayout:Z

.field private mFirstAdapterId:J

.field private mFirstPosition:I

.field private mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

.field private mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

.field private mItemMargin:I

.field private mItemTops:[I

.field private mLastOverScrollX:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLayoutAnim:Z

.field private final mLayoutRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/widget/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxOverScrollDistance:I

.field private mMaximumVelocity:I

.field private mMinColWidth:I

.field private mMotionPosition:I

.field mMotionX:I

.field mMotionY:I

.field private mMoveBy:I

.field mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

.field private mNumCols:I

.field private mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

.field mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

.field private mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

.field private mPopulating:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

.field private final mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

.field private mRestoreOffsets:[I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

.field private mSpecificTop:I

.field private mSync:Z

.field private mSyncPosition:I

.field private mTopShadowLight:Landroid/graphics/drawable/Drawable;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderY:F

.field private mTouchSlop:I

.field private mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpdateing:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/meizu/widget/StaggeredGridView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/meizu/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 470
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->setVerticalScrollBarEnabled(Z)V

    .line 471
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 472
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 473
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 477
    const v0, 0xa100013

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 481
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 184
    iput-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    .line 189
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    .line 192
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    .line 194
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    .line 196
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    .line 198
    iput v8, p0, Lcom/meizu/widget/StaggeredGridView;->mColCountSetting:I

    .line 199
    iput v8, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 201
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I

    .line 202
    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 203
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I

    .line 204
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I

    .line 209
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    .line 220
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionLeftPadding:I

    .line 225
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionTopPadding:I

    .line 230
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionRightPadding:I

    .line 235
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionBottomPadding:I

    .line 239
    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 240
    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    .line 253
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    .line 258
    const v4, 0xa020212

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackground:I

    .line 260
    const v4, 0xa020211

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundFilter:I

    .line 262
    const v4, 0xa020210

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundDelete:I

    .line 270
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 284
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 285
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-direct {v4, p0, v5}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    .line 301
    iput-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 311
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 340
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    .line 368
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    .line 369
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    .line 372
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 379
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    .line 398
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    .line 3942
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$8;

    invoke-direct {v4, p0}, Lcom/meizu/widget/StaggeredGridView$8;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDelayUpdate:Ljava/lang/Runnable;

    .line 482
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    .line 483
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/flyme/internal/R$styleable;->StaggeredGridView:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 484
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 485
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 486
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    .line 488
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 489
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {p0, v2}, Lcom/meizu/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 493
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 495
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    .line 496
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 497
    .local v3, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchSlop:I

    .line 498
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMaximumVelocity:I

    .line 499
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingVelocity:I

    .line 500
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-direct {v4, p0, p1}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    .line 501
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xa0e0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    .line 506
    invoke-virtual {p0, v6}, Lcom/meizu/widget/StaggeredGridView;->setWillNotDraw(Z)V

    .line 507
    invoke-virtual {p0, v6}, Lcom/meizu/widget/StaggeredGridView;->setClipToPadding(Z)V

    .line 508
    invoke-virtual {p0, v6}, Lcom/meizu/widget/StaggeredGridView;->setFocusableInTouchMode(Z)V

    .line 510
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 511
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->useDefaultSelector()V

    .line 515
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->isThemeLight()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 516
    iput-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    .line 517
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xa02036b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    .line 521
    :cond_2
    const v4, 0xa04003e

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .line 522
    .local v1, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 523
    iput-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    .line 524
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$1;

    invoke-direct {v4, p0}, Lcom/meizu/widget/StaggeredGridView$1;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    invoke-virtual {p0, v4}, Lcom/meizu/widget/StaggeredGridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 539
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/ActionMode$OnActionItemDragListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/meizu/widget/StaggeredGridView;Landroid/view/ActionMode$OnActionItemDragListener;)Landroid/view/ActionMode$OnActionItemDragListener;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Landroid/view/ActionMode$OnActionItemDragListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/meizu/widget/StaggeredGridView;Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Landroid/view/DragEvent;
    .param p2, "x2"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/StaggeredGridView;->doActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->clearChoices()V

    return-void
.end method

.method static synthetic access$2500(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method static synthetic access$2902(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3100(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    return p1
.end method

.method static synthetic access$3502(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSpecificTop:I

    return p1
.end method

.method static synthetic access$3600(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    return v0
.end method

.method static synthetic access$3700(Lcom/meizu/widget/StaggeredGridView;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->recycleAllViews()V

    return-void
.end method

.method static synthetic access$3900(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/meizu/widget/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/meizu/widget/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/meizu/widget/StaggeredGridView;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstAdapterId:J

    return-wide v0
.end method

.method static synthetic access$4300(Lcom/meizu/widget/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object v0
.end method

.method static synthetic access$4302(Lcom/meizu/widget/StaggeredGridView;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # [I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object p1
.end method

.method static synthetic access$4600(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$4900(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->updateDrag()V

    return-void
.end method

.method static synthetic access$5300(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackground:I

    return v0
.end method

.method static synthetic access$5400(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundFilter:I

    return v0
.end method

.method static synthetic access$5500(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundDelete:I

    return v0
.end method

.method static synthetic access$5600(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I

    return v0
.end method

.method static synthetic access$5602(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$5700(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I

    return v0
.end method

.method static synthetic access$5800(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I

    return v0
.end method

.method static synthetic access$5900(Lcom/meizu/widget/StaggeredGridView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    return v0
.end method

.method static synthetic access$6002(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    return p1
.end method

.method static synthetic access$602(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/meizu/widget/StaggeredGridView;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$6102(Lcom/meizu/widget/StaggeredGridView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$6200(Lcom/meizu/widget/StaggeredGridView;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    return v0
.end method

.method static synthetic access$6400(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$RecycleBin;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/StaggeredGridView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    return-object v0
.end method

.method private clearAllState()V
    .locals 1

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2476
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->removeAllViews()V

    .line 2479
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->resetStateForGridTop()V

    .line 2482
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->clear()V

    .line 2484
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2485
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 2486
    return-void
.end method

.method private clearChoices()V
    .locals 1

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2696
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 2697
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2699
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 2700
    return-void
.end method

.method private correctTooHigh()V
    .locals 10

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 1396
    .local v0, "childCount":I
    const v4, 0x7fffffff

    .line 1397
    .local v4, "mostTop":I
    const/high16 v3, -0x80000000

    .line 1398
    .local v3, "mostBottom":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ge v2, v8, :cond_2

    .line 1399
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v8, v8, v2

    if-ge v8, v4, :cond_0

    .line 1400
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v4, v8, v2

    .line 1402
    :cond_0
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v8, v8, v2

    if-le v8, v3, :cond_1

    .line 1403
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v3, v8, v2

    .line 1398
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1406
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v7

    .line 1407
    .local v7, "paddingTop":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v6

    .line 1408
    .local v6, "paddingBottom":I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 1409
    .local v1, "firstPosition":I
    const/4 v5, 0x0

    .line 1411
    .local v5, "overScrollDistance":I
    add-int v8, v1, v0

    iget v9, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ne v8, v9, :cond_5

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v3, v8, :cond_5

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-le v8, v0, :cond_5

    .line 1413
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v5, v8, v3

    .line 1422
    :cond_3
    :goto_1
    neg-int v5, v5

    .line 1424
    if-eqz v5, :cond_4

    iget-boolean v8, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v8, :cond_4

    .line 1425
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {v8, v5}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->startSpringback(I)Z

    .line 1427
    :cond_4
    return-void

    .line 1414
    :cond_5
    add-int v8, v1, v0

    iget v9, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ne v8, v9, :cond_3

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v3, v8, :cond_3

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ne v8, v0, :cond_3

    .line 1416
    sub-int v8, v3, v4

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v6

    sub-int/2addr v9, v7

    if-ge v8, v9, :cond_6

    .line 1417
    sub-int v5, v7, v4

    goto :goto_1

    .line 1419
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v5, v8, v3

    goto :goto_1
.end method

.method private displayMapping()V
    .locals 8

    .prologue
    .line 2115
    const-string v6, "DISPLAY"

    const-string v7, "MAP ****************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2117
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2119
    .local v0, "col":I
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2120
    .local v4, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2122
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2123
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2124
    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2126
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_0
    const-string v6, "DISPLAY"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2128
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    .line 2129
    goto :goto_0

    .line 2130
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const-string v6, "DISPLAY"

    const-string v7, "MAP END ****************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    return-void
.end method

.method private doActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    .line 2892
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    if-nez v2, :cond_1

    .line 2928
    :cond_0
    :goto_0
    return-void

    .line 2895
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2913
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    invoke-interface {v2, p2}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v1

    .line 2914
    .local v1, "state":I
    if-ne v1, v6, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 2915
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, v6}, Landroid/view/ActionMode;->setDragDismissAnimating(Z)V

    .line 2917
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDrop(Landroid/view/MenuItem;IJ)V

    .line 2918
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2919
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2922
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->getDragingState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2923
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2897
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "state":I
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/meizu/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2898
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    invoke-interface {v2, p2}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v1

    .line 2899
    .restart local v1    # "state":I
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2, v1}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->setDragingState(I)V

    .line 2900
    if-ne v1, v6, :cond_4

    .line 2901
    invoke-virtual {p0, v6}, Lcom/meizu/widget/StaggeredGridView;->notifyDragDropAnimType(I)V

    .line 2905
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->updateDrag()V

    goto :goto_0

    .line 2902
    :cond_4
    if-nez v1, :cond_3

    .line 2903
    invoke-virtual {p0, v3}, Lcom/meizu/widget/StaggeredGridView;->notifyDragDropAnimType(I)V

    goto :goto_1

    .line 2908
    .end local v1    # "state":I
    :pswitch_3
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2, v3}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->setDragingState(I)V

    .line 2909
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/widget/StaggeredGridView;->notifyDragDropAnimType(I)V

    .line 2910
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDelayUpdate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x14

    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2895
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1207
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1208
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1210
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getFadeOutAnimationsForStaleViews()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1541
    .local v5, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v3, "locaList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1544
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1545
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1547
    .local v4, "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    iget-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v7, :cond_0

    .line 1548
    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7, v4}, Lcom/meizu/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1553
    :goto_1
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    const v8, 0xa04003c

    invoke-static {v7, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 1554
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3f8ccccd    # 1.1f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1555
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1556
    new-instance v7, Lcom/meizu/widget/StaggeredGridView$5;

    invoke-direct {v7, p0, v6}, Lcom/meizu/widget/StaggeredGridView$5;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1573
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1575
    .local v0, "alphAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1576
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1577
    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1578
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1550
    .end local v0    # "alphAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/meizu/widget/StaggeredGridView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1581
    .end local v4    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    return-object v3

    .line 1574
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getFirstChildAtColumn(I)Landroid/view/View;
    .locals 6
    .param p1, "column"    # I

    .prologue
    .line 1947
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 1948
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ge v2, v4, :cond_2

    .line 1949
    invoke-virtual {p0, v2}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1950
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1953
    .local v3, "left":I
    if-eqz v0, :cond_1

    .line 1955
    const/4 v1, 0x0

    .line 1958
    .local v1, "col":I
    :goto_1
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 1959
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1962
    :cond_0
    if-ne v1, p1, :cond_1

    .line 1970
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "col":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    :goto_2
    return-object v0

    .line 1948
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "left":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1970
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 3640
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    return v0
.end method

.method private getUpdateDataAnimation()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v10

    .line 1485
    .local v10, "size":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    .local v6, "locaList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-lez v10, :cond_2

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v2

    .line 1489
    .local v2, "childCount":I
    if-lez v2, :cond_2

    .line 1490
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1491
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1492
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v16, v0

    add-int v9, v16, v3

    .line 1493
    .local v9, "position":I
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1494
    .local v8, "params":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    iget-wide v4, v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 1495
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;

    .line 1497
    .local v15, "viewRectPair":Lcom/meizu/widget/StaggeredGridView$ViewRectPair;
    iget-object v7, v15, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    .line 1499
    .local v7, "localRect":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1500
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1502
    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 1503
    .local v12, "translationXHolder":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 1504
    .local v13, "translationYHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1505
    .local v11, "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1506
    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1508
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .end local v7    # "localRect":Landroid/graphics/Rect;
    .end local v15    # "viewRectPair":Lcom/meizu/widget/StaggeredGridView$ViewRectPair;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1512
    .end local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    div-int/lit8 v16, v2, 0x2

    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    .line 1513
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1514
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1520
    :goto_2
    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 1521
    .restart local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 1522
    .restart local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1523
    .restart local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1524
    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1526
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1516
    .end local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v16

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    .line 1531
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v8    # "params":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v9    # "position":I
    .end local v14    # "view":Landroid/view/View;
    :cond_2
    return-object v6
.end method

.method private populate(Z)V
    .locals 7
    .param p1, "clearData"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1277
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-nez v3, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    if-nez v3, :cond_0

    .line 1286
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ne v3, v6, :cond_2

    .line 1287
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v3, v4

    .line 1288
    .local v0, "colCount":I
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v3, :cond_2

    .line 1289
    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1293
    .end local v0    # "colCount":I
    :cond_2
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1296
    .restart local v0    # "colCount":I
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq v3, v4, :cond_3

    .line 1297
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ge v1, v3, :cond_3

    .line 1299
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1303
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    array-length v3, v3

    if-eq v3, v0, :cond_5

    .line 1304
    :cond_4
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 1305
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    .line 1307
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v2

    .line 1308
    .local v2, "top":I
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1309
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1311
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1312
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v3, :cond_a

    .line 1313
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->removeAllViewsInLayout()V

    .line 1319
    .end local v2    # "top":I
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    array-length v3, v3

    if-ne v3, v0, :cond_6

    .line 1320
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 1323
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 1325
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v3}, Lcom/meizu/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 1326
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3, v5}, Lcom/meizu/widget/StaggeredGridView;->fillDown(II)I

    .line 1327
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v5}, Lcom/meizu/widget/StaggeredGridView;->fillUp(II)I

    .line 1329
    iput-boolean v5, p0, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 1330
    iput-boolean v5, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 1334
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    if-eqz v3, :cond_8

    .line 1335
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSpecificTop:I

    invoke-virtual {p0, v3, v4}, Lcom/meizu/widget/StaggeredGridView;->setPositionAndTop(II)V

    .line 1337
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v3, :cond_7

    .line 1338
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1339
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->getUpdateDataAnimation()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1341
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/meizu/widget/StaggeredGridView$3;

    invoke-direct {v4, p0}, Lcom/meizu/widget/StaggeredGridView$3;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1355
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1356
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->getFadeOutAnimationsForStaleViews()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1357
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/meizu/widget/StaggeredGridView$4;

    invoke-direct {v4, p0}, Lcom/meizu/widget/StaggeredGridView$4;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1371
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1372
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1376
    :cond_7
    iput-boolean v5, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    .line 1377
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    .line 1380
    :cond_8
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_9

    .line 1381
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->correctTooHigh()V

    .line 1383
    :cond_9
    if-eqz p1, :cond_0

    .line 1384
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v3, :cond_0

    .line 1386
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    goto/16 :goto_0

    .line 1315
    .restart local v2    # "top":I
    :cond_a
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->removeAllViews()V

    goto/16 :goto_2
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3681
    return-void
.end method

.method private recycleAllViews()V
    .locals 4

    .prologue
    .line 1044
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1046
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1047
    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1048
    .local v2, "view":Landroid/view/View;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1053
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v3, v2}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    goto :goto_1

    .line 1060
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v3, :cond_2

    .line 1061
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->removeAllViewsInLayout()V

    .line 1065
    :goto_2
    return-void

    .line 1063
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->removeAllViews()V

    goto :goto_2
.end method

.method private recycleOffscreenViews()V
    .locals 21

    .prologue
    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v13

    .line 1074
    .local v13, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v7, v0

    .line 1075
    .local v7, "clearAbove":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    add-int v8, v13, v18

    .line 1076
    .local v8, "clearBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_0

    .line 1077
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1078
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    if-gt v0, v8, :cond_5

    .line 1093
    .end local v5    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_1

    .line 1094
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1095
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    if-lt v0, v7, :cond_7

    .line 1111
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .line 1112
    .local v6, "childCount":I
    if-lez v6, :cond_c

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    const v19, 0x7fffffff

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 1117
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_a

    .line 1118
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1119
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1120
    .local v15, "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 1121
    .local v17, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1122
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 1124
    .local v16, "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v16, :cond_2

    .line 1125
    new-instance v16, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v16    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 1126
    .restart local v16    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1127
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1128
    iget v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1129
    iget-wide v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    iget v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1133
    :cond_2
    iget v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v19, v0

    iget v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int v11, v18, v19

    .line 1134
    .local v11, "colEnd":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1135
    iget v9, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .local v9, "col":I
    :goto_3
    if-ge v9, v11, :cond_9

    .line 1136
    iget v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v18

    sub-int v12, v17, v18

    .line 1137
    .local v12, "colTop":I
    iget v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v18

    add-int v10, v4, v18

    .line 1138
    .local v10, "colBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aput v12, v18, v9

    .line 1141
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    if-le v10, v0, :cond_4

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aput v10, v18, v9

    .line 1135
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1084
    .end local v4    # "bottom":I
    .end local v6    # "childCount":I
    .end local v9    # "col":I
    .end local v10    # "colBottom":I
    .end local v11    # "colEnd":I
    .end local v12    # "colTop":I
    .end local v15    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v16    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v17    # "top":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1085
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/meizu/widget/StaggeredGridView;->removeViewsInLayout(II)V

    .line 1090
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1076
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 1087
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/widget/StaggeredGridView;->removeViewAt(I)V

    goto :goto_4

    .line 1101
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1102
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->removeViewsInLayout(II)V

    .line 1107
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    goto/16 :goto_1

    .line 1104
    :cond_8
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->removeViewAt(I)V

    goto :goto_5

    .line 1117
    .restart local v4    # "bottom":I
    .restart local v6    # "childCount":I
    .restart local v9    # "col":I
    .restart local v11    # "colEnd":I
    .restart local v15    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .restart local v16    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .restart local v17    # "top":I
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1147
    .end local v4    # "bottom":I
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "col":I
    .end local v11    # "colEnd":I
    .end local v15    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v16    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v17    # "top":I
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "col":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_d

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, v9

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, v9

    .line 1147
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1155
    .end local v9    # "col":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v17

    .line 1156
    .restart local v17    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1161
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 1163
    .end local v17    # "top":I
    :cond_d
    return-void
.end method

.method private resetStateForGridTop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2493
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2494
    .local v0, "colCount":I
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 2495
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 2496
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    .line 2498
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v1

    .line 2499
    .local v1, "top":I
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2500
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2503
    iput v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 2504
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_2

    .line 2506
    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 2507
    :cond_2
    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2508
    iput v3, p0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 2509
    return-void
.end method

.method private trackMotionScroll(IZ)Z
    .locals 24
    .param p1, "deltaY"    # I
    .param p2, "allowOverScroll"    # Z

    .prologue
    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .line 913
    .local v6, "childCount":I
    if-nez v6, :cond_0

    .line 914
    const/4 v14, 0x1

    .line 1040
    :goto_0
    return v14

    .line 917
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v23

    sub-int v12, v22, v23

    .line 918
    .local v12, "height":I
    if-gez p1, :cond_3

    .line 919
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 923
    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 924
    .local v3, "allowOverhang":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 926
    .local v11, "firstPosition":I
    const v16, 0x7fffffff

    .line 927
    .local v16, "mostTop":I
    const/high16 v15, -0x80000000

    .line 928
    .local v15, "mostBottom":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v22, v0

    aget v16, v22, v13

    .line 932
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    move/from16 v0, v22

    if-le v0, v15, :cond_2

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v22, v0

    aget v15, v22, v13

    .line 928
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 921
    .end local v3    # "allowOverhang":I
    .end local v11    # "firstPosition":I
    .end local v13    # "i":I
    .end local v15    # "mostBottom":I
    .end local v16    # "mostTop":I
    :cond_3
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 937
    .restart local v3    # "allowOverhang":I
    .restart local v11    # "firstPosition":I
    .restart local v13    # "i":I
    .restart local v15    # "mostBottom":I
    .restart local v16    # "mostTop":I
    :cond_4
    const/4 v14, 0x0

    .line 938
    .local v14, "isAtEdge":Z
    const/4 v10, 0x0

    .line 939
    .local v10, "dontRecycle":Z
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v20

    .line 940
    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v19

    .line 941
    .local v19, "paddingBottom":I
    if-nez v11, :cond_c

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_c

    if-ltz p1, :cond_c

    const/4 v4, 0x1

    .line 942
    .local v4, "cannotScrollDown":Z
    :goto_3
    add-int v22, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v22

    sub-int v22, v22, v19

    move/from16 v0, v22

    if-gt v15, v0, :cond_d

    if-gtz p1, :cond_d

    const/4 v5, 0x1

    .line 944
    .local v5, "cannotScrollUp":Z
    :goto_4
    sub-int v8, v20, v16

    .line 945
    .local v8, "delta":I
    if-nez v11, :cond_5

    if-ltz p1, :cond_5

    if-lez v8, :cond_5

    if-ge v8, v3, :cond_5

    .line 946
    const/4 v10, 0x1

    .line 948
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v22

    sub-int v22, v22, v19

    sub-int v8, v15, v22

    .line 949
    add-int v22, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    if-gtz p1, :cond_6

    if-lez v8, :cond_6

    if-ge v8, v3, :cond_6

    .line 950
    const/4 v10, 0x1

    .line 953
    :cond_6
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 954
    :cond_7
    const/4 v10, 0x1

    .line 959
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 961
    if-lez p1, :cond_e

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/meizu/widget/StaggeredGridView;->fillUp(II)I

    move-result v18

    .line 963
    .local v18, "overhang":I
    const/16 v21, 0x1

    .line 968
    .local v21, "up":Z
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/widget/StaggeredGridView;->offsetChildren(I)V

    .line 980
    if-nez v10, :cond_9

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->recycleOffscreenViews()V

    .line 983
    :cond_9
    move/from16 v17, p1

    .line 985
    .local v17, "movedBy":I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .line 987
    const v16, 0x7fffffff

    .line 988
    const/high16 v15, -0x80000000

    .line 989
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_f

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v22, v0

    aget v16, v22, v13

    .line 993
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v22, v0

    aget v22, v22, v13

    move/from16 v0, v22

    if-le v0, v15, :cond_b

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v22, v0

    aget v15, v22, v13

    .line 989
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 941
    .end local v4    # "cannotScrollDown":Z
    .end local v5    # "cannotScrollUp":Z
    .end local v8    # "delta":I
    .end local v17    # "movedBy":I
    .end local v18    # "overhang":I
    .end local v21    # "up":Z
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 942
    .restart local v4    # "cannotScrollDown":Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 965
    .restart local v5    # "cannotScrollUp":Z
    .restart local v8    # "delta":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/meizu/widget/StaggeredGridView;->fillDown(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v23, v0

    add-int v18, v22, v23

    .line 966
    .restart local v18    # "overhang":I
    const/16 v21, 0x0

    .restart local v21    # "up":Z
    goto :goto_5

    .line 998
    .restart local v17    # "movedBy":I
    :cond_f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v22, v0

    if-nez v22, :cond_14

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    .line 1000
    sub-int v22, v20, v16

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1001
    const/4 v14, 0x1

    .line 1016
    :cond_10
    :goto_7
    const/4 v9, 0x0

    .line 1017
    .local v9, "dontAwakenScrollBars":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->offsetChildren(I)V

    .line 1019
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1020
    const/4 v9, 0x1

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->jumpDrawablesToCurrentState()V

    .line 1022
    const/4 v14, 0x1

    .line 1024
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1026
    if-nez v9, :cond_12

    .line 1027
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->awakenScrollBars(IZ)Z

    .line 1029
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    .line 1030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v7, v22, v23

    .line 1031
    .local v7, "childIndex":I
    if-ltz v7, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_13

    .line 1032
    const/16 v22, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1038
    .end local v7    # "childIndex":I
    :cond_13
    :goto_8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mMoveBy:I

    goto/16 :goto_0

    .line 1002
    .end local v9    # "dontAwakenScrollBars":Z
    :cond_14
    add-int v22, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v22

    sub-int v22, v22, v19

    move/from16 v0, v22

    if-ge v15, v0, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v6, :cond_15

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v22

    sub-int v22, v22, v19

    sub-int v22, v22, v15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1005
    const/4 v14, 0x1

    goto/16 :goto_7

    .line 1006
    :cond_15
    add-int v22, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v22

    sub-int v22, v22, v19

    move/from16 v0, v22

    if-ge v15, v0, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v6, :cond_10

    .line 1008
    sub-int v22, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v23

    sub-int v23, v23, v19

    sub-int v23, v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_16

    .line 1009
    sub-int v22, v20, v16

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1010
    const/4 v14, 0x1

    goto/16 :goto_7

    .line 1012
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v22

    sub-int v22, v22, v19

    sub-int v22, v22, v15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1013
    const/4 v14, 0x1

    goto/16 :goto_7

    .line 1035
    .restart local v9    # "dontAwakenScrollBars":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_8
.end method

.method private updateDrag()V
    .locals 4

    .prologue
    .line 3925
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 3940
    :cond_0
    :goto_0
    return-void

    .line 3929
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3931
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3932
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2, v0}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3934
    :try_start_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3936
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 3937
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "View"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3938
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V

    goto :goto_0

    .line 3934
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 2636
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 2637
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 2638
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 2640
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2641
    invoke-virtual {p0, v3}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2642
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 2644
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 2645
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2640
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2638
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2646
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 2647
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 2650
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 3586
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3587
    return-void
.end method


# virtual methods
.method public beginFastChildLayout()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFastChildLayout:Z

    .line 1215
    return-void
.end method

.method public changeChildAlphaWhenDragView(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 4001
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    .line 4002
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3017
    instance-of v0, p1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 4701
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 4702
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 4703
    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int/2addr v8, v9

    mul-int/lit8 v2, v8, 0x64

    .line 4706
    .local v2, "extent":I
    invoke-virtual {p0, v7}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4707
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4708
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 4709
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 4710
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 4712
    :cond_0
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4713
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 4714
    .local v0, "bottom":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4716
    .local v4, "height2":I
    if-lez v4, :cond_1

    .line 4717
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v7

    sub-int v7, v0, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v4

    sub-int/2addr v2, v7

    .line 4721
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "height2":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v7

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 4726
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 4727
    .local v1, "fristPosition":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 4728
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v3

    .line 4730
    .local v3, "paddingTop":I
    if-ltz v1, :cond_0

    if-lez v0, :cond_0

    .line 4731
    invoke-virtual {p0, v12}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4732
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 4733
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4735
    .local v2, "height":I
    if-lez v2, :cond_0

    .line 4736
    mul-int/lit8 v9, v1, 0x64

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int/2addr v9, v10

    mul-int/lit8 v10, v6, 0x64

    div-int/2addr v10, v2

    sub-int v8, v9, v10

    .line 4737
    .local v8, "whichRow":I
    iget v9, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int v5, v9, v10

    .line 4738
    .local v5, "rowCount":I
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v11

    div-int/2addr v10, v11

    mul-int/2addr v10, v5

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v8

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4745
    .end local v2    # "height":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "whichRow":I
    :goto_0
    return v4

    :cond_0
    move v4, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 4750
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int v1, v2, v3

    .line 4751
    .local v1, "rowCount":I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4752
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4753
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    mul-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 4754
    :cond_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 3389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3391
    const/4 v2, 0x0

    .line 3393
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_6

    .line 3394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 3395
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3396
    .local v5, "lastPos":I
    const-wide/16 v12, -0x1

    .line 3397
    .local v12, "lastPosId":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ge v5, v3, :cond_0

    .line 3398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 3400
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ge v5, v3, :cond_1

    cmp-long v3, v6, v12

    if-eqz v3, :cond_5

    .line 3402
    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 3403
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 3404
    .local v10, "end":I
    const/4 v11, 0x0

    .line 3405
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_2

    .line 3406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 3407
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_4

    .line 3408
    const/4 v11, 0x1

    .line 3409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 3415
    .end local v14    # "searchId":J
    :cond_2
    if-nez v11, :cond_3

    .line 3416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3417
    add-int/lit8 v9, v9, -0x1

    .line 3418
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3419
    const/4 v2, 0x1

    .line 3420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_3

    .line 3421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 3393
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 3405
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3426
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 3430
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_7

    .line 3431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 3433
    :cond_7
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 4137
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deleteItemId(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3292
    .local p1, "id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3293
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    .line 3295
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1168
    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 1169
    .local v2, "drawSelectorOnTop":Z
    if-nez v2, :cond_0

    .line 1170
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1173
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1175
    if-eqz v2, :cond_1

    .line 1176
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1179
    :cond_1
    iget-boolean v8, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    if-eqz v8, :cond_2

    .line 1180
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 1181
    .local v1, "count":I
    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_3

    const/4 v0, 0x1

    .line 1182
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v3

    .line 1183
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v7}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1185
    .local v6, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    if-ge v8, v3, :cond_2

    .line 1186
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1188
    .local v4, "restoreCount":I
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v5

    .line 1189
    .local v5, "top":I
    :goto_2
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v8, v7, v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1190
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1191
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1196
    .end local v0    # "clipToPadding":Z
    .end local v1    # "count":I
    .end local v3    # "listTop":I
    .end local v4    # "restoreCount":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void

    .restart local v1    # "count":I
    :cond_3
    move v0, v7

    .line 1181
    goto :goto_0

    .line 1182
    .restart local v0    # "clipToPadding":Z
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getScrollY()I

    move-result v8

    add-int/lit8 v3, v8, 0x0

    goto :goto_1

    .restart local v3    # "listTop":I
    .restart local v4    # "restoreCount":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_5
    move v5, v7

    .line 1188
    goto :goto_2
.end method

.method public dispatchStatusBarTap()Z
    .locals 1

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 4239
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 4240
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    .line 4241
    return-void
.end method

.method public enableAnimation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1259
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    .line 1260
    return-void
.end method

.method public endFastChildLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1218
    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFastChildLayout:Z

    .line 1219
    invoke-direct {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 1220
    return-void
.end method

.method final fillDown(II)I
    .locals 36
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1982
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v26

    .line 1983
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingRight()I

    move-result v27

    .line 1984
    .local v27, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v20, v0

    .line 1985
    .local v20, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getWidth()I

    move-result v34

    sub-int v34, v34, v26

    sub-int v34, v34, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x1

    mul-int v35, v35, v20

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    div-int v11, v34, v35

    .line 1986
    .local v11, "colWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v35

    sub-int v13, v34, v35

    .line 1987
    .local v13, "gridBottom":I
    add-int v12, v13, p2

    .line 1988
    .local v12, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v25

    .line 1989
    .local v25, "nextCol":I
    move/from16 v28, p1

    .line 1991
    .local v28, "position":I
    :cond_0
    :goto_0
    if-ltz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v25

    move/from16 v0, v34

    if-ge v0, v12, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v28

    move/from16 v1, v34

    if-ge v0, v1, :cond_12

    .line 1993
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 1995
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1997
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1998
    .local v24, "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    if-nez v24, :cond_1

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v24

    .line 2000
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2002
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 2003
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    .line 2004
    const/16 v34, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2010
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 2011
    .local v30, "span":I
    mul-int v34, v11, v30

    add-int/lit8 v35, v30, -0x1

    mul-int v35, v35, v20

    add-int v32, v34, v35

    .line 2012
    .local v32, "widthSize":I
    const/high16 v34, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 2015
    .local v33, "widthSpec":I
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_9

    .line 2016
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->getNextRecordDown(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    move-result-object v29

    .line 2017
    .local v29, "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v25, v0

    .line 2022
    :goto_2
    const/16 v17, 0x0

    .line 2023
    .local v17, "invalidateAfter":Z
    if-nez v29, :cond_a

    .line 2024
    new-instance v29, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 2025
    .restart local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2026
    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2027
    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2036
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .line 2038
    .local v18, "id":J
    move-wide/from16 v0, v18

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 2039
    move-wide/from16 v0, v18

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2042
    .end local v18    # "id":J
    :cond_4
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 2045
    move-object/from16 v0, v24

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 2046
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 2050
    .local v14, "heightSpec":I
    :goto_4
    move/from16 v0, v33

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 2052
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 2053
    .local v7, "childHeight":I
    if-nez v17, :cond_5

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v7, v0, :cond_6

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    if-lez v34, :cond_6

    .line 2054
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 2056
    :cond_6
    move-object/from16 v0, v29

    iput v7, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 2059
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_e

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v22, v34, v25

    .line 2061
    .local v22, "lowest":I
    add-int/lit8 v15, v25, 0x1

    .local v15, "i":I
    :goto_5
    add-int v34, v25, v30

    move/from16 v0, v34

    if-ge v15, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_c

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v4, v34, v15

    .line 2063
    .local v4, "bottom":I
    move/from16 v0, v22

    if-le v4, v0, :cond_7

    .line 2064
    move/from16 v22, v4

    .line 2061
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2006
    .end local v4    # "bottom":I
    .end local v7    # "childHeight":I
    .end local v14    # "heightSpec":I
    .end local v15    # "i":I
    .end local v17    # "invalidateAfter":Z
    .end local v22    # "lowest":I
    .end local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v30    # "span":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/widget/StaggeredGridView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2019
    .restart local v30    # "span":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .restart local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_2

    .line 2028
    .restart local v17    # "invalidateAfter":Z
    :cond_a
    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    .line 2029
    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2030
    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2031
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 2048
    :cond_b
    move-object/from16 v0, v24

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightSpec":I
    goto/16 :goto_4

    .line 2067
    .restart local v7    # "childHeight":I
    .restart local v15    # "i":I
    .restart local v22    # "lowest":I
    :cond_c
    move/from16 v31, v22

    .line 2072
    .end local v15    # "i":I
    .end local v22    # "lowest":I
    .local v31, "startFrom":I
    :goto_6
    add-int v10, v31, v20

    .line 2073
    .local v10, "childTop":I
    add-int v6, v10, v7

    .line 2074
    .local v6, "childBottom":I
    add-int v34, v11, v20

    mul-int v34, v34, v25

    add-int v8, v26, v34

    .line 2075
    .local v8, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v9, v8, v34

    .line 2076
    .local v9, "childRight":I
    invoke-virtual {v5, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 2086
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 2087
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2069
    .end local v6    # "childBottom":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31    # "startFrom":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v31, v34, v25

    .restart local v31    # "startFrom":I
    goto :goto_6

    .line 2091
    .restart local v6    # "childBottom":I
    .restart local v8    # "childLeft":I
    .restart local v9    # "childRight":I
    .restart local v10    # "childTop":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2094
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_10
    move/from16 v15, v25

    .restart local v15    # "i":I
    :goto_8
    add-int v34, v25, v30

    move/from16 v0, v34

    if-ge v15, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_11

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    sub-int v35, v15, v25

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v35

    add-int v35, v35, v6

    aput v35, v34, v15

    .line 2094
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 2098
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v25

    .line 2099
    add-int/lit8 v28, v28, 0x1

    .line 2100
    goto/16 :goto_0

    .line 2102
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v14    # "heightSpec":I
    .end local v15    # "i":I
    .end local v17    # "invalidateAfter":Z
    .end local v24    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v30    # "span":I
    .end local v31    # "startFrom":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_12
    const/16 v23, 0x0

    .line 2103
    .local v23, "lowestView":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_14

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v15

    move/from16 v0, v34

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v23, v34, v15

    .line 2103
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 2108
    :cond_14
    sub-int v34, v23, v13

    return v34
.end method

.method final fillUp(II)I
    .locals 38
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v25

    .line 1776
    .local v25, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingRight()I

    move-result v26

    .line 1777
    .local v26, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v21, v0

    .line 1778
    .local v21, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getWidth()I

    move-result v36

    sub-int v36, v36, v25

    sub-int v36, v36, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, -0x1

    mul-int v37, v37, v21

    sub-int v36, v36, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v37, v0

    div-int v11, v36, v37

    .line 1780
    .local v11, "colWidth":I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v13

    .line 1782
    .local v13, "gridTop":I
    sub-int v12, v13, p2

    .line 1783
    .local v12, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v24

    .line 1784
    .local v24, "nextCol":I
    move/from16 v27, p1

    .local v27, "position":I
    move/from16 v28, v27

    .line 1786
    .end local v27    # "position":I
    .local v28, "position":I
    :cond_0
    :goto_0
    if-ltz v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v36, v36, v24

    move/from16 v0, v36

    if-le v0, v12, :cond_14

    if-ltz v28, :cond_14

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1

    .line 1790
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 1792
    move/from16 v24, v17

    .line 1800
    .end local v17    # "i":I
    :cond_1
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 1802
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1804
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1806
    .local v23, "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    if-nez v23, :cond_2

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v23

    .line 1808
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1811
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    .line 1812
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v36, v0

    if-eqz v36, :cond_a

    .line 1813
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1819
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 1820
    .local v31, "span":I
    mul-int v36, v11, v31

    add-int/lit8 v37, v31, -0x1

    mul-int v37, v37, v21

    add-int v34, v36, v37

    .line 1821
    .local v34, "widthSize":I
    const/high16 v36, 0x40000000    # 2.0f

    move/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 1824
    .local v35, "widthSpec":I
    const/16 v36, 0x1

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_b

    .line 1825
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->getNextRecordUp(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    move-result-object v29

    .line 1832
    .local v29, "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    :goto_3
    const/16 v20, 0x0

    .line 1833
    .local v20, "invalidateBefore":Z
    if-nez v29, :cond_c

    .line 1834
    new-instance v29, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 1835
    .restart local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1836
    move/from16 v0, v24

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1837
    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1857
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .line 1859
    .local v18, "id":J
    move-wide/from16 v0, v18

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1860
    move-wide/from16 v0, v18

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 1863
    .end local v18    # "id":J
    :cond_5
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1866
    move-object/from16 v0, v23

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 1867
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1871
    .local v14, "heightSpec":I
    :goto_5
    move/from16 v0, v35

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 1873
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1874
    .local v7, "childHeight":I
    if-nez v20, :cond_6

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-eq v7, v0, :cond_7

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v36, v0

    if-lez v36, :cond_7

    .line 1875
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1877
    :cond_7
    move-object/from16 v0, v29

    iput v7, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v22, v36, v24

    .line 1882
    .local v22, "itemTop":I
    const/16 v36, 0x1

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_12

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v15, v36, v24

    .line 1884
    .local v15, "highest":I
    add-int/lit8 v17, v24, 0x1

    .restart local v17    # "i":I
    :goto_6
    add-int v36, v24, v31

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_11

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v33, v36, v17

    .line 1886
    .local v33, "top":I
    move/from16 v0, v33

    if-ge v0, v15, :cond_8

    .line 1887
    move/from16 v15, v33

    .line 1884
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1790
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v14    # "heightSpec":I
    .end local v15    # "highest":I
    .end local v20    # "invalidateBefore":Z
    .end local v22    # "itemTop":I
    .end local v23    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v31    # "span":I
    .end local v33    # "top":I
    .end local v34    # "widthSize":I
    .end local v35    # "widthSpec":I
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1815
    .end local v17    # "i":I
    .restart local v5    # "child":Landroid/view/View;
    .restart local v23    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :cond_a
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Lcom/meizu/widget/StaggeredGridView;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1829
    .restart local v31    # "span":I
    .restart local v34    # "widthSize":I
    .restart local v35    # "widthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .restart local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_3

    .line 1838
    .restart local v20    # "invalidateBefore":Z
    :cond_c
    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v36, v0

    move/from16 v0, v31

    move/from16 v1, v36

    if-eq v0, v1, :cond_d

    .line 1839
    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1840
    move/from16 v0, v24

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1841
    const/16 v20, 0x1

    goto/16 :goto_4

    .line 1842
    :cond_d
    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v36, v0

    move/from16 v0, v24

    move/from16 v1, v36

    if-eq v0, v1, :cond_4

    .line 1843
    move/from16 v0, v24

    move-object/from16 v1, v29

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1845
    const v4, 0x7fffffff

    .line 1846
    .local v4, "bottomMost":I
    move/from16 v17, v24

    .restart local v17    # "i":I
    :goto_7
    add-int v36, v24, v31

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_f

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v30, v36, v17

    .line 1848
    .local v30, "singleTop":I
    move/from16 v0, v30

    if-ge v0, v4, :cond_e

    .line 1849
    move/from16 v4, v30

    .line 1846
    :cond_e
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1852
    .end local v30    # "singleTop":I
    :cond_f
    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    add-int v37, v17, v24

    aget v36, v36, v37

    sub-int v36, v36, v4

    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    .line 1852
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1869
    .end local v4    # "bottomMost":I
    .end local v17    # "i":I
    :cond_10
    move-object/from16 v0, v23

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightSpec":I
    goto/16 :goto_5

    .line 1890
    .restart local v7    # "childHeight":I
    .restart local v15    # "highest":I
    .restart local v17    # "i":I
    .restart local v22    # "itemTop":I
    :cond_11
    move/from16 v32, v15

    .line 1896
    .end local v15    # "highest":I
    .end local v17    # "i":I
    .local v32, "startFrom":I
    :goto_9
    move/from16 v6, v32

    .line 1897
    .local v6, "childBottom":I
    sub-int v10, v6, v7

    .line 1898
    .local v10, "childTop":I
    add-int v36, v11, v21

    mul-int v36, v36, v24

    add-int v8, v25, v36

    .line 1899
    .local v8, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    add-int v9, v8, v36

    .line 1908
    .local v9, "childRight":I
    invoke-virtual {v5, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1913
    move/from16 v17, v24

    .restart local v17    # "i":I
    :goto_a
    add-int v36, v24, v31

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_13

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    sub-int v37, v17, v24

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v37

    sub-int v37, v10, v37

    sub-int v37, v37, v21

    aput v37, v36, v17

    .line 1913
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1892
    .end local v6    # "childBottom":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v17    # "i":I
    .end local v32    # "startFrom":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v32, v36, v24

    .restart local v32    # "startFrom":I
    goto :goto_9

    .line 1917
    .restart local v6    # "childBottom":I
    .restart local v8    # "childLeft":I
    .restart local v9    # "childRight":I
    .restart local v10    # "childTop":I
    .restart local v17    # "i":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v24

    .line 1918
    add-int/lit8 v27, v28, -0x1

    .end local v28    # "position":I
    .restart local v27    # "position":I
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v28, v27

    .line 1919
    .end local v27    # "position":I
    .restart local v28    # "position":I
    goto/16 :goto_0

    .line 1921
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v14    # "heightSpec":I
    .end local v17    # "i":I
    .end local v20    # "invalidateBefore":Z
    .end local v22    # "itemTop":I
    .end local v23    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v29    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v31    # "span":I
    .end local v32    # "startFrom":I
    .end local v34    # "widthSize":I
    .end local v35    # "widthSpec":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v16

    .line 1923
    .local v16, "highestView":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_16

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v36, v36, v17

    move/from16 v0, v36

    move/from16 v1, v16

    if-ge v0, v1, :cond_15

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v16, v36, v17

    .line 1923
    :cond_15
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 1941
    :cond_16
    sub-int v36, v13, v16

    return v36
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .locals 2

    .prologue
    .line 3007
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3022
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3012
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 2944
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 2990
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 2991
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 3001
    :cond_1
    return-object v3

    .line 2994
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2995
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2996
    .local v0, "count":I
    new-array v3, v0, [J

    .line 2998
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2999
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2998
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2957
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2958
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2960
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 2657
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4122
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 4386
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 4396
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getItemDragListener()Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 4407
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 4408
    const/4 v0, 0x0

    .line 4410
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method final getNextColumnDown()I
    .locals 6

    .prologue
    .line 2202
    const/4 v3, -0x1

    .line 2203
    .local v3, "result":I
    const v4, 0x7fffffff

    .line 2205
    .local v4, "topMost":I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2207
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2208
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v0, v5, v2

    .line 2209
    .local v0, "bottom":I
    if-ge v0, v4, :cond_0

    .line 2210
    move v4, v0

    .line 2211
    move v3, v2

    .line 2207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2215
    .end local v0    # "bottom":I
    :cond_1
    return v3
.end method

.method final getNextColumnUp()I
    .locals 6

    .prologue
    .line 2138
    const/4 v3, -0x1

    .line 2139
    .local v3, "result":I
    const/high16 v0, -0x80000000

    .line 2141
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2142
    .local v1, "colCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2143
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v4, v5, v2

    .line 2144
    .local v4, "top":I
    if-le v4, v0, :cond_0

    .line 2145
    move v0, v4

    .line 2146
    move v3, v2

    .line 2142
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2149
    .end local v4    # "top":I
    :cond_1
    return v3
.end method

.method final getNextRecordDown(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    .line 2222
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 2223
    .local v4, "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 2224
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 2225
    .restart local v4    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2226
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2231
    :cond_0
    const/4 v6, -0x1

    .line 2232
    .local v6, "targetCol":I
    const v7, 0x7fffffff

    .line 2234
    .local v7, "topMost":I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2235
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v8, v1, p2

    if-gt v2, v8, :cond_5

    .line 2236
    const/high16 v0, -0x80000000

    .line 2237
    .local v0, "bottom":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 2238
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v5, v8, v3

    .line 2239
    .local v5, "singleBottom":I
    if-le v5, v0, :cond_1

    .line 2240
    move v0, v5

    .line 2237
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2227
    .end local v0    # "bottom":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleBottom":I
    .end local v6    # "targetCol":I
    .end local v7    # "topMost":I
    :cond_2
    iget v8, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 2228
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2243
    .restart local v0    # "bottom":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "topMost":I
    :cond_3
    if-ge v0, v7, :cond_4

    .line 2244
    move v7, v0

    .line 2245
    move v6, v2

    .line 2235
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2249
    .end local v0    # "bottom":I
    .end local v3    # "j":I
    :cond_5
    iput v6, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2251
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 2252
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int v8, v7, v8

    invoke-virtual {v4, v2, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    .line 2251
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2255
    :cond_6
    return-object v4
.end method

.method final getNextRecordUp(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    .line 2161
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 2162
    .local v4, "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 2163
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 2164
    .restart local v4    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2165
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2170
    :cond_0
    const/4 v6, -0x1

    .line 2171
    .local v6, "targetCol":I
    const/high16 v0, -0x80000000

    .line 2173
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2174
    .local v1, "colCount":I
    sub-int v2, v1, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 2175
    const v7, 0x7fffffff

    .line 2176
    .local v7, "top":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 2177
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v5, v8, v3

    .line 2178
    .local v5, "singleTop":I
    if-ge v5, v7, :cond_1

    .line 2179
    move v7, v5

    .line 2176
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2166
    .end local v0    # "bottomMost":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleTop":I
    .end local v6    # "targetCol":I
    .end local v7    # "top":I
    :cond_2
    iget v8, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 2167
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2182
    .restart local v0    # "bottomMost":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "top":I
    :cond_3
    if-le v7, v0, :cond_4

    .line 2183
    move v0, v7

    .line 2184
    move v6, v2

    .line 2174
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2188
    .end local v3    # "j":I
    .end local v7    # "top":I
    :cond_5
    iput v6, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2190
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 2191
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int/2addr v8, v0

    invoke-virtual {v4, v2, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    .line 2190
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2194
    :cond_6
    return-object v4
.end method

.method public final getOnItemClickListener()Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;
    .locals 1

    .prologue
    .line 4284
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 4323
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4179
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hideSelector()V
    .locals 2

    .prologue
    .line 660
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 663
    :cond_0
    return-void
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1752
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1753
    .local v0, "beginAt":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1754
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1758
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1759
    .local v1, "end":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1760
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1759
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1764
    :cond_1
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1739
    const/4 v1, 0x0

    .line 1740
    .local v1, "endAt":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 1741
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1744
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1745
    .local v0, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1746
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1745
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1749
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 3618
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    .line 3619
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 3620
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->invalidate()V

    .line 3621
    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .locals 1

    .prologue
    .line 4373
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2974
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2975
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 4201
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 4202
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4203
    :cond_0
    return-void
.end method

.method final layoutChildren(Z)V
    .locals 34
    .param p1, "queryAdapter"    # Z

    .prologue
    .line 1601
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v23

    .line 1602
    .local v23, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingRight()I

    move-result v24

    .line 1603
    .local v24, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v17, v0

    .line 1604
    .local v17, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getWidth()I

    move-result v32

    sub-int v32, v32, v23

    sub-int v32, v32, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    mul-int v33, v33, v17

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    div-int v14, v32, v33

    .line 1605
    .local v14, "colWidth":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    .line 1606
    const/16 v27, -0x1

    .line 1607
    .local v27, "rebuildLayoutRecordsBefore":I
    const/16 v26, -0x1

    .line 1609
    .local v26, "rebuildLayoutRecordsAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v8

    .line 1611
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    const/high16 v33, -0x80000000

    invoke-static/range {v32 .. v33}, Ljava/util/Arrays;->fill([II)V

    .line 1613
    const/4 v4, 0x0

    .line 1615
    .local v4, "amountRemoved":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v8, :cond_10

    .line 1616
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1617
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1618
    .local v20, "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v20

    iget v13, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1619
    .local v13, "col":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v25, v32, v16

    .line 1620
    .local v25, "position":I
    if-nez p1, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v32

    if-eqz v32, :cond_3

    :cond_0
    const/16 v21, 0x1

    .line 1622
    .local v21, "needsLayout":Z
    :goto_1
    if-eqz p1, :cond_6

    .line 1624
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v22

    .line 1625
    .local v22, "newView":Landroid/view/View;
    if-nez v22, :cond_4

    .line 1627
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->removeViewAt(I)V

    .line 1628
    add-int/lit8 v32, v16, -0x1

    if-ltz v32, :cond_1

    add-int/lit8 v32, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1629
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1615
    .end local v22    # "newView":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1620
    .end local v21    # "needsLayout":Z
    :cond_3
    const/16 v21, 0x0

    goto :goto_1

    .line 1631
    .restart local v21    # "needsLayout":Z
    .restart local v22    # "newView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, v22

    if-eq v0, v6, :cond_5

    .line 1632
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->removeViewAt(I)V

    .line 1633
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->addView(Landroid/view/View;I)V

    .line 1634
    move-object/from16 v6, v22

    .line 1636
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    check-cast v20, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1637
    .restart local v20    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v20

    iput v13, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1638
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    .end local v22    # "newView":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1642
    .local v29, "span":I
    mul-int v32, v14, v29

    add-int/lit8 v33, v29, -0x1

    mul-int v33, v33, v17

    add-int v30, v32, v33

    .line 1644
    .local v30, "widthSize":I
    if-eqz v21, :cond_7

    .line 1645
    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 1648
    .local v31, "widthSpec":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, -0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 1649
    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1654
    .local v15, "heightSpec":I
    :goto_3
    move/from16 v0, v31

    invoke-virtual {v6, v0, v15}, Landroid/view/View;->measure(II)V

    .line 1657
    .end local v15    # "heightSpec":I
    .end local v31    # "widthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v13

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v33, v0

    add-int v12, v32, v33

    .line 1659
    .local v12, "childTop":I
    :goto_4
    const/16 v32, 0x1

    move/from16 v0, v29

    move/from16 v1, v32

    if-le v0, v1, :cond_c

    .line 1660
    move/from16 v19, v12

    .line 1661
    .local v19, "lowest":I
    add-int/lit8 v18, v13, 0x1

    .local v18, "j":I
    :goto_5
    add-int v32, v13, v29

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v33, v0

    add-int v5, v32, v33

    .line 1663
    .local v5, "bottom":I
    move/from16 v0, v19

    if-le v5, v0, :cond_8

    .line 1664
    move/from16 v19, v5

    .line 1661
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1651
    .end local v5    # "bottom":I
    .end local v12    # "childTop":I
    .end local v18    # "j":I
    .end local v19    # "lowest":I
    .restart local v31    # "widthSpec":I
    :cond_9
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15    # "heightSpec":I
    goto :goto_3

    .line 1657
    .end local v15    # "heightSpec":I
    .end local v31    # "widthSpec":I
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_4

    .line 1667
    .restart local v12    # "childTop":I
    .restart local v18    # "j":I
    .restart local v19    # "lowest":I
    :cond_b
    move/from16 v12, v19

    .line 1669
    .end local v18    # "j":I
    .end local v19    # "lowest":I
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1670
    .local v9, "childHeight":I
    add-int v7, v12, v9

    .line 1671
    .local v7, "childBottom":I
    add-int v32, v14, v17

    mul-int v32, v32, v13

    add-int v10, v23, v32

    .line 1672
    .local v10, "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v11, v10, v32

    .line 1673
    .local v11, "childRight":I
    invoke-virtual {v6, v10, v12, v11, v7}, Landroid/view/View;->layout(IIII)V

    .line 1675
    move/from16 v18, v13

    .restart local v18    # "j":I
    :goto_6
    add-int v32, v13, v29

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aput v7, v32, v18

    .line 1675
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1679
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 1680
    .local v28, "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-eqz v28, :cond_e

    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v9, :cond_e

    .line 1682
    move-object/from16 v0, v28

    iput v9, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1683
    move/from16 v27, v25

    .line 1686
    :cond_e
    if-eqz v28, :cond_f

    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 1688
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1689
    move/from16 v26, v25

    .line 1692
    :cond_f
    if-eqz v28, :cond_2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v13, :cond_2

    .line 1693
    move-object/from16 v0, v28

    iput v13, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    goto/16 :goto_2

    .line 1698
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childBottom":I
    .end local v9    # "childHeight":I
    .end local v10    # "childLeft":I
    .end local v11    # "childRight":I
    .end local v12    # "childTop":I
    .end local v13    # "col":I
    .end local v18    # "j":I
    .end local v20    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v21    # "needsLayout":Z
    .end local v25    # "position":I
    .end local v28    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v29    # "span":I
    .end local v30    # "widthSize":I
    :cond_10
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v16

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v33, v33, v16

    aput v33, v32, v16

    .line 1698
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 1704
    :cond_12
    if-gez v27, :cond_13

    if-ltz v26, :cond_17

    .line 1705
    :cond_13
    if-ltz v27, :cond_14

    .line 1706
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1708
    :cond_14
    if-ltz v26, :cond_15

    .line 1709
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1711
    :cond_15
    const/16 v16, 0x0

    :goto_8
    sub-int v32, v8, v4

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_17

    .line 1712
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v25, v32, v16

    .line 1713
    .restart local v25    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1714
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1715
    .restart local v20    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 1716
    .restart local v28    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v28, :cond_16

    .line 1717
    new-instance v28, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v28    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 1718
    .restart local v28    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1720
    :cond_16
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1721
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1722
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1711
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 1727
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v25    # "position":I
    .end local v28    # "rec":Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_19

    .line 1728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1729
    .restart local v6    # "child":Landroid/view/View;
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1736
    .end local v6    # "child":Landroid/view/View;
    :cond_18
    :goto_9
    return-void

    .line 1730
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_1a

    .line 1731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1732
    .restart local v6    # "child":Landroid/view/View;
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_9

    .line 1734
    .end local v6    # "child":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_9
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "optScrap"    # Landroid/view/View;

    .prologue
    .line 2267
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v6

    .line 2268
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    move-object v8, v6

    .line 2430
    :goto_0
    return-object v8

    .line 2272
    :cond_0
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-lt p1, v8, :cond_1

    .line 2273
    const/4 v6, 0x0

    .line 2274
    const/4 v8, 0x0

    goto :goto_0

    .line 2278
    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    iget v1, v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->viewType:I

    .line 2280
    .local v1, "optType":I
    :goto_1
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 2281
    .local v2, "positionViewType":I
    if-ne v1, v2, :cond_6

    move-object v3, p2

    .line 2285
    .local v3, "scrap":Landroid/view/View;
    :goto_2
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2287
    if-eq v6, v3, :cond_2

    if-eqz v3, :cond_2

    .line 2289
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v8, v3}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2293
    :cond_2
    move v5, p1

    .line 2294
    .local v5, "tPosition":I
    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 2295
    new-instance v8, Lcom/meizu/widget/StaggeredGridView$6;

    invoke-direct {v8, p0, v5}, Lcom/meizu/widget/StaggeredGridView$6;-><init>(Lcom/meizu/widget/StaggeredGridView;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2412
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2414
    .local v7, "vlp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v8, p0, :cond_4

    .line 2415
    if-nez v7, :cond_7

    .line 2416
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    .line 2422
    .local v0, "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :goto_3
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2423
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :cond_4
    move-object v4, v7

    .line 2426
    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 2427
    .local v4, "sglp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    iput p1, v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->position:I

    .line 2428
    iput v2, v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->viewType:I

    move-object v8, v6

    .line 2430
    goto :goto_0

    .line 2278
    .end local v1    # "optType":I
    .end local v2    # "positionViewType":I
    .end local v3    # "scrap":Landroid/view/View;
    .end local v4    # "sglp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v5    # "tPosition":I
    .end local v7    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    .line 2281
    .restart local v1    # "optType":I
    .restart local v2    # "positionViewType":I
    :cond_6
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v8, v2, v10, v11}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->getScrapView(IJ)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 2417
    .restart local v3    # "scrap":Landroid/view/View;
    .restart local v5    # "tPosition":I
    .restart local v7    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/meizu/widget/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 2418
    invoke-virtual {p0, v7}, Lcom/meizu/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    goto :goto_3

    .end local v0    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :cond_8
    move-object v0, v7

    .line 2420
    check-cast v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .restart local v0    # "lp":Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    goto :goto_3
.end method

.method final offsetChildren(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 1586
    invoke-virtual {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->offsetChildrenTopAndBottom(I)V

    .line 1588
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1589
    .local v0, "colCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v3, v2, v1

    add-int/2addr v3, p1

    aput v3, v2, v1

    .line 1591
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v3, v2, v1

    add-int/2addr v3, p1

    aput v3, v2, v1

    .line 1589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1593
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 4760
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4761
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    if-nez v0, :cond_0

    .line 4762
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    .line 4763
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 4767
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    .line 4768
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 4770
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3646
    iget-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3648
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3674
    :cond_0
    :goto_0
    return-object v3

    .line 3654
    :cond_1
    sget-object v4, Lcom/meizu/widget/StaggeredGridView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3659
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3660
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3661
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3662
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3663
    move v0, v2

    .line 3669
    :cond_2
    if-ltz v0, :cond_0

    .line 3670
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 3661
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 4773
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mIsDetaching:Z

    .line 4775
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 4776
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4778
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    if-eqz v0, :cond_1

    .line 4779
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    .line 4782
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mIsDetaching:Z

    .line 4783
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 608
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    if-eqz v7, :cond_0

    .line 609
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-virtual {v7}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->stop()V

    .line 612
    :cond_0
    iget-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mIsDetaching:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->isAttachedToWindow()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v5, v6

    .line 656
    :goto_0
    return v5

    .line 620
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 622
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_3
    :pswitch_0
    move v5, v6

    .line 656
    goto :goto_0

    .line 624
    :pswitch_1
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 625
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {v7}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->endAnimation()V

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 627
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    .line 628
    const/4 v7, 0x0

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 629
    iget v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    goto :goto_0

    .line 637
    :pswitch_2
    iget v7, p0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 638
    .local v3, "index":I
    if-gez v3, :cond_4

    .line 639
    const-string v5, "StaggeredGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "event stream?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 642
    goto :goto_0

    .line 644
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 645
    .local v4, "y":F
    iget v7, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    add-float v2, v7, v8

    .line 646
    .local v2, "dy":F
    float-to-int v1, v2

    .line 647
    .local v1, "deltaY":I
    int-to-float v7, v1

    sub-float v7, v2, v7

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 649
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 650
    iput v5, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 1264
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    .line 1265
    invoke-direct {p0, v3}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 1266
    iput-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    .line 1268
    sub-int v1, p4, p2

    .line 1269
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 1273
    .local v0, "height":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1233
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1234
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1235
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1237
    .local v2, "heightSize":I
    if-eq v3, v5, :cond_0

    .line 1238
    const/high16 v3, 0x40000000    # 2.0f

    .line 1240
    :cond_0
    if-eq v1, v5, :cond_1

    .line 1241
    const/high16 v1, 0x40000000    # 2.0f

    .line 1244
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/meizu/widget/StaggeredGridView;->setMeasuredDimension(II)V

    .line 1246
    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mColCountSetting:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1247
    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v5

    .line 1248
    .local v0, "colCount":I
    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v5, :cond_2

    .line 1249
    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1252
    .end local v0    # "colCount":I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3073
    move-object v3, p1

    check-cast v3, Lcom/meizu/widget/StaggeredGridView$SavedState;

    .line 3074
    .local v3, "ss":Lcom/meizu/widget/StaggeredGridView$SavedState;
    invoke-virtual {v3}, Lcom/meizu/widget/StaggeredGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3075
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 3076
    iget v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->position:I

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 3077
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->topOffsets:[I

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 3079
    iget-boolean v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->inActionMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 3081
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v4}, Lcom/meizu/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 3084
    :cond_0
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    .line 3085
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3088
    :cond_1
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_2

    .line 3089
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3092
    :cond_2
    iget v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3093
    iget-object v1, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 3095
    .local v1, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/StaggeredGridView$ColMap;>;"
    if-eqz v1, :cond_3

    .line 3096
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3097
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/StaggeredGridView$ColMap;

    .line 3098
    .local v0, "colMap":Lcom/meizu/widget/StaggeredGridView$ColMap;
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    # getter for: Lcom/meizu/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView$ColMap;->access$2400(Lcom/meizu/widget/StaggeredGridView$ColMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3102
    .end local v0    # "colMap":Lcom/meizu/widget/StaggeredGridView$ColMap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-wide v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->firstId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 3103
    iget-wide v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->firstId:J

    iput-wide v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstAdapterId:J

    .line 3104
    const/4 v4, -0x1

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 3108
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->invalidateViews()V

    .line 3109
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 3027
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .line 3028
    .local v8, "superState":Landroid/os/Parcelable;
    new-instance v7, Lcom/meizu/widget/StaggeredGridView$SavedState;

    invoke-direct {v7, v8}, Lcom/meizu/widget/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3029
    .local v7, "ss":Lcom/meizu/widget/StaggeredGridView$SavedState;
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 3030
    .local v6, "position":I
    iput v6, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->position:I

    .line 3031
    if-ltz v6, :cond_0

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 3032
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->firstId:J

    .line 3035
    :cond_0
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    new-array v9, v10, [I

    .line 3036
    .local v9, "topOffsets":[I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_4

    .line 3037
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    if-lez v10, :cond_1

    .line 3038
    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 3040
    :cond_1
    iput-object v9, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->topOffsets:[I

    .line 3043
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3044
    .local v1, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/StaggeredGridView$ColMap;>;"
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3045
    .local v0, "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Lcom/meizu/widget/StaggeredGridView$ColMap;

    invoke-direct {v10, v0}, Lcom/meizu/widget/StaggeredGridView$ColMap;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3048
    .end local v0    # "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iput-object v1, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 3054
    .end local v1    # "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/widget/StaggeredGridView$ColMap;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->inActionMode:Z

    .line 3056
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v10, :cond_3

    .line 3057
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 3059
    :cond_3
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_7

    .line 3060
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 3061
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 3062
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_6

    .line 3063
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    iget-object v12, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v10, v11, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3062
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3050
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_4
    iput-object v9, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->topOffsets:[I

    .line 3051
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    goto :goto_1

    .line 3054
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 3065
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_6
    iput-object v5, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 3067
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    iput v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    .line 3068
    return-object v7
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4424
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-nez v2, :cond_1

    .line 4445
    :cond_0
    :goto_0
    return v1

    .line 4427
    :cond_1
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    if-nez v2, :cond_2

    .line 4428
    invoke-virtual {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4429
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4430
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4436
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4437
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 4438
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->endAnimation()V

    .line 4440
    :cond_3
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_4

    .line 4441
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/meizu/widget/StaggeredGridView;->setPositionAndTop(II)V

    .line 4444
    :cond_4
    invoke-virtual {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollToPosition(I)V

    .line 4445
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v4, v0, 0xff

    .line 670
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->stop()V

    .line 674
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mIsDetaching:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->isAttachedToWindow()Z

    move-result v22

    if-nez v22, :cond_2

    .line 679
    :cond_1
    const/16 v22, 0x0

    .line 900
    :goto_0
    return v22

    .line 682
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 900
    :cond_3
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 685
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->endAnimation()V

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mLastTouchX:F

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 691
    .local v20, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 693
    .local v21, "y":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->pointToPosition(II)I

    move-result v14

    .line 694
    .local v14, "motionPosition":I
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    .line 695
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    if-ltz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 698
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 703
    new-instance v22, Lcom/meizu/widget/StaggeredGridView$CheckForTap;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$CheckForTap;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 706
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 709
    :cond_5
    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    .line 710
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mMotionX:I

    .line 711
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mMotionY:I

    goto/16 :goto_1

    .line 716
    .end local v14    # "motionPosition":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 717
    .local v13, "index":I
    if-gez v13, :cond_6

    .line 718
    const-string v22, "StaggeredGridView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "event stream?"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 723
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    .line 724
    .local v21, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    move/from16 v23, v0

    add-float v9, v22, v23

    .line 725
    .local v9, "dy":F
    float-to-int v8, v9

    .line 726
    .local v8, "deltaY":I
    int-to-float v0, v8

    move/from16 v22, v0

    sub-float v22, v9, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_9

    .line 729
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 735
    .local v10, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_7

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->setPressed(Z)V

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 740
    .local v15, "motionView":Landroid/view/View;
    if-eqz v15, :cond_8

    .line 741
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setPressed(Z)V

    .line 746
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 747
    .local v16, "parent":Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    .line 748
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 753
    .end local v10    # "handler":Landroid/os/Handler;
    .end local v15    # "motionView":Landroid/view/View;
    .end local v16    # "parent":Landroid/view/ViewParent;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 754
    :cond_a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 757
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_d

    .line 759
    const/4 v9, 0x0

    .line 764
    :goto_2
    float-to-int v8, v9

    .line 765
    int-to-float v0, v8

    move/from16 v22, v0

    sub-float v22, v9, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 768
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v8, v1}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    .line 774
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_1

    .line 761
    :cond_d
    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v6, v22, v23

    .line 762
    .local v6, "coeff":F
    mul-float/2addr v9, v6

    goto :goto_2

    .line 780
    .end local v6    # "coeff":F
    .end local v8    # "deltaY":I
    .end local v9    # "dy":F
    .end local v13    # "index":I
    .end local v21    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->startSpringback(I)Z

    move-result v22

    if-nez v22, :cond_3

    .line 783
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    .line 785
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->setPressed(Z)V

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 787
    .restart local v15    # "motionView":Landroid/view/View;
    if-eqz v15, :cond_e

    .line 788
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setPressed(Z)V

    .line 790
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 791
    .restart local v10    # "handler":Landroid/os/Handler;
    if-eqz v10, :cond_f

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 800
    :cond_f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    goto/16 :goto_1

    .line 805
    .end local v10    # "handler":Landroid/os/Handler;
    .end local v15    # "motionView":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v19

    .line 807
    .local v19, "velocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v18, v0

    .line 809
    .local v18, "prevTouchMode":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->startSpringback(I)Z

    move-result v22

    if-nez v22, :cond_3

    .line 811
    :cond_10
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFlingVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->start(F)V

    .line 820
    :goto_3
    packed-switch v18, :pswitch_data_1

    .line 896
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_1

    .line 813
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 815
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    .line 817
    :cond_12
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    .line 824
    :pswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    .line 825
    .restart local v14    # "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v14, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 826
    .local v5, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 827
    .local v20, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-lez v22, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingRight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v20, v22

    if-gez v22, :cond_19

    const/4 v12, 0x1

    .line 828
    .local v12, "inList":Z
    :goto_5
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1e

    if-eqz v12, :cond_1e

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 830
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 833
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    .line 834
    new-instance v22, Lcom/meizu/widget/StaggeredGridView$PerformClick;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView$PerformClick;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    .line 837
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    move-object/from16 v17, v0

    .line 838
    .local v17, "performClick":Lcom/meizu/widget/StaggeredGridView$PerformClick;
    move-object/from16 v0, v17

    iput v14, v0, Lcom/meizu/widget/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 839
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/widget/StaggeredGridView$PerformClick;->rememberWindowAttachCount()V

    .line 842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 843
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 844
    .local v11, "handlerTouch":Landroid/os/Handler;
    if-eqz v11, :cond_16

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    :goto_6
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 850
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 852
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 853
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 855
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->setPressed(Z)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->invalidate()V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 860
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_17

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 861
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 864
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 867
    :cond_18
    new-instance v22, Lcom/meizu/widget/StaggeredGridView$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Lcom/meizu/widget/StaggeredGridView$2;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;Lcom/meizu/widget/StaggeredGridView$PerformClick;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 884
    :goto_7
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 827
    .end local v11    # "handlerTouch":Landroid/os/Handler;
    .end local v12    # "inList":Z
    .end local v17    # "performClick":Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 845
    .restart local v11    # "handlerTouch":Landroid/os/Handler;
    .restart local v12    # "inList":Z
    .restart local v17    # "performClick":Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v22, v0

    goto/16 :goto_6

    .line 881
    :cond_1b
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto :goto_7

    .line 885
    .end local v11    # "handlerTouch":Landroid/os/Handler;
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 886
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/widget/StaggeredGridView$PerformClick;->run()V

    .line 893
    .end local v17    # "performClick":Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_1d
    :goto_8
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_4

    .line 888
    :cond_1e
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1d

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1d

    .line 890
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_8

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 820
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 4787
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 4788
    if-nez p1, :cond_0

    .line 4789
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 4790
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4791
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->endAnimation()V

    .line 4794
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 3785
    const/4 v9, 0x0

    .line 3786
    .local v9, "handled":Z
    const/4 v8, 0x1

    .line 3788
    .local v8, "dispatchItemClick":Z
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 3789
    const/4 v9, 0x1

    .line 3790
    const/4 v7, 0x0

    .line 3792
    .local v7, "checkedStateChanged":Z
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 3793
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v10

    .line 3794
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3795
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3796
    if-eqz v6, :cond_6

    .line 3797
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3802
    :cond_0
    :goto_1
    if-eqz v6, :cond_7

    .line 3803
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3807
    :goto_2
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 3808
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 3810
    const/4 v8, 0x0

    .line 3812
    :cond_1
    const/4 v7, 0x1

    .line 3815
    .end local v6    # "checked":Z
    :cond_2
    if-eqz v7, :cond_3

    .line 3816
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->updateOnScreenCheckedViews()V

    .line 3820
    .end local v7    # "checkedStateChanged":Z
    :cond_3
    if-eqz v8, :cond_8

    .line 3821
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    if-eqz v1, :cond_8

    .line 3822
    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->playSoundEffect(I)V

    .line 3823
    if-eqz p1, :cond_4

    .line 3824
    invoke-virtual {p1, v10}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3826
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;->onItemClick(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;IJ)V

    .line 3831
    :goto_3
    return v10

    .restart local v7    # "checkedStateChanged":Z
    :cond_5
    move v6, v0

    .line 3793
    goto :goto_0

    .line 3799
    .restart local v6    # "checked":Z
    :cond_6
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3805
    :cond_7
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .end local v6    # "checked":Z
    .end local v7    # "checkedStateChanged":Z
    :cond_8
    move v10, v0

    .line 3831
    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 3839
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 3840
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 3842
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3843
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3844
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3847
    :cond_1
    iput p2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 3849
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3850
    .local v6, "checkbox":Landroid/view/View;
    if-eqz v6, :cond_2

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 3851
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 3854
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3855
    .local v7, "frame":Landroid/graphics/Rect;
    if-nez v7, :cond_3

    .line 3856
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3857
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3859
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3861
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mMotionX:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I

    .line 3862
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mMotionY:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I

    .line 3864
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 3865
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 3867
    instance-of v0, p1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v0, :cond_7

    move-object v9, p1

    .line 3868
    check-cast v9, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    .line 3869
    .local v9, "item":Lcom/meizu/widget/StaggeredGridView$DragShadowItem;
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-interface {v9}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v9}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->needBackground()Z

    move-result v2

    invoke-interface {v9}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    .line 3874
    .end local v9    # "item":Lcom/meizu/widget/StaggeredGridView$DragShadowItem;
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Lcom/meizu/widget/StaggeredGridView;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3876
    if-eqz v6, :cond_4

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_4

    .line 3877
    check-cast v6, Landroid/widget/Checkable;

    .end local v6    # "checkbox":Landroid/view/View;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 3879
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3880
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 3882
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    if-nez v0, :cond_5

    .line 3883
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/StaggeredGridView$PerformClick;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    .line 3887
    :cond_5
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    .line 3888
    .local v10, "performClick":Lcom/meizu/widget/StaggeredGridView$PerformClick;
    iput p2, v10, Lcom/meizu/widget/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 3889
    invoke-virtual {v10}, Lcom/meizu/widget/StaggeredGridView$PerformClick;->rememberWindowAttachCount()V

    .line 3890
    invoke-virtual {p0, v10}, Lcom/meizu/widget/StaggeredGridView;->post(Ljava/lang/Runnable;)Z

    .line 3891
    const/4 v8, 0x1

    .line 3921
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v10    # "performClick":Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_6
    :goto_1
    return v8

    .line 3871
    .restart local v6    # "checkbox":Landroid/view/View;
    .restart local v7    # "frame":Landroid/graphics/Rect;
    :cond_7
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-direct {v0, p0, p1}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    goto :goto_0

    .line 3894
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->performHapticFeedback(I)Z

    .line 3895
    instance-of v0, p1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v0, :cond_a

    .line 3900
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    if-eqz v0, :cond_9

    .line 3901
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3907
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    :cond_9
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 3904
    .restart local v6    # "checkbox":Landroid/view/View;
    .restart local v7    # "frame":Landroid/graphics/Rect;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 3910
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    :cond_b
    const/4 v8, 0x0

    .line 3911
    .local v8, "handled":Z
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    if-eqz v0, :cond_c

    .line 3912
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;IJ)Z

    move-result v8

    .line 3914
    :cond_c
    if-nez v8, :cond_d

    .line 3915
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/widget/StaggeredGridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3916
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v8

    .line 3918
    :cond_d
    if-eqz v8, :cond_6

    .line 3919
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4353
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4354
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 4355
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4356
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4359
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 4360
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 4361
    invoke-virtual {p0, v3}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4362
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 4363
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4364
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4365
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 4369
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 4360
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4369
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 3591
    if-eq p1, v6, :cond_0

    .line 3592
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 3595
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3596
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3597
    instance-of v2, p2, Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 3598
    check-cast v2, Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3601
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(IIII)V

    .line 3604
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 3605
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 3606
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 3607
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 3608
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->refreshDrawableState()V

    .line 3611
    :cond_2
    return-void

    .line 3606
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1224
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFastChildLayout:Z

    if-nez v0, :cond_0

    .line 1225
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1227
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2438
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    if-eqz v2, :cond_0

    .line 2439
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2443
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->clearAllState()V

    .line 2444
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2445
    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 2447
    if-eqz p1, :cond_4

    .line 2448
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    .line 2449
    new-instance v2, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    .line 2450
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2451
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    .line 2452
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    .line 2453
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v2, :cond_1

    .line 2455
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2460
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_2

    .line 2461
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2464
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    .line 2465
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2467
    :cond_3
    if-eqz p1, :cond_5

    :goto_1
    invoke-direct {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 2468
    return-void

    .line 2458
    :cond_4
    iput-boolean v1, p0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2467
    goto :goto_1
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    .line 2669
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    .line 2670
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2671
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2674
    :cond_0
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 2675
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2676
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2678
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2679
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2682
    :cond_2
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2683
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->clearChoices()V

    .line 2684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setLongClickable(Z)V

    .line 2687
    :cond_3
    return-void
.end method

.method public setColumnCount(I)V
    .locals 4
    .param p1, "colCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 551
    if-ge p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 552
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column count must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_0
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq p1, v2, :cond_2

    .line 556
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 557
    if-eqz v0, :cond_1

    .line 558
    invoke-direct {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 560
    :cond_1
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_2
    move v0, v1

    .line 555
    goto :goto_0
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 3
    .param p1, "bgres"    # [I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3983
    if-eqz p1, :cond_2

    .line 3984
    array-length v0, p1

    if-lez v0, :cond_0

    .line 3985
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackground:I

    .line 3987
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 3988
    aget v0, p1, v1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundFilter:I

    .line 3990
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 3991
    aget v0, p1, v2

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundDelete:I

    .line 3994
    :cond_2
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "drawSelectorOnTop"    # Z

    .prologue
    .line 4377
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 4378
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2711
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-nez v3, :cond_1

    .line 2779
    :cond_0
    :goto_0
    return-void

    .line 2716
    :cond_1
    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_4

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v3, v6, :cond_4

    .line 2718
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v3}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2720
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2724
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v3}, Lcom/meizu/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2727
    :cond_4
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v3, v6, :cond_a

    .line 2728
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2729
    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2730
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2731
    if-eqz p2, :cond_8

    .line 2732
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2737
    :cond_5
    :goto_1
    if-eq v0, p2, :cond_6

    .line 2738
    if-eqz p2, :cond_9

    .line 2739
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 2744
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    .line 2745
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2746
    .local v4, "id":J
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2773
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_7
    :goto_3
    iget-boolean v1, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-nez v1, :cond_0

    .line 2776
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->invalidateViews()V

    goto :goto_0

    .line 2734
    .restart local v0    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2741
    :cond_9
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .line 2750
    .end local v0    # "oldValue":Z
    :cond_a
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_e

    move v7, v1

    .line 2753
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2754
    :cond_b
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2755
    if-eqz v7, :cond_c

    .line 2756
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 2761
    :cond_c
    if-eqz p2, :cond_f

    .line 2762
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2763
    if-eqz v7, :cond_d

    .line 2764
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2766
    :cond_d
    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_e
    move v7, v2

    .line 2750
    goto :goto_4

    .line 2767
    .restart local v7    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2768
    :cond_10
    iput v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setItemDragListener(Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    .prologue
    .line 2618
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    .line 2619
    return-void
.end method

.method public setItemMargin(I)V
    .locals 3
    .param p1, "marginPixels"    # I

    .prologue
    const/4 v1, 0x0

    .line 582
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    if-eq p1, v2, :cond_1

    const/4 v0, 0x1

    .line 583
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    .line 584
    if-eqz v0, :cond_0

    .line 585
    invoke-direct {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 587
    :cond_0
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_1
    move v0, v1

    .line 582
    goto :goto_0
.end method

.method public setMinColumnWidth(I)V
    .locals 1
    .param p1, "minColWidth"    # I

    .prologue
    .line 571
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    .line 572
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setColumnCount(I)V

    .line 573
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2792
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    .line 2794
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->setWrapped(Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;)V

    .line 2795
    return-void
.end method

.method public setOnItemClickListener(Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    .prologue
    .line 4276
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    .line 4277
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    .prologue
    .line 4312
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setLongClickable(Z)V

    .line 4315
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    .line 4316
    return-void
.end method

.method public setPositionAndTop(II)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v7, 0x0

    .line 1435
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    .line 1436
    .local v1, "firstPosition":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1437
    .local v2, "lastVisiblePosition":I
    move v4, p1

    .line 1438
    .local v4, "syncPosition":I
    move v3, p2

    .line 1445
    .local v3, "sncTop":I
    if-ltz v4, :cond_0

    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-lt v4, v6, :cond_2

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    .line 1458
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1448
    :cond_2
    if-lt v4, v1, :cond_3

    if-le v4, v2, :cond_5

    .line 1449
    :cond_3
    if-le v4, v2, :cond_7

    .line 1450
    const/16 v6, -0x12c

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1454
    :cond_4
    :goto_1
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mMoveBy:I

    if-nez v6, :cond_1

    .line 1460
    :cond_5
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1461
    .local v5, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 1462
    .local v0, "delta":I
    if-eqz v5, :cond_6

    .line 1463
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    .line 1466
    :cond_6
    if-eqz v0, :cond_0

    .line 1467
    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1469
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1470
    if-eqz v5, :cond_0

    .line 1471
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    .line 1472
    if-eqz v0, :cond_0

    .line 1473
    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    goto :goto_0

    .line 1451
    .end local v0    # "delta":I
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    if-ge v4, v1, :cond_4

    .line 1452
    const/16 v6, 0x12c

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    goto :goto_1
.end method

.method public setSelectionToTop()V
    .locals 6

    .prologue
    .line 2517
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    if-eqz v3, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return-void

    .line 2521
    :cond_1
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_2

    .line 2522
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2525
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_3

    .line 2526
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2529
    :cond_3
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    if-eqz v3, :cond_5

    .line 2531
    :cond_4
    new-instance v2, Lcom/meizu/widget/StaggeredGridView$7;

    invoke-direct {v2, p0}, Lcom/meizu/widget/StaggeredGridView$7;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    .line 2537
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2538
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2539
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2543
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_5
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 2545
    .local v0, "firstPosition":I
    if-nez v0, :cond_6

    .line 2546
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    goto :goto_0

    .line 2548
    :cond_6
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->recycleAllViews()V

    .line 2550
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->resetStateForGridTop()V

    .line 2551
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v3, :cond_7

    .line 2552
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->startLayoutAnimation()V

    goto :goto_0

    .line 2554
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    goto :goto_0
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 4190
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4191
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4206
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4207
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4208
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4211
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 4213
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 4225
    :goto_0
    return-void

    .line 4217
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4218
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4219
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionLeftPadding:I

    .line 4220
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionTopPadding:I

    .line 4221
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionRightPadding:I

    .line 4222
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionBottomPadding:I

    .line 4223
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4224
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto :goto_0
.end method

.method public setTopShadowEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1201
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    .line 1202
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 4251
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 4674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollBy(IIZ)V

    .line 4675
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 4679
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 4680
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 4681
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 4682
    .local v3, "lastPos":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v4

    .line 4683
    .local v4, "topLimit":I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4685
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_1

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ne v3, v5, :cond_3

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_3

    if-lez p1, :cond_3

    .line 4689
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {v5}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->endAnimation()V

    .line 4690
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    if-eqz v5, :cond_2

    .line 4691
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-virtual {v5}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->stop()V

    .line 4697
    :cond_2
    :goto_0
    return-void

    .line 4694
    :cond_3
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingRunnable:Lcom/meizu/widget/StaggeredGridView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->startScroll(II)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    if-nez v0, :cond_0

    .line 4455
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    .line 4457
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->start(I)V

    .line 4458
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 4260
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 4265
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4263
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4260
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4229
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4230
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4235
    :cond_0
    :goto_0
    return-void

    .line 4232
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
