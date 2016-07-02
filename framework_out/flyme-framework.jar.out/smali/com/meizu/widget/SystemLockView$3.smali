.class Lcom/meizu/widget/SystemLockView$3;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/SystemLockView;->setTipAnim(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/SystemLockView;

.field final synthetic val$animTV:Landroid/widget/TextView;

.field final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/widget/SystemLockView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$3;->this$0:Lcom/meizu/widget/SystemLockView;

    iput-object p2, p0, Lcom/meizu/widget/SystemLockView$3;->val$animTV:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/meizu/widget/SystemLockView$3;->val$tip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$3;->val$animTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView$3;->val$tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView$3;->val$animTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView$3;->val$tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 603
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 598
    return-void
.end method
