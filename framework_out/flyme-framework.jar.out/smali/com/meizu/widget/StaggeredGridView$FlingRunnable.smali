.class Lcom/meizu/widget/StaggeredGridView$FlingRunnable;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4799
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4800
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4801
    return-void
.end method


# virtual methods
.method endAnimation()V
    .locals 1

    .prologue
    .line 4808
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4809
    return-void
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 4804
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 4839
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4840
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 4842
    .local v2, "y":I
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$300(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 4843
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$6000(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v3

    sub-int v0, v2, v3

    .line 4844
    .local v0, "dy":I
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I
    invoke-static {v3, v2}, Lcom/meizu/widget/StaggeredGridView;->access$6002(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4845
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # invokes: Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z
    invoke-static {v3, v0, v6}, Lcom/meizu/widget/StaggeredGridView;->access$6200(Lcom/meizu/widget/StaggeredGridView;IZ)Z

    .line 4865
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4866
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3, p0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4873
    .end local v0    # "dy":I
    .end local v2    # "y":I
    :cond_1
    :goto_0
    return-void

    .line 4847
    .restart local v2    # "y":I
    :cond_2
    int-to-float v3, v2

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F
    invoke-static {v4}, Lcom/meizu/widget/StaggeredGridView;->access$6100(Lcom/meizu/widget/StaggeredGridView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 4848
    .restart local v0    # "dy":I
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    int-to-float v4, v2

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F
    invoke-static {v3, v4}, Lcom/meizu/widget/StaggeredGridView;->access$6102(Lcom/meizu/widget/StaggeredGridView;F)F

    .line 4849
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # invokes: Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z
    invoke-static {v3, v0, v6}, Lcom/meizu/widget/StaggeredGridView;->access$6200(Lcom/meizu/widget/StaggeredGridView;IZ)Z

    move-result v1

    .line 4850
    .local v1, "isAtEdge":Z
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$300(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    if-eqz v1, :cond_3

    .line 4851
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4852
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v3, v6}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    goto :goto_0

    .line 4855
    :cond_3
    if-eqz v1, :cond_0

    .line 4856
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v6, v6, v6}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 4857
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I
    invoke-static {v4}, Lcom/meizu/widget/StaggeredGridView;->access$6300(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I
    invoke-static {v5}, Lcom/meizu/widget/StaggeredGridView;->access$6400(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4858
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I
    invoke-static {v4}, Lcom/meizu/widget/StaggeredGridView;->access$6300(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v4

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I
    invoke-static {v3, v4}, Lcom/meizu/widget/StaggeredGridView;->access$6002(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4859
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v3, v7}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4860
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3, p0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4868
    .end local v1    # "isAtEdge":Z
    :cond_4
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4869
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v3, v6}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    goto :goto_0
.end method

.method start(F)V
    .locals 9
    .param p1, "initialVelocity"    # F

    .prologue
    const/4 v1, 0x0

    .line 4822
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v2, 0x2

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v0, v2}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4823
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    float-to-int v4, p1

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4825
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$6102(Lcom/meizu/widget/StaggeredGridView;F)F

    .line 4826
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4827
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4828
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 4831
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v2, 0x0

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F
    invoke-static {v0, v2}, Lcom/meizu/widget/StaggeredGridView;->access$6102(Lcom/meizu/widget/StaggeredGridView;F)F

    .line 4832
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    neg-int v4, p1

    move v2, v1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4833
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x2

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4834
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4835
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4836
    return-void
.end method

.method startSpringback(I)Z
    .locals 7
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    .line 4812
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v2, p1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4813
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x7

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4814
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I
    invoke-static {v0, p1}, Lcom/meizu/widget/StaggeredGridView;->access$6002(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4815
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$FlingRunnable;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4816
    const/4 v1, 0x1

    .line 4818
    :cond_0
    return v1
.end method
