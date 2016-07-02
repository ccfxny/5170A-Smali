.class Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/InteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForAnyEventPredicate"
.end annotation


# instance fields
.field mMask:I

.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;I)V
    .locals 0
    .param p2, "mask"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;->this$0:Lcom/android/uiautomator/core/InteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;->mMask:I

    .line 78
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;->mMask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
