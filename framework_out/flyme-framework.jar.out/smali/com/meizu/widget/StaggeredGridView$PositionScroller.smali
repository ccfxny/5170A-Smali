.class Lcom/meizu/widget/StaggeredGridView$PositionScroller;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x28


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 4475
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4476
    # getter for: Lcom/meizu/widget/StaggeredGridView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/meizu/widget/StaggeredGridView;->access$5900(Lcom/meizu/widget/StaggeredGridView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mExtraScroll:I

    .line 4477
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 4590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v12

    .line 4591
    .local v12, "listHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v14}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v2

    .line 4593
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mMode:I

    packed-switch v14, :pswitch_data_0

    .line 4665
    :cond_0
    :goto_0
    return-void

    .line 4595
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .line 4596
    .local v9, "lastViewIndex":I
    add-int v5, v2, v9

    .line 4598
    .local v5, "lastPos":I
    if-ltz v9, :cond_0

    .line 4602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4603
    .local v6, "lastSeenView":Landroid/view/View;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v15}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    if-le v14, v15, :cond_1

    .line 4605
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4609
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14, v9}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4610
    .local v7, "lastView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 4611
    .local v8, "lastViewHeight":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4612
    .local v11, "lastViewTop":I
    sub-int v10, v12, v11

    .line 4613
    .local v10, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemCount:I
    invoke-static {v14}, Lcom/meizu/widget/StaggeredGridView;->access$2900(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v5, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mExtraScroll:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4616
    .local v1, "extraScroll":I
    :goto_1
    sub-int v14, v8, v10

    add-int v13, v14, v1

    .line 4617
    .local v13, "scrollBy":I
    if-eqz v13, :cond_4

    .line 4618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mScrollDuration:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollBy(IIZ)V

    .line 4624
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mLastSeenPos:I

    .line 4625
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mTargetPos:I

    if-ge v5, v14, :cond_0

    .line 4626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4613
    .end local v1    # "extraScroll":I
    .end local v13    # "scrollBy":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v1

    goto :goto_1

    .line 4619
    .restart local v1    # "extraScroll":I
    .restart local v13    # "scrollBy":I
    :cond_4
    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mTargetPos:I

    if-ge v5, v14, :cond_2

    .line 4621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I
    invoke-static {v15}, Lcom/meizu/widget/StaggeredGridView;->access$3600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mScrollDuration:I

    move/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollBy(IIZ)V

    goto :goto_2

    .line 4632
    .end local v1    # "extraScroll":I
    .end local v5    # "lastPos":I
    .end local v6    # "lastSeenView":Landroid/view/View;
    .end local v7    # "lastView":Landroid/view/View;
    .end local v8    # "lastViewHeight":I
    .end local v9    # "lastViewIndex":I
    .end local v10    # "lastViewPixelsShowing":I
    .end local v11    # "lastViewTop":I
    .end local v13    # "scrollBy":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static/range {v16 .. v16}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4633
    .restart local v6    # "lastSeenView":Landroid/view/View;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v15}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 4634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4638
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4639
    .local v3, "firstView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 4642
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4644
    .local v4, "firstViewTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I
    invoke-static {v15}, Lcom/meizu/widget/StaggeredGridView;->access$3600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v15

    add-int v1, v14, v15

    .line 4645
    .restart local v1    # "extraScroll":I
    sub-int v13, v4, v1

    .line 4647
    .restart local v13    # "scrollBy":I
    if-eqz v13, :cond_7

    .line 4648
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mScrollDuration:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollBy(IIZ)V

    .line 4654
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mLastSeenPos:I

    .line 4656
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mTargetPos:I

    if-le v2, v14, :cond_0

    .line 4657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4649
    :cond_7
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mTargetPos:I

    if-le v2, v14, :cond_6

    .line 4651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I
    invoke-static {v15}, Lcom/meizu/widget/StaggeredGridView;->access$3600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v15

    neg-int v15, v15

    mul-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mScrollDuration:I

    move/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollBy(IIZ)V

    goto :goto_3

    .line 4593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v14}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v6

    .line 4537
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v5

    .line 4538
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 4539
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getPaddingTop()I

    move-result v9

    .line 4540
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v14}, Lcom/meizu/widget/StaggeredGridView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v15}, Lcom/meizu/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v15

    sub-int v8, v14, v15

    .line 4542
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 4543
    :cond_0
    const-string v14, "StaggeredGridView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 4548
    :cond_2
    const/16 p2, -0x1

    .line 4551
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4552
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 4553
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 4554
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    .line 4556
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_4

    .line 4557
    sub-int v10, v11, v8

    .line 4559
    :cond_4
    if-ge v13, v9, :cond_5

    .line 4560
    sub-int v10, v13, v9

    .line 4563
    :cond_5
    if-nez v10, :cond_6

    .line 4583
    :goto_0
    return-void

    .line 4567
    :cond_6
    if-ltz p2, :cond_7

    .line 4568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4569
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4570
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 4571
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4573
    .local v1, "absScroll":I
    if-gez v10, :cond_8

    add-int v14, v2, v1

    if-le v14, v8, :cond_8

    .line 4575
    const/4 v14, 0x0

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4582
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollBy(II)V

    goto :goto_0

    .line 4576
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_8
    if-lez v10, :cond_7

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_7

    .line 4578
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method

