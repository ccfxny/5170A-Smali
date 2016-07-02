.class public Lcom/android/uiautomator/core/UiDevice;
.super Ljava/lang/Object;
.source "UiDevice.java"


# static fields
.field private static final KEY_PRESS_EVENT_TIMEOUT:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sDevice:Lcom/android/uiautomator/core/UiDevice;


# instance fields
.field private mInWatcherContext:Z

.field private mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

.field private final mWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/uiautomator/core/UiWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchersTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/uiautomator/core/UiDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 68
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/UiDevice;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/uiautomator/core/UiDevice;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiDevice;-><init>()V

    sput-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 117
    :cond_0
    sget-object v0, Lcom/android/uiautomator/core/UiDevice;->sDevice:Lcom/android/uiautomator/core/UiDevice;

    return-object v0
.end method

.method private setWatcherTriggered(Ljava/lang/String;)V
    .locals 2
    .param p1, "watcherName"    # Ljava/lang/String;

    .prologue
    .line 614
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiDevice;->hasWatcherTriggered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    return-void
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->clearLastTraversedText()V

    .line 184
    return-void
.end method

.method public click(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 407
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayHeight()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    move-result v0

    goto :goto_0
.end method

.method public drag(IIIII)Z
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    .prologue
    const/4 v6, 0x1

    .line 449
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public dumpWindowHierarchy(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 761
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/QueryController;->getAccessibilityRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 764
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 766
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 767
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 768
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "local/tmp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V

    .line 772
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public freezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->freezeRotation()V

    .line 653
    return-void
.end method

.method getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UiDevice not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 3

    .prologue
    .line 391
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 393
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 394
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 395
    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 641
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRotation()I

    move-result v0

    return v0
.end method

.method public getDisplaySizeDp()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 129
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 131
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 132
    .local v4, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 133
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 135
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v5, v6

    .line 136
    .local v1, "dpx":F
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v5, v6

    .line 137
    .local v2, "dpy":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 138
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 139
    return-object v4
.end method

.method public getDisplayWidth()I
    .locals 3

    .prologue
    .line 377
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 379
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 380
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 381
    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/QueryController;->getLastTraversedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 153
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnyWatcherTriggered()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 605
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 606
    iget-object v1, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasWatcherTriggered(Ljava/lang/String;)Z
    .locals 2
    .param p1, "watcherName"    # Ljava/lang/String;

    .prologue
    .line 593
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initialize(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 0
    .param p1, "uiAutomatorBridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/uiautomator/core/UiDevice;->mUiAutomationBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 75
    return-void
.end method

.method isInWatcherContext()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    return v0
.end method

.method public isNaturalOrientation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 627
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 629
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRotation()I

    move-result v0

    .line 630
    .local v0, "ret":I
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 737
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public openNotification()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 355
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->openNotification()Z

    move-result v0

    return v0
.end method

.method public openQuickSettings()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 367
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->openQuickSettings()Z

    move-result v0

    return v0
.end method

.method public pressBack()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 205
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 207
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v3, 0x800

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressDPadCenter()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 242
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadDown()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 252
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadLeft()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 272
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadRight()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 282
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadUp()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 262
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDelete()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 292
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressEnter()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 302
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressHome()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 218
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 220
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v3, 0x800

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 313
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 315
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(II)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .prologue
    .line 328
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 330
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressMenu()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 192
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 194
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    const/16 v1, 0x52

    const/16 v3, 0x800

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressRecentApps()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 343
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->toggleRecentApps()Z

    move-result v0

    return v0
.end method

.method public pressSearch()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 232
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public registerWatcher(Ljava/lang/String;Lcom/android/uiautomator/core/UiWatcher;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "watcher"    # Lcom/android/uiautomator/core/UiWatcher;

    .prologue
    .line 519
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 520
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register new watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method public removeWatcher(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 535
    iget-boolean v0, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove a watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-void
.end method

.method public resetWatcherTriggers()V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 579
    return-void
.end method

.method public runWatchers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 547
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 548
    iget-boolean v4, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    if-eqz v4, :cond_1

    .line 567
    :cond_0
    return-void

    .line 552
    :cond_1
    iget-object v4, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 553
    .local v3, "watcherName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/uiautomator/core/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/uiautomator/core/UiWatcher;

    .line 554
    .local v2, "watcher":Lcom/android/uiautomator/core/UiWatcher;
    if-eqz v2, :cond_2

    .line 556
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    .line 557
    invoke-interface {v2}, Lcom/android/uiautomator/core/UiWatcher;->checkForCondition()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 558
    invoke-direct {p0, v3}, Lcom/android/uiautomator/core/UiDevice;->setWatcherTriggered(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_3
    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceuting watcher: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iput-boolean v7, p0, Lcom/android/uiautomator/core/UiDevice;->mInWatcherContext:Z

    throw v4
.end method

.method public setCompressedLayoutHeirarchy(Z)V
    .locals 1
    .param p1, "compressed"    # Z

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setCompressedLayoutHierarchy(Z)V

    .line 105
    return-void
.end method

.method public setOrientationLeft()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationLeft()V

    .line 678
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 679
    return-void
.end method

.method public setOrientationNatural()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 706
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationNatural()V

    .line 708
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 709
    return-void
.end method

.method public setOrientationRight()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 691
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 692
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->setRotationRight()V

    .line 693
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle()V

    .line 694
    return-void
.end method

.method public sleep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 749
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 750
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->sleepDevice()Z

    .line 751
    return-void
.end method

.method public swipe(IIIII)Z
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    .prologue
    .line 428
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v0

    return v0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 3
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    .prologue
    .line 464
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->swipe([Landroid/graphics/Point;I)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;)Z
    .locals 2
    .param p1, "storePath"    # Ljava/io/File;

    .prologue
    .line 832
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 833
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x5a

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/uiautomator/core/UiDevice;->takeScreenshot(Ljava/io/File;FI)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;FI)Z
    .locals 3
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "scale"    # F
    .param p3, "quality"    # I

    .prologue
    .line 848
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 849
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->takeScreenshot(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public unfreezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 662
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->unfreezeRotation()V

    .line 664
    return-void
.end method

.method public waitForIdle()V
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 475
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForIdleTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiDevice;->waitForIdle(J)V

    .line 476
    return-void
.end method

.method public waitForIdle(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 484
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    .line 486
    return-void
.end method

.method public waitForWindowUpdate(Ljava/lang/String;J)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 789
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 790
    if-eqz p1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 818
    :goto_0
    return v3

    .line 795
    :cond_0
    new-instance v2, Lcom/android/uiautomator/core/UiDevice$1;

    invoke-direct {v2, p0}, Lcom/android/uiautomator/core/UiDevice$1;-><init>(Lcom/android/uiautomator/core/UiDevice;)V

    .line 800
    .local v2, "emptyRunnable":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/uiautomator/core/UiDevice$2;

    invoke-direct {v0, p0, p1}, Lcom/android/uiautomator/core/UiDevice$2;-><init>(Lcom/android/uiautomator/core/UiDevice;Ljava/lang/String;)V

    .line 810
    .local v0, "checkWindowUpdate":Landroid/app/UiAutomation$AccessibilityEventFilter;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v5

    invoke-virtual {v5, v2, v0, p2, p3}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v4

    .line 818
    goto :goto_0

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 814
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/uiautomator/core/UiDevice;->LOG_TAG:Ljava/lang/String;

    const-string v5, "waitForWindowUpdate: general exception from bridge"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 721
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/InteractionController;->wakeDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 727
    :cond_0
    return-void
.end method
