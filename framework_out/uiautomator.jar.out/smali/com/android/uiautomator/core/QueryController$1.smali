.class Lcom/android/uiautomator/core/QueryController$1;
.super Ljava/lang/Object;
.source "QueryController.java"

# interfaces
.implements Landroid/app/UiAutomation$OnAccessibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/QueryController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/QueryController;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    # getter for: Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/uiautomator/core/QueryController;->access$000(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    # getter for: Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/uiautomator/core/QueryController;->access$000(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 65
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/uiautomator/core/QueryController;->access$102(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/uiautomator/core/QueryController;->access$202(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    :cond_1
    # getter for: Lcom/android/uiautomator/core/QueryController;->DEBUG:Z
    invoke-static {}, Lcom/android/uiautomator/core/QueryController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    # getter for: Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/uiautomator/core/QueryController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last text selection reported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    # getter for: Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/uiautomator/core/QueryController;->access$200(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x20000 -> :sswitch_1
    .end sparse-switch
.end method
