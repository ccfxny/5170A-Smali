.class Lcom/meizu/widget/SystemLockView$2;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/meizu/widget/SystemLockView;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$2;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 586
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 587
    .local v0, "value":F
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView$2;->this$0:Lcom/meizu/widget/SystemLockView;

    # getter for: Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/meizu/widget/SystemLockView;->access$1300(Lcom/meizu/widget/SystemLockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 588
    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView$2;->this$0:Lcom/meizu/widget/SystemLockView;

    # getter for: Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/meizu/widget/SystemLockView;->access$1300(Lcom/meizu/widget/SystemLockView;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 590
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView$2;->this$0:Lcom/meizu/widget/SystemLockView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 592
    :cond_0
    return-void
.end method
