.class Lcom/android/uiautomator/core/InteractionController$3;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$downX:I

.field final synthetic val$downY:I

.field final synthetic val$steps:I

.field final synthetic val$upX:I

.field final synthetic val$upY:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;IIIII)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$3;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$downX:I

    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$downY:I

    iput p4, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$upX:I

    iput p5, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$upY:I

    iput p6, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$steps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$3;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$downX:I

    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$downY:I

    iget v3, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$upX:I

    iget v4, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$upY:I

    iget v5, p0, Lcom/android/uiautomator/core/InteractionController$3;->val$steps:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    .line 357
    return-void
.end method
