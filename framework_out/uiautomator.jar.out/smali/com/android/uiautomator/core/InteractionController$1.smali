.class Lcom/android/uiautomator/core/InteractionController$1;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$keyCode:I

.field final synthetic val$metaState:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;II)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 192
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 195
    .local v3, "downEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    # invokes: Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z
    invoke-static {v2, v3}, Lcom/android/uiautomator/core/InteractionController;->access$000(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x101

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 199
    .local v7, "upEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    # invokes: Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z
    invoke-static {v2, v7}, Lcom/android/uiautomator/core/InteractionController;->access$000(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z

    .line 201
    .end local v7    # "upEvent":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method
