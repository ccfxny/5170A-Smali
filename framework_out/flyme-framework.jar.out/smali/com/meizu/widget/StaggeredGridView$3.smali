.class Lcom/meizu/widget/StaggeredGridView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView;->populate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$3;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1349
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1350
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$3;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$602(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 1351
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$3;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 1352
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1344
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1345
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$3;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x1

    # setter for: Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$602(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 1346
    return-void
.end method
