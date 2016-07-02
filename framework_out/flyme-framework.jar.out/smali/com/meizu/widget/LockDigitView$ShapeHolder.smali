.class Lcom/meizu/widget/LockDigitView$ShapeHolder;
.super Ljava/lang/Object;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/LockDigitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShapeHolder"
.end annotation


# instance fields
.field private alpha:F

.field private scale:F

.field final synthetic this$0:Lcom/meizu/widget/LockDigitView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/LockDigitView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 889
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->this$0:Lcom/meizu/widget/LockDigitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->scale:F

    .line 871
    iput v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->alpha:F

    .line 890
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->alpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->scale:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 882
    iput p1, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->alpha:F

    .line 883
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 874
    iput p1, p0, Lcom/meizu/widget/LockDigitView$ShapeHolder;->scale:F

    .line 875
    return-void
.end method
