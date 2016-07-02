.class final Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;
.super Ljava/lang/Object;
.source "MzHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x19

.field private static final SCROLL_SPEED_BACKWARD:I = 0xa

.field private static final SCROLL_SPEED_FORWARD:I = -0xa


# instance fields
.field private mScrollForward:Z

.field private mStart:Z

.field final synthetic this$0:Lcom/meizu/widget/MzHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/MzHorizontalListView;)V
    .locals 1

    .prologue
    .line 471
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->mScrollForward:Z

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->mStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/MzHorizontalListView;Lcom/meizu/widget/MzHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/widget/MzHorizontalListView;
    .param p2, "x1"    # Lcom/meizu/widget/MzHorizontalListView$1;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;-><init>(Lcom/meizu/widget/MzHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->mStart:Z

    .line 508
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/MzHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->mStart:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, "atEnd":Z
    iget-boolean v3, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->mScrollForward:Z

    if-nez v3, :cond_2

    .line 490
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v2}, Lcom/meizu/widget/MzHorizontalListView;->smoothScrollBy(II)V

    .line 491
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-virtual {v3}, Lcom/meizu/widget/MzHorizontalListView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDisplayWidth:I
    invoke-static {v4}, Lcom/meizu/widget/MzHorizontalListView;->access$1900(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mContentView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/meizu/widget/MzHorizontalListView;->access$2000(Lcom/meizu/widget/MzHorizontalListView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 497
    :goto_0
    if-nez v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const-wide/16 v2, 0x19

    invoke-virtual {v1, p0, v2, v3}, Lcom/meizu/widget/MzHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 491
    goto :goto_0

    .line 494
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const/16 v4, -0xa

    invoke-virtual {v3, v4, v2}, Lcom/meizu/widget/MzHorizontalListView;->smoothScrollBy(II)V

    .line 495
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-virtual {v3}, Lcom/meizu/widget/MzHorizontalListView;->getScrollX()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public startScroll(Z)V
    .locals 1
    .param p1, "scrollForward"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->mScrollForward:Z

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->mStart:Z

    .line 482
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$ScrollRunnable;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/MzHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method
