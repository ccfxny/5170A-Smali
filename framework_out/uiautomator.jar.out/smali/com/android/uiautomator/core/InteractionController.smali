.class Lcom/android/uiautomator/core/InteractionController;
.super Ljava/lang/Object;
.source "InteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;,
        Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;,
        Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MOTION_EVENT_INJECTION_DELAY_MILLIS:I = 0x5

.field private static final REGULAR_CLICK_LENGTH:J = 0x64L


# instance fields
.field private mDownTime:J

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 68
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p1, "x1"    # Landroid/view/InputEvent;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    return v0
.end method

.method private clickRunnable(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 272
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$2;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    return-object v0
.end method

.method private getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;I)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "x":I
    :goto_0
    if-lez v1, :cond_1

    .line 402
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 403
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 406
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_1
    return-object v0

    .line 401
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 406
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getPointerAction(II)I
    .locals 1
    .param p1, "motionEnvent"    # I
    .param p2, "index"    # I

    .prologue
    .line 659
    shl-int/lit8 v0, p2, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method private injectEventSync(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v0

    return v0
.end method

.method private recycleAccessibilityEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 411
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 412
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 413
    return-void
.end method

.method private runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeout"    # J

    .prologue
    const/4 v1, 0x0

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "runAndwaitForEvent timedout waiting for events"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exception from executeCommandAndWaitForAccessibilityEvent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private touchDown(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 305
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchDown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 309
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v4, 0x0

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 311
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 312
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method private touchMove(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 328
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchMove ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 332
    .local v2, "eventTime":J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    const/4 v4, 0x2

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 334
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 335
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method private touchUp(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    .line 316
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touchUp ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 320
    .local v2, "eventTime":J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    int-to-float v5, p1

    int-to-float v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 322
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 323
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 324
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clickAndSync(IIJ)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    const-string v3, "clickAndSync(%d, %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "logString":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v3

    new-instance v4, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    const/16 v5, 0x804

    invoke-direct {v4, p0, v5}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public clickAndWaitForNewWindow(IIJ)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    const-string v3, "clickAndWaitForNewWindow(%d, %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "logString":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v3

    new-instance v4, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;

    const/16 v5, 0x820

    invoke-direct {v4, p0, v5}, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public clickNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 216
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeRotation()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 606
    return-void
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public longTapNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longTapNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openNotification()Z
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public openQuickSettings()Z
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 24
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 687
    const/16 v22, 0x1

    .line 688
    .local v22, "ret":Z
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 689
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must provide coordinates for at least 2 pointers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 693
    :cond_0
    const/16 v20, 0x0

    .line 694
    .local v20, "maxSteps":I
    const/16 v23, 0x0

    .local v23, "x":I
    :goto_0
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_2

    .line 695
    aget-object v4, p1, v23

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_1

    aget-object v4, p1, v23

    array-length v0, v4

    move/from16 v20, v0

    .line 694
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 698
    :cond_2
    move-object/from16 v0, p1

    array-length v4, v0

    new-array v8, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 699
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v0, p1

    array-length v4, v0

    new-array v9, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 700
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v23, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_3

    .line 701
    new-instance v21, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v21 .. v21}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 702
    .local v21, "prop":Landroid/view/MotionEvent$PointerProperties;
    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 703
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 704
    aput-object v21, v8, v23

    .line 707
    aget-object v4, p1, v23

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v9, v23

    .line 700
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 711
    .end local v21    # "prop":Landroid/view/MotionEvent$PointerProperties;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 713
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 715
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v4

    and-int v22, v22, v4

    .line 717
    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_4

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    move-result v6

    add-int/lit8 v7, v23, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v4

    and-int v22, v22, v4

    .line 717
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 725
    :cond_4
    const/16 v19, 0x1

    .local v19, "i":I
    :goto_3
    add-int/lit8 v4, v20, -0x1

    move/from16 v0, v19

    if-ge v0, v4, :cond_7

    .line 727
    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_6

    .line 729
    aget-object v4, p1, v23

    array-length v4, v4

    move/from16 v0, v19

    if-le v4, v0, :cond_5

    .line 730
    aget-object v4, p1, v23

    aget-object v4, v4, v19

    aput-object v4, v9, v23

    .line 727
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 732
    :cond_5
    aget-object v4, p1, v23

    aget-object v5, p1, v23

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v9, v23

    goto :goto_5

    .line 735
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    move-object/from16 v0, p1

    array-length v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 739
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v4

    and-int v22, v22, v4

    .line 740
    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 725
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 744
    :cond_7
    const/16 v23, 0x0

    :goto_6
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_8

    .line 745
    aget-object v4, p1, v23

    aget-object v5, p1, v23

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v9, v23

    .line 744
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 748
    :cond_8
    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, p1

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    move-result v6

    add-int/lit8 v7, v23, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 752
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v4

    and-int v22, v22, v4

    .line 748
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 755
    :cond_9
    sget-object v4, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v9, v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v4

    and-int v22, v22, v4

    .line 760
    return v22
.end method

.method public scrollSwipe(IIIII)Z
    .locals 10
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .prologue
    .line 350
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollSwipe ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController$3;-><init>(Lcom/android/uiautomator/core/InteractionController;IIIII)V

    .line 362
    .local v0, "command":Ljava/lang/Runnable;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v8, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityEvent;>;"
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;

    const/16 v2, 0x1000

    invoke-direct {v1, p0, v2, v8}, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;ILjava/util/List;)V

    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getScrollAcknowledgmentTimeout()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    .line 367
    const/16 v1, 0x1000

    invoke-direct {p0, v8, v1}, Lcom/android/uiautomator/core/InteractionController;->getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 370
    .local v7, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v7, :cond_0

    .line 372
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 373
    const/4 v1, 0x0

    .line 397
    :goto_0
    return v1

    .line 377
    :cond_0
    const/4 v9, 0x0

    .line 378
    .local v9, "foundEnd":Z
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 379
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_1
    const/4 v9, 0x1

    .line 381
    :goto_1
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollSwipe reached scroll end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    :goto_2
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 397
    if-nez v9, :cond_a

    const/4 v1, 0x1

    goto :goto_0

    .line 379
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 382
    :cond_4
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 384
    if-ne p1, p3, :cond_7

    .line 386
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollY()I

    move-result v2

    if-ne v1, v2, :cond_6

    :cond_5
    const/4 v9, 0x1

    .line 388
    :goto_3
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vertical scrollSwipe reached scroll end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 386
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 389
    :cond_7
    if-ne p2, p4, :cond_2

    .line 391
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollX()I

    move-result v2

    if-ne v1, v2, :cond_9

    :cond_8
    const/4 v9, 0x1

    .line 393
    :goto_4
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Horizontal scrollSwipe reached scroll end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 391
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 397
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public sendKey(II)Z
    .locals 20
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .prologue
    .line 544
    sget-boolean v2, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 545
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendKey ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 549
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 552
    .local v3, "downEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x101

    move-wide v8, v4

    move-wide v10, v4

    move/from16 v13, p1

    move/from16 v15, p2

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 556
    .local v7, "upEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    const/4 v2, 0x1

    .line 560
    .end local v7    # "upEvent":Landroid/view/KeyEvent;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendKeyAndWaitForEvent(IIIJ)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I
    .param p3, "eventType"    # I
    .param p4, "timeout"    # J

    .prologue
    .line 188
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$1;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    .line 204
    .local v0, "command":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    invoke-direct {v1, p0, p3}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 518
    sget-boolean v9, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 519
    sget-object v9, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendText ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iget-object v9, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 524
    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_2

    .line 525
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/uiautomator/core/Configurator;->getKeyInjectionDelay()J

    move-result-wide v6

    .line 526
    .local v6, "keyDelay":J
    move-object v0, v3

    .local v0, "arr$":[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 532
    .local v2, "event2":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v2, v10, v11, v8}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 534
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 540
    .end local v0    # "arr$":[Landroid/view/KeyEvent;
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "keyDelay":J
    :goto_1
    return v8

    .line 537
    .restart local v0    # "arr$":[Landroid/view/KeyEvent;
    .restart local v1    # "event":Landroid/view/KeyEvent;
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "keyDelay":J
    :cond_1
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "arr$":[Landroid/view/KeyEvent;
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "keyDelay":J
    :cond_2
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public setRotationLeft()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 585
    return-void
.end method

.method public setRotationNatural()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 597
    return-void
.end method

.method public setRotationRight()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 573
    return-void
.end method

.method public sleepDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 640
    const/4 v0, 0x1

    .line 642
    :cond_0
    return v0
.end method

.method public swipe(IIIII)Z
    .locals 7
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .prologue
    .line 425
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public swipe(IIIIIZ)Z
    .locals 14
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I
    .param p6, "drag"    # Z

    .prologue
    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, "ret":Z
    move/from16 v4, p5

    .line 441
    .local v4, "swipeSteps":I
    const-wide/16 v6, 0x0

    .line 442
    .local v6, "xStep":D
    const-wide/16 v8, 0x0

    .line 445
    .local v8, "yStep":D
    if-nez v4, :cond_0

    .line 446
    const/4 v4, 0x1

    .line 448
    :cond_0
    sub-int v5, p3, p1

    int-to-double v10, v5

    int-to-double v12, v4

    div-double v6, v10, v12

    .line 449
    sub-int v5, p4, p2

    int-to-double v10, v5

    int-to-double v12, v4

    div-double v8, v10, v12

    .line 452
    invoke-direct/range {p0 .. p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v3

    .line 453
    if-eqz p6, :cond_1

    .line 454
    iget-object v5, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 455
    :cond_1
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 456
    int-to-double v10, v2

    mul-double/2addr v10, v6

    double-to-int v5, v10

    add-int/2addr v5, p1

    int-to-double v10, v2

    mul-double/2addr v10, v8

    double-to-int v10, v10

    add-int v10, v10, p2

    invoke-direct {p0, v5, v10}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v5

    and-int/2addr v3, v5

    .line 457
    if-nez v3, :cond_4

    .line 465
    :cond_2
    if-eqz p6, :cond_3

    .line 466
    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 467
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v5

    and-int/2addr v3, v5

    .line 468
    return v3

    .line 463
    :cond_4
    const-wide/16 v10, 0x5

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 12
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    .prologue
    const/4 v8, 0x0

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "ret":Z
    move v3, p2

    .line 480
    .local v3, "swipeSteps":I
    const-wide/16 v4, 0x0

    .line 481
    .local v4, "xStep":D
    const-wide/16 v6, 0x0

    .line 484
    .local v6, "yStep":D
    if-nez p2, :cond_0

    .line 485
    const/4 p2, 0x1

    .line 488
    :cond_0
    array-length v9, p1

    if-nez v9, :cond_1

    .line 513
    :goto_0
    return v8

    .line 492
    :cond_1
    aget-object v9, p1, v8

    iget v9, v9, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v9, v8}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v1

    .line 493
    const/4 v2, 0x0

    .local v2, "seg":I
    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_4

    .line 494
    add-int/lit8 v8, v2, 0x1

    array-length v9, p1

    if-ge v8, v9, :cond_2

    .line 496
    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    int-to-double v10, p2

    div-double v4, v8, v10

    .line 497
    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 499
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 500
    aget-object v8, p1, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-double v10, v0

    mul-double/2addr v10, v4

    double-to-int v9, v10

    add-int/2addr v8, v9

    aget-object v9, p1, v2

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-double v10, v0

    mul-double/2addr v10, v6

    double-to-int v10, v10

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v8

    and-int/2addr v1, v8

    .line 502
    if-nez v1, :cond_3

    .line 493
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 508
    .restart local v0    # "i":I
    :cond_3
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 512
    .end local v0    # "i":I
    :cond_4
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v8

    and-int/2addr v1, v8

    move v8, v1

    .line 513
    goto :goto_0
.end method

.method public toggleRecentApps()Z
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public unfreezeRotation()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 615
    return-void
.end method

.method public wakeDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 626
    const/4 v0, 0x1

    .line 628
    :cond_0
    return v0
.end method
