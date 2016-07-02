.class public abstract Lcom/android/uiautomator/core/UiAutomatorBridge;
.super Ljava/lang/Object;
.source "UiAutomatorBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final QUIET_TIME_TO_BE_CONSIDERD_IDLE_STATE:J = 0x1f4L

.field private static final TOTAL_TIME_TO_WAIT_FOR_IDLE_STATE:J = 0x2710L


# instance fields
.field private final mInteractionController:Lcom/android/uiautomator/core/InteractionController;

.field private final mQueryController:Lcom/android/uiautomator/core/QueryController;

.field private final mUiAutomation:Landroid/app/UiAutomation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/UiAutomation;)V
    .locals 1
    .param p1, "uiAutomation"    # Landroid/app/UiAutomation;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    .line 49
    new-instance v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/InteractionController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    .line 50
    new-instance v0, Lcom/android/uiautomator/core/QueryController;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    .line 51
    return-void
.end method


# virtual methods
.method public executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/UiAutomation;->executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    return-object v0
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    return-object v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRotation()I
.end method

.method public abstract getSystemLongPressTime()J
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1, p2}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v0

    return v0
.end method

.method public abstract isScreenOn()Z
.end method

.method public performGlobalAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public setCompressedLayoutHierarchy(Z)V
    .locals 2
    .param p1, "compressed"    # Z

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 79
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz p1, :cond_0

    .line 80
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 84
    return-void

    .line 82
    :cond_0
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_0
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    .line 63
    return-void
.end method

.method public setRotation(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->setRotation(I)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;I)Z
    .locals 7
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "quality"    # I

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v5, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v5}, Landroid/app/UiAutomation;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 110
    .local v3, "screenshot":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 133
    :goto_0
    return v4

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    if-eqz v1, :cond_1

    .line 117
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v5, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :cond_1
    if-eqz v1, :cond_2

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    const/4 v4, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v6, "failed to save screen shot to file"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-eqz v0, :cond_3

    .line 126
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 131
    :cond_3
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 124
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v0, :cond_4

    .line 126
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 131
    :cond_4
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    throw v4

    .line 127
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 124
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 120
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method public waitForIdle()V
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    .line 92
    return-void
.end method

.method public waitForIdle(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/app/UiAutomation;->waitForIdle(JJ)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "te":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not detect idle state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
