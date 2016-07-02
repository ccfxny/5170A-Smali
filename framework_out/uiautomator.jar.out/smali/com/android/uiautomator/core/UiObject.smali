.class public Lcom/android/uiautomator/core/UiObject;
.super Ljava/lang/Object;
.source "UiObject.java"


# static fields
.field protected static final FINGER_TOUCH_HALF_WIDTH:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final SWIPE_MARGIN_LIMIT:I = 0x5

.field protected static final WAIT_FOR_EVENT_TMEOUT:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_SELECTOR_POLL:J = 0x3e8L

.field protected static final WAIT_FOR_SELECTOR_TIMEOUT:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_WINDOW_TMEOUT:J = 0x157cL


# instance fields
.field private final mConfig:Lcom/android/uiautomator/core/Configurator;

.field private final mSelector:Lcom/android/uiautomator/core/UiSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    .line 78
    iput-object p1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    .line 79
    return-void
.end method

.method private getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 370
    move-object v0, p1

    .line 371
    .local v0, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 377
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 336
    if-nez p1, :cond_1

    .line 337
    const/4 v1, 0x0

    .line 357
    :cond_0
    :goto_0
    return-object v1

    .line 341
    :cond_1
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiDevice;->getDisplayWidth()I

    move-result v4

    .line 342
    .local v4, "w":I
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiDevice;->getDisplayHeight()I

    move-result v0

    .line 343
    .local v0, "h":I
    invoke-static {p1, v4, v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 346
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;->getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 347
    .local v3, "scrollableParentNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_0

    .line 353
    invoke-static {v3, v4, v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 356
    .local v2, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 903
    if-nez p1, :cond_0

    .line 904
    const-string v0, ""

    .line 905
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearTextField()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 619
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 621
    iget-object v3, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v3}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 622
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 623
    new-instance v3, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 625
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 626
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    .line 628
    new-instance v2, Lcom/android/uiautomator/core/UiObject;

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v3}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    const-string v4, "Select all"

    invoke-virtual {v3, v4}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 629
    .local v2, "selectAll":Lcom/android/uiautomator/core/UiObject;
    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiObject;->click()Z

    .line 632
    :cond_1
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 634
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v3

    const/16 v4, 0x43

    invoke-virtual {v3, v4, v6}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 635
    return-void
.end method

.method public click()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 390
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 391
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 392
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 395
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v5}, Lcom/android/uiautomator/core/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->clickAndSync(IIJ)Z

    move-result v2

    return v2
.end method

.method public clickAndWaitForNewWindow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 410
    const-wide/16 v0, 0x157c

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->clickAndWaitForNewWindow(J)Z

    move-result v0

    return v0
.end method

.method public clickAndWaitForNewWindow(J)Z
    .locals 9
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 430
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 431
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 432
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 435
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v5}, Lcom/android/uiautomator/core/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->clickAndWaitForNewWindow(IIJ)Z

    move-result v2

    return v2
.end method

.method public clickBottomRight()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 482
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 483
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 484
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 487
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    move-result v2

    return v2
.end method

.method public clickTopLeft()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 448
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 449
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 450
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 453
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    move-result v2

    return v2
.end method

.method public dragTo(III)Z
    .locals 8
    .param p1, "destX"    # I
    .param p2, "destY"    # I
    .param p3, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 217
    .local v7, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public dragTo(Lcom/android/uiautomator/core/UiObject;I)Z
    .locals 9
    .param p1, "destObj"    # Lcom/android/uiautomator/core/UiObject;
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 197
    .local v8, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 198
    .local v7, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    const/4 v6, 0x1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 898
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 899
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    move-result v0

    return v0
.end method

.method protected findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "timeout"    # J

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 166
    .local v4, "startMills":J
    const-wide/16 v0, 0x0

    .line 167
    .local v0, "currentMills":J
    :cond_0
    :goto_0
    cmp-long v3, v0, p1

    if-gtz v3, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_2

    .line 180
    :cond_1
    return-object v2

    .line 173
    :cond_2
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiDevice;->runWatchers()V

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 176
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    .line 177
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 824
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 825
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 826
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 827
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 830
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 832
    return-object v1
.end method

.method public getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method public getChildCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 149
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 550
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 551
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 552
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 553
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "retVal":Ljava/lang/String;
    sget-object v2, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getClassName() = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-object v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 568
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 569
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 570
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 571
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 136
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->fromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 789
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 790
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 791
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    return-object v0
.end method

.method public final getSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 90
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 532
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 533
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 534
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 535
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "retVal":Ljava/lang/String;
    sget-object v2, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getText() = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-object v1
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 808
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 809
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 810
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 811
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public isCheckable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 677
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 678
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 679
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    return v1
.end method

.method public isChecked()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 645
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 646
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 647
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    return v1
.end method

.method public isClickable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 708
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 709
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 710
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 711
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    return v1
.end method

.method public isEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 692
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 693
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 694
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 695
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public isFocusable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 740
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 741
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 742
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 743
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    return v1
.end method

.method public isFocused()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 724
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 725
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 726
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 727
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    return v1
.end method

.method public isLongClickable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 772
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 773
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 774
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 775
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 777
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    return v1
.end method

.method public isScrollable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 756
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 757
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 758
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 759
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 761
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    return v1
.end method

.method public isSelected()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 660
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 662
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 663
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    return v1
.end method

.method public longClick()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 498
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 499
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 500
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 501
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 504
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    move-result v2

    return v2
.end method

.method public longClickBottomRight()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 464
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 465
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 466
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 467
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 470
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    move-result v2

    return v2
.end method

.method public longClickTopLeft()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 516
    iget-object v2, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 517
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 518
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 521
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    move-result v2

    return v2
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 1
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/InteractionController;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    return v0
.end method

