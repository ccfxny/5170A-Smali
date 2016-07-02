.class Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;
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
    name = "WaitForAllEventPredicate"
.end annotation


# instance fields
.field mMask:I

.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;I)V
    .locals 0
    .param p2, "mask"    # I

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->this$0:Lcom/android/uiautomator/core/InteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 126
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 136
    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
