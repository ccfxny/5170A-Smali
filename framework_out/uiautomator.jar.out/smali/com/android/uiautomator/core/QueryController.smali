.class Lcom/android/uiautomator/core/QueryController;
.super Ljava/lang/Object;
.source "QueryController.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mLastActivityName:Ljava/lang/String;

.field private mLastTraversedText:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mLogIndent:I

.field private mLogParentIndent:I

.field private mPatternCounter:I

.field private mPatternIndexer:I

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    .line 34
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/uiautomator/core/QueryController;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 2
    .param p1, "bridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    .line 45
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 51
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 52
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 58
    new-instance v0, Lcom/android/uiautomator/core/QueryController$1;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/QueryController$1;-><init>(Lcom/android/uiautomator/core/QueryController;)V

    invoke-virtual {p1, v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/uiautomator/core/QueryController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/uiautomator/core/QueryController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/uiautomator/core/QueryController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/uiautomator/core/QueryController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "subSelector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "index"    # I
    .param p4, "originalPattern"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 406
    invoke-virtual {p1, p2, p3}, Lcom/android/uiautomator/core/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 407
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 408
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    if-nez v5, :cond_1

    .line 409
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 410
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v4, p2

    .line 479
    :goto_0
    return-object v4

    .line 414
    :cond_1
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 415
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    .line 418
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 424
    move-object p1, p4

    .line 426
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 454
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 455
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 456
    .local v2, "hasNullChild":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_c

    .line 457
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 458
    .local v1, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_a

    .line 459
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "AccessibilityNodeInfo returned a null child (%d of %d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-nez v2, :cond_4

    .line 462
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "parent = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_4
    const/4 v2, 0x1

    .line 456
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    .end local v0    # "childCount":I
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "hasNullChild":Z
    .end local v3    # "i":I
    :cond_6
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 430
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_7
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 434
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 435
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 436
    if-nez p1, :cond_3

    .line 437
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error: A child selector without content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 440
    :cond_8
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 441
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 442
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 443
    if-nez p1, :cond_9

    .line 444
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error: A parent selector without content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 447
    :cond_9
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 448
    if-nez p2, :cond_3

    .line 449
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 467
    .restart local v0    # "childCount":I
    .restart local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "hasNullChild":Z
    .restart local v3    # "i":I
    :cond_a
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    if-nez v5, :cond_b

    .line 468
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 469
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Skipping invisible child: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 473
    :cond_b
    invoke-direct {p0, p1, v1, v3, p4}, Lcom/android/uiautomator/core/QueryController;->findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 475
    .local v4, "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_5

    goto/16 :goto_0

    .line 479
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12
    .param p1, "subSelector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "index"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 294
    invoke-virtual {p1, p2, p3}, Lcom/android/uiautomator/core/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 295
    sget-boolean v6, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 296
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "%s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p1, v10}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->isLeaf()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, p2

    .line 348
    :goto_0
    return-object v4

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 303
    iget v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 304
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 305
    if-nez p1, :cond_4

    .line 306
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error: A child selector without content"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 307
    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    iget v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 311
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 312
    if-nez p1, :cond_3

    .line 313
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error: A parent selector without content"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 314
    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 319
    if-nez p2, :cond_4

    move-object v4, v5

    .line 320
    goto :goto_0

    .line 324
    :cond_4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 325
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 326
    .local v2, "hasNullChild":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_9

    .line 327
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 328
    .local v1, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_7

    .line 329
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "AccessibilityNodeInfo returned a null child (%d of %d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-nez v2, :cond_5

    .line 332
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "parent = %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_5
    const/4 v2, 0x1

    .line 326
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 337
    :cond_7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v6

    if-nez v6, :cond_8

    .line 338
    sget-boolean v6, Lcom/android/uiautomator/core/QueryController;->VERBOSE:Z

    if-eqz v6, :cond_6

    .line 339
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Skipping invisible child: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 343
    :cond_8
    invoke-direct {p0, p1, v1, v3}, Lcom/android/uiautomator/core/QueryController;->findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 344
    .local v4, "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_6

    goto/16 :goto_0

    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    move-object v4, v5

    .line 348
    goto/16 :goto_0
.end method

.method private formatLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v0, "l":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "space":I
    :goto_0
    iget v2, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    if-ge v1, v2, :cond_0

    .line 514
    const-string v2, ". . "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    iget v2, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    if-lez v2, :cond_1

    .line 516
    const-string v2, ". . [%d]: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 518
    :cond_1
    const-string v2, ". . [%d]: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private initializeNewSearch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    .line 114
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 115
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    .line 116
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    .line 117
    return-void
.end method

.method private translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "isCounting"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {p0, v1, p2, v5}, Lcom/android/uiautomator/core/QueryController;->translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 226
    invoke-direct {p0}, Lcom/android/uiautomator/core/QueryController;->initializeNewSearch()V

    .line 232
    :goto_0
    if-nez p2, :cond_3

    .line 233
    sget-boolean v1, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container selector not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    :goto_1
    return-object v0

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 239
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/uiautomator/core/QueryController;->translatePatternSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 242
    if-eqz p3, :cond_4

    .line 243
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Counted %d instances of: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_4
    if-nez p2, :cond_5

    .line 248
    sget-boolean v1, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern selector not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    :cond_5
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 259
    :cond_6
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 260
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 263
    :cond_8
    if-nez p2, :cond_9

    .line 264
    sget-boolean v1, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 265
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object Not Found for selector "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 268
    :cond_9
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Matched selector: %s <<==>> [%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 269
    goto/16 :goto_1
.end method

.method private translatePatternSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "subSelector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "isCounting"    # Z

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    if-eqz p3, :cond_0

    .line 381
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    .line 387
    :goto_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object p1

    .line 388
    if-nez p1, :cond_1

    .line 389
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Pattern portion of the selector is null or not defined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_1
    return-object v0

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getInstance()I

    move-result v1

    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    goto :goto_0

    .line 394
    :cond_1
    iget v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p1}, Lcom/android/uiautomator/core/QueryController;->findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_1

    .line 398
    :cond_2
    sget-object v1, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Selector must have a pattern selector defined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/uiautomator/core/QueryController;->findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 107
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "isCounting"    # Z

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 144
    invoke-direct {p0}, Lcom/android/uiautomator/core/QueryController;->initializeNewSearch()V

    .line 146
    sget-boolean v2, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 147
    sget-object v2, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/QueryController;->getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 151
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 152
    sget-object v2, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Cannot proceed when root node is null. Aborted search"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v2, 0x0

    monitor-exit v3

    .line 158
    :goto_0
    return-object v2

    .line 157
    :cond_1
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, p1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 158
    .local v1, "uiSelector":Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {p0, v1, v0, p2}, Lcom/android/uiautomator/core/QueryController;->translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 159
    .end local v0    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "uiSelector":Lcom/android/uiautomator/core/UiSelector;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAccessibilityRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 494
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 504
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 505
    invoke-virtual {p0}, Lcom/android/uiautomator/core/QueryController;->getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 506
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    .line 93
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    monitor-exit v1

    .line 98
    :goto_0
    return-object v0

    .line 97
    :cond_0
    monitor-exit v1

    .line 98
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPatternCount(Lcom/android/uiautomator/core/UiSelector;)I
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 129
    iget v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    return v0
.end method

.method protected getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .prologue
    .line 168
    const/4 v0, 0x4

    .line 169
    .local v0, "maxRetry":I
    const-wide/16 v4, 0xfa

    .line 170
    .local v4, "waitInterval":J
    const/4 v1, 0x0

    .line 171
    .local v1, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v6}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 181
    .end local v1    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v2, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    return-object v2

    .line 176
    .end local v2    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v1    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/4 v6, 0x3

    if-ge v3, v6, :cond_1

    .line 177
    sget-object v6, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got null root node from accessibility - Retrying..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-wide/16 v6, 0xfa

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 171
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 181
    .end local v1    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1
.end method