.method public performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .locals 16
    .param p1, "startPoint1"    # Landroid/graphics/Point;
    .param p2, "startPoint2"    # Landroid/graphics/Point;
    .param p3, "endPoint1"    # Landroid/graphics/Point;
    .param p4, "endPoint2"    # Landroid/graphics/Point;
    .param p5, "steps"    # I

    .prologue
    .line 1000
    if-nez p5, :cond_0

    .line 1001
    const/16 p5, 0x1

    .line 1003
    :cond_0
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    div-int v14, v14, p5

    int-to-float v10, v14

    .line 1004
    .local v10, "stepX1":F
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    div-int v14, v14, p5

    int-to-float v12, v14

    .line 1005
    .local v12, "stepY1":F
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    div-int v14, v14, p5

    int-to-float v11, v14

    .line 1006
    .local v11, "stepX2":F
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    div-int v14, v14, p5

    int-to-float v13, v14

    .line 1009
    .local v13, "stepY2":F
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 1010
    .local v1, "eventX1":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 1011
    .local v3, "eventY1":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 1012
    .local v2, "eventX2":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 1015
    .local v4, "eventY2":I
    add-int/lit8 v14, p5, 0x2

    new-array v8, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 1016
    .local v8, "points1":[Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v14, p5, 0x2

    new-array v9, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 1019
    .local v9, "points2":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v14, p5, 0x1

    if-ge v5, v14, :cond_1

    .line 1020
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1021
    .local v6, "p1":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v14, v1

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1022
    int-to-float v14, v3

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1023
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1024
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1025
    aput-object v6, v8, v5

    .line 1027
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1028
    .local v7, "p2":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v14, v2

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1029
    int-to-float v14, v4

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1030
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1031
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1032
    aput-object v7, v9, v5

    .line 1034
    int-to-float v14, v1

    add-float/2addr v14, v10

    float-to-int v1, v14

    .line 1035
    int-to-float v14, v3

    add-float/2addr v14, v12

    float-to-int v3, v14

    .line 1036
    int-to-float v14, v2

    add-float/2addr v14, v11

    float-to-int v2, v14

    .line 1037
    int-to-float v14, v4

    add-float/2addr v14, v13

    float-to-int v4, v14

    .line 1019
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1041
    .end local v6    # "p1":Landroid/view/MotionEvent$PointerCoords;
    .end local v7    # "p2":Landroid/view/MotionEvent$PointerCoords;
    :cond_1
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1042
    .restart local v6    # "p1":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1043
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1044
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1045
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1046
    add-int/lit8 v14, p5, 0x1

    aput-object v6, v8, v14

    .line 1048
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1049
    .restart local v7    # "p2":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1050
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1051
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1052
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1053
    add-int/lit8 v14, p5, 0x1

    aput-object v7, v9, v14

    .line 1055
    const/4 v14, 0x2

    new-array v14, v14, [[Landroid/view/MotionEvent$PointerCoords;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/uiautomator/core/UiObject;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v14

    return v14
.end method

.method public pinchIn(II)Z
    .locals 12
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x64

    .line 960
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 961
    :cond_0
    :goto_0
    int-to-float v0, p1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v7, v0, v5

    .line 963
    .local v7, "percentage":F
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 964
    .local v6, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_2

    .line 965
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    .end local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "percentage":F
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    .line 968
    .restart local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "percentage":F
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v8

    .line 969
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v5, 0x28

    if-gt v0, v5, :cond_3

    .line 970
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Object width is too small for operation"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v1, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 974
    .local v1, "startPoint1":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v2, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 977
    .local v2, "startPoint2":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 978
    .local v3, "endPoint1":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v4, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .local v4, "endPoint2":Landroid/graphics/Point;
    move-object v0, p0

    move v5, p2

    .line 980
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v0

    return v0
.end method

.method public pinchOut(II)Z
    .locals 12
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x64

    .line 922
    if-gez p1, :cond_1

    const/4 p1, 0x1

    .line 923
    :cond_0
    :goto_0
    int-to-float v0, p1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v7, v0, v5

    .line 925
    .local v7, "percentage":F
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 926
    .local v6, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_2

    .line 927
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    .end local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "percentage":F
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    .line 930
    .restart local v6    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "percentage":F
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v8

    .line 931
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v5, 0x28

    if-gt v0, v5, :cond_3

    .line 932
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Object width is too small for operation"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v1, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 936
    .local v1, "startPoint1":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v2, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 939
    .local v2, "startPoint2":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 941
    .local v3, "endPoint1":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v4, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    .local v4, "endPoint2":Landroid/graphics/Point;
    move-object v0, p0

    move v5, p2

    .line 944
    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 595
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->clearTextField()V

    .line 596
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/InteractionController;->sendText(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public swipeDown(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 268
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 270
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public swipeLeft(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 294
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 296
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 298
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public swipeRight(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 321
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 323
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public swipeUp(I)Z
    .locals 7
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 238
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 240
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public waitForExists(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 847
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 848
    invoke-virtual {p0, p1, p2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 851
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public waitUntilGone(J)Z
    .locals 11
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 873
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 875
    .local v2, "startMills":J
    const-wide/16 v0, 0x0

    .line 876
    .local v0, "currentMills":J
    :cond_0
    :goto_0
    cmp-long v6, v0, p1

    if-gtz v6, :cond_2

    .line 877
    invoke-virtual {p0, v8, v9}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    if-nez v6, :cond_1

    .line 883
    :goto_1
    return v4

    .line 879
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 880
    cmp-long v6, p1, v8

    if-lez v6, :cond_0

    .line 881
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    move v4, v5

    .line 883
    goto :goto_1
.end method
