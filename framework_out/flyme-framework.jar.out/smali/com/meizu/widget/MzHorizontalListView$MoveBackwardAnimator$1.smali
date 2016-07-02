.class Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 445
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v4, v4, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v4}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v4

    aget-object v2, v3, v4

    .line 448
    .local v2, "tempView":Landroid/view/View;
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget v0, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mStart:I

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    if-gt v0, v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v5, v5, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;
    invoke-static {v5}, Lcom/meizu/widget/MzHorizontalListView;->access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    .line 450
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;

    .line 451
    .local v1, "tempListener":Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->setPosition(I)V

    .line 453
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mOnItemPositionChangeListener:Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1800(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mOnItemPositionChangeListener:Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1800(Lcom/meizu/widget/MzHorizontalListView;)Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v4, v4, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;
    invoke-static {v4}, Lcom/meizu/widget/MzHorizontalListView;->access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;

    move-result-object v4

    aget-object v4, v4, v0

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v3, v4, v0, v5}, Lcom/meizu/widget/MzHorizontalListView$OnItemPositionChangeListener;->onItemPositionChange(Landroid/view/View;II)V

    .line 448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "tempListener":Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget v4, v4, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    aput-object v2, v3, v4

    .line 459
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    # getter for: Lcom/meizu/widget/MzHorizontalListView;->mChildren:[Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/widget/MzHorizontalListView;->access$1700(Lcom/meizu/widget/MzHorizontalListView;)[Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget v4, v4, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;

    .line 460
    .restart local v1    # "tempListener":Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    invoke-virtual {v1, v3}, Lcom/meizu/widget/MzHorizontalListView$InnerListenerImpl;->setPosition(I)V

    .line 461
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget v4, v4, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v3, v4}, Lcom/meizu/widget/MzHorizontalListView;->access$1102(Lcom/meizu/widget/MzHorizontalListView;I)I

    .line 462
    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;->this$1:Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;

    iget-object v3, v3, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const/4 v4, 0x0

    # setter for: Lcom/meizu/widget/MzHorizontalListView;->mIsAnimating:Z
    invoke-static {v3, v4}, Lcom/meizu/widget/MzHorizontalListView;->access$402(Lcom/meizu/widget/MzHorizontalListView;Z)Z

    .line 463
    return-void
.end method
