.class Lcom/meizu/widget/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/meizu/widget/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/DragSortListView;)V
    .locals 1

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    .line 2850
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2846
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2842
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2877
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    .line 2878
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    .line 2963
    :goto_0
    return-void

    .line 2884
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2885
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2886
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v2

    .line 2887
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getPaddingTop()I

    move-result v10

    .line 2888
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v14}, Lcom/meizu/widget/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2890
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mY:I
    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->access$600(Lcom/meizu/widget/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/meizu/widget/DragSortListView;->access$2000(Lcom/meizu/widget/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->access$400(Lcom/meizu/widget/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2891
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mY:I
    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->access$600(Lcom/meizu/widget/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I
    invoke-static {v14}, Lcom/meizu/widget/DragSortListView;->access$2000(Lcom/meizu/widget/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->access$400(Lcom/meizu/widget/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2893
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    .line 2894
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2896
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2897
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2900
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2901
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2905
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mScrollProfile:Lcom/meizu/widget/DragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->access$2300(Lcom/meizu/widget/DragSortListView;)Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mUpScrollStartYF:F
    invoke-static {v14}, Lcom/meizu/widget/DragSortListView;->access$2100(Lcom/meizu/widget/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mDragUpScrollHeight:F
    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->access$2200(Lcom/meizu/widget/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/meizu/widget/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2922
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mCurrTime:J

    .line 2923
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dt:F

    .line 2929
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    .line 2932
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    if-ltz v13, :cond_7

    .line 2933
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    .line 2934
    move v9, v3

    .line 2940
    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2941
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    add-int v11, v13, v14

    .line 2943
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2944
    move v11, v10

    .line 2948
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x1

    # setter for: Lcom/meizu/widget/DragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/meizu/widget/DragSortListView;->access$2602(Lcom/meizu/widget/DragSortListView;Z)Z

    .line 2950
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/meizu/widget/DragSortListView;->setSelectionFromTop(II)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->layoutChildren()V

    .line 2952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->invalidate()V

    .line 2954
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x0

    # setter for: Lcom/meizu/widget/DragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/meizu/widget/DragSortListView;->access$2602(Lcom/meizu/widget/DragSortListView;Z)Z

    .line 2957
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x0

    # invokes: Lcom/meizu/widget/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V
    invoke-static {v13, v9, v8, v14}, Lcom/meizu/widget/DragSortListView;->access$2700(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)V

    .line 2959
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    .line 2962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/meizu/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2908
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2909
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2910
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2913
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2914
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2918
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mScrollProfile:Lcom/meizu/widget/DragSortListView$DragScrollProfile;
    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->access$2300(Lcom/meizu/widget/DragSortListView;)Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mDownScrollStartYF:F
    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->access$2400(Lcom/meizu/widget/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    # getter for: Lcom/meizu/widget/DragSortListView;->mDragDownScrollHeight:F
    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->access$2500(Lcom/meizu/widget/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/meizu/widget/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2936
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    .line 2937
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2853
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mAbort:Z

    .line 2856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    .line 2857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->tStart:J

    .line 2858
    iget-wide v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    .line 2859
    iput p1, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->scrollDir:I

    .line 2860
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2862
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2865
    if-eqz p1, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    .line 2873
    :goto_0
    return-void

    .line 2869
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
