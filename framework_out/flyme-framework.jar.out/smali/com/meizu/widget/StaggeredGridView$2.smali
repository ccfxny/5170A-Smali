.class Lcom/meizu/widget/StaggeredGridView$2;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;Lcom/meizu/widget/StaggeredGridView$PerformClick;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$2;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput-object p2, p0, Lcom/meizu/widget/StaggeredGridView$2;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/meizu/widget/StaggeredGridView$2;->val$performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$2;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x6

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$302(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 871
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$2;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 872
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$2;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/StaggeredGridView;->setPressed(Z)V

    .line 873
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$2;->this$0:Lcom/meizu/widget/StaggeredGridView;

    # getter for: Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$400(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$2;->val$performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView$PerformClick;->run()V

    .line 876
    :cond_0
    return-void
.end method
