.class Lcom/android/uiautomator/core/InteractionController$2;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;II)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    # invokes: Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/uiautomator/core/InteractionController;->access$100(Lcom/android/uiautomator/core/InteractionController;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 277
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    # invokes: Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/uiautomator/core/InteractionController;->access$200(Lcom/android/uiautomator/core/InteractionController;II)Z

    .line 279
    :cond_0
    return-void
.end method