.method start(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/16 v9, 0x28

    const/4 v8, -0x1

    .line 4480
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->stop()V

    .line 4482
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v6}, Lcom/meizu/widget/StaggeredGridView;->access$400(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mSync:Z
    invoke-static {v6}, Lcom/meizu/widget/StaggeredGridView;->access$3300(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4484
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    new-instance v7, Lcom/meizu/widget/StaggeredGridView$PositionScroller$1;

    invoke-direct {v7, p0, p1}, Lcom/meizu/widget/StaggeredGridView$PositionScroller$1;-><init>(Lcom/meizu/widget/StaggeredGridView$PositionScroller;I)V

    iput-object v7, v6, Lcom/meizu/widget/StaggeredGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 4490
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v6}, Lcom/meizu/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 4491
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_1

    .line 4492
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v6, v6, Lcom/meizu/widget/StaggeredGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4529
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_0
    return-void

    .line 4497
    :cond_2
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v6}, Lcom/meizu/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 4498
    .local v0, "childCount":I
    if-eqz v0, :cond_1

    .line 4503
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v6}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v2

    .line 4504
    .local v2, "firstPos":I
    add-int v6, v2, v0

    add-int/lit8 v4, v6, -0x1

    .line 4507
    .local v4, "lastPos":I
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v7}, Lcom/meizu/widget/StaggeredGridView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4508
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_3

    .line 4509
    sub-int v6, v2, v1

    add-int/lit8 v5, v6, 0x1

    .line 4510
    .local v5, "viewTravelCount":I
    const/4 v6, 0x2

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mMode:I

    .line 4519
    :goto_1
    if-lez v5, :cond_5

    .line 4520
    div-int v6, v9, v5

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mScrollDuration:I

    .line 4524
    :goto_2
    iput v1, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mTargetPos:I

    .line 4525
    iput v8, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mBoundPos:I

    .line 4526
    iput v8, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mLastSeenPos:I

    .line 4528
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v6, p0}, Lcom/meizu/widget/StaggeredGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4511
    .end local v5    # "viewTravelCount":I
    :cond_3
    if-le v1, v4, :cond_4

    .line 4512
    sub-int v6, v1, v4

    add-int/lit8 v5, v6, 0x1

    .line 4513
    .restart local v5    # "viewTravelCount":I
    const/4 v6, 0x1

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mMode:I

    goto :goto_1

    .line 4515
    .end local v5    # "viewTravelCount":I
    :cond_4
    invoke-virtual {p0, v1, v8, v9}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 4522
    .restart local v5    # "viewTravelCount":I
    :cond_5
    iput v9, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method stop()V
    .locals 1

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4587
    return-void
.end method
