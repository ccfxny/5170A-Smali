.class Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
.super Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 3729
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/widget/StaggeredGridView;
    .param p2, "x1"    # Lcom/meizu/widget/StaggeredGridView$1;

    .prologue
    .line 3729
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3731
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v5

    .line 3732
    .local v5, "motionPosition":I
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v7, v8}, Lcom/meizu/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3733
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3734
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v4

    .line 3735
    .local v4, "longPressPosition":I
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3737
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 3738
    .local v1, "handled":Z
    const/4 v6, 0x1

    .line 3739
    .local v6, "perforLongPress":Z
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v7, v7, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 3741
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v7

    instance-of v7, v7, Lcom/meizu/widget/StaggeredGridView$DragItemFilter;

    if-eqz v7, :cond_0

    .line 3742
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v7

    check-cast v7, Lcom/meizu/widget/StaggeredGridView$DragItemFilter;

    invoke-interface {v7, v0, v4, v2, v3}, Lcom/meizu/widget/StaggeredGridView$DragItemFilter;->isItemDragable(Landroid/view/View;IJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3744
    const/4 v6, 0x0

    .line 3748
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->sameWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$400(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3749
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v7, v0, v4, v2, v3}, Lcom/meizu/widget/StaggeredGridView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3751
    :cond_1
    if-eqz v1, :cond_3

    .line 3752
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v8, 0x6

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v7, v8}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 3753
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v7, v9}, Lcom/meizu/widget/StaggeredGridView;->setPressed(Z)V

    .line 3754
    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 3759
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    .end local v6    # "perforLongPress":Z
    :cond_2
    :goto_0
    return-void

    .line 3756
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    .restart local v6    # "perforLongPress":Z
    :cond_3
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v8, 0x5

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v7, v8}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    goto :goto_0
.end method
