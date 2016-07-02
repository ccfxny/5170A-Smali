.class public Lcom/meizu/widget/MzHorizontalListView;
.super Lcom/meizu/widget/MzHorizontalScrollView;
.source "MzHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MzHorizontalListView$InnerShadowBuilder;,
        Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;,
        Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;,
        Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;,
        Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;,
        Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;,
        Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DELAY:I = 0x0

.field private static final ANIMATOR_DURATION:I = 0x96

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mChildren:[Landroid/view/View;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mCurrentEnterPosition:I

.field private mDisplayWidth:I

.field private mDragPosition:I

.field private final mInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mIsAnimating:Z

.field private mIsDraggable:Z

.field private mIsDragging:Z

.field private final mMoveBackwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

.field private final mMoveForwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;

.field private mOnItemClickListener:Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;

.field private mOnItemPositionChangeListener:Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;

.field private mScrollDistance:I

.field private mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

.field private scrollForward:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MzHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/MzHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsDraggable:Z

    .line 51
    iput-boolean v1, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsDragging:Z

    .line 53
    iput v3, p0, Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I

    .line 54
    iput v3, p0, Lcom/meizu/widget/MzHorizontalListView;->mCurrentEnterPosition:I

    .line 56
    iput v1, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollDistance:I

    .line 65
    iput-boolean v1, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsAnimating:Z

    .line 67
    new-instance v0, Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;

    invoke-direct {v0, p0, v2}, Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;-><init>(Lcom/meizu/widget/MzHorizontalListView;Lcom/meizu/widget/MzHorizontalListView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mMoveForwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;

    .line 69
    new-instance v0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    invoke-direct {v0, p0, v2}, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;-><init>(Lcom/meizu/widget/MzHorizontalListView;Lcom/meizu/widget/MzHorizontalListView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mMoveBackwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    .line 71
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 73
    iput-object v2, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    .line 81
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzHorizontalListView;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/widget/MzHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzHorizontalListView;->startScroll(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/widget/MzHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/widget/MzHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mMoveForwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveForwardAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mMoveBackwardRunnable:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/widget/MzHorizontalListView;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mOnItemClickListener:Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/widget/MzHorizontalListView;III)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/MzHorizontalListView;->makeAnimator(III)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mOnItemPositionChangeListener:Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/widget/MzHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/MzHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/meizu/widget/MzHorizontalListView;->stopScroll()V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/widget/MzHorizontalListView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/MzHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/widget/MzHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/widget/MzHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/widget/MzHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/widget/MzHorizontalListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzHorizontalListView;->handleDataChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/widget/MzHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mCurrentEnterPosition:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/widget/MzHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mCurrentEnterPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/widget/MzHorizontalListView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzHorizontalListView;->enterScrollArea(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/widget/MzHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/widget/MzHorizontalListView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView;->scrollForward:Z

    return v0
.end method

.method private enterScrollArea(I)Z
    .locals 7
    .param p1, "currentPosition"    # I

    .prologue
    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "enterScrollArea":Z
    const/16 v0, 0x64

    .line 204
    .local v0, "SCROLL_AREA":I
    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    div-int v1, v5, v6

    .line 206
    .local v1, "childViewWidth":I
    mul-int v3, v1, p1

    .line 207
    .local v3, "leftEdge":I
    add-int v4, v3, v1

    .line 208
    .local v4, "rightEdge":I
    add-int/lit16 v5, v1, 0xc8

    iget v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mDisplayWidth:I

    if-ge v5, v6, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalListView;->getScrollX()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalListView;->getScrollX()I

    move-result v5

    sub-int v5, v3, v5

    if-ge v5, v0, :cond_1

    .line 210
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/meizu/widget/MzHorizontalListView;->scrollForward:Z

    .line 211
    const/4 v2, 0x1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalListView;->getScrollX()I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mDisplayWidth:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalListView;->getScrollX()I

    move-result v5

    iget v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mDisplayWidth:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-ge v5, v0, :cond_0

    .line 214
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/widget/MzHorizontalListView;->scrollForward:Z

    .line 215
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleDataChanged(I)V
    .locals 10
    .param p1, "scrollPosition"    # I

    .prologue
    const/4 v9, -0x2

    .line 131
    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalListView;->getScrollX()I

    move-result v4

    .line 132
    .local v4, "scroll":I
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    .line 133
    .local v5, "size":I
    new-array v6, v5, [Landroid/view/View;

    iput-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;

    .line 134
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 137
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v7, v8}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;

    aput-object v0, v6, v1

    .line 139
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v2, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;-><init>(Lcom/meizu/widget/MzHorizontalListView;I)V

    .line 143
    .local v2, "listener":Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;
    iget-boolean v6, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsDraggable:Z

    if-eqz v6, :cond_0

    .line 144
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "listener":Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 152
    move p1, v4

    .line 154
    :cond_2
    iput p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollDistance:I

    .line 155
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalListView;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzHorizontalListView;->setOverScrollMode(I)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/meizu/widget/MzHorizontalListView;->setLayoutDirection(I)V

    .line 92
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 94
    new-instance v1, Lcom/meizu/widget/MzHorizontalListView$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/MzHorizontalListView$1;-><init>(Lcom/meizu/widget/MzHorizontalListView;)V

    invoke-virtual {p0, v1}, Lcom/meizu/widget/MzHorizontalListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 105
    return-void
.end method

.method private makeAnimator(III)Landroid/animation/ObjectAnimator;
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "duration"    # I

    .prologue
    .line 343
    iget-object v9, p0, Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;

    aget-object v1, v9, p1

    .line 344
    .local v1, "fromView":Landroid/view/View;
    iget-object v9, p0, Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;

    aget-object v6, v9, p2

    .line 346
    .local v6, "toView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    .line 347
    .local v2, "fromX":F
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    .line 348
    .local v3, "fromY":F
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    .line 349
    .local v7, "toX":F
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v8

    .line 351
    .local v8, "toY":F
    const-string v9, "x"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 352
    .local v4, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string v9, "y"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v11, 0x1

    aput v8, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 353
    .local v5, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 354
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-long v10, p3

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 355
    const-wide/16 v10, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 356
    iget-object v9, p0, Lcom/meizu/widget/MzHorizontalListView;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    return-object v0
.end method

.method private startScroll(Z)V
    .locals 2
    .param p1, "forward"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;-><init>(Lcom/meizu/widget/MzHorizontalListView;Lcom/meizu/widget/MzHorizontalListView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->startScroll(Z)V

    .line 187
    :cond_1
    return-void
.end method

.method private stopScroll()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollSelectionRunnable:Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->finish()V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public enableDragMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mIsDraggable:Z

    .line 178
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 160
    invoke-super/range {p0 .. p5}, Lcom/meizu/widget/MzHorizontalScrollView;->onLayout(ZIIII)V

    .line 161
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/widget/MzHorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mDisplayWidth:I

    .line 162
    iget v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollDistance:I

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mScrollDistance:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/MzHorizontalListView;->scrollTo(II)V

    .line 165
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/MzHorizontalListView;->setAdapter(Landroid/widget/BaseAdapter;I)V

    .line 109
    return-void
.end method

.method protected setAdapter(Landroid/widget/BaseAdapter;I)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;
    .param p2, "selection"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 113
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView;->mAdapter:Landroid/widget/BaseAdapter;

    new-instance v1, Lcom/meizu/widget/MzHorizontalListView$2;

    invoke-direct {v1, p0}, Lcom/meizu/widget/MzHorizontalListView$2;-><init>(Lcom/meizu/widget/MzHorizontalListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    invoke-direct {p0, p2}, Lcom/meizu/widget/MzHorizontalListView;->handleDataChanged(I)V

    .line 128
    return-void
.end method

.method public setOnItemClickListener(Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mOnItemClickListener:Lcom/meizu/widget/MzHorizontalListView$onItemClickListener;

    .line 170
    return-void
.end method

.method public setOnItemPositionChangeListener(Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView;->mOnItemPositionChangeListener:Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;

    .line 174
    return-void
.end method
