.class Lcom/meizu/widget/StaggeredGridView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView;->getFadeOutAnimationsForStaleViews()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$5;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput-object p2, p0, Lcom/meizu/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1559
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1560
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$5;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$800(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$5;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->removeViewInLayout(Landroid/view/View;)V

    .line 1566
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1567
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1568
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1569
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$5;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$900(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1570
    return-void

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$5;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
