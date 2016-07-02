.class public Lcom/android/uiautomator/core/UiAutomationShellWrapper;
.super Ljava/lang/Object;
.source "UiAutomationShellWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/UiAutomationShellWrapper$1;,
        Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;
    }
.end annotation


# static fields
.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomationShellWrapper-UiAutomatorHandlerThread"

.field private static final TAG:Ljava/lang/String; = "UiAutomationShellWrapper"


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mUiAutomation:Landroid/app/UiAutomation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UiAutomationShellWrapper-UiAutomatorHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/app/UiAutomation;

    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/app/UiAutomationConnection;

    invoke-direct {v2}, Landroid/app/UiAutomationConnection;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    .line 34
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->connect()V

    .line 35
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already disconnected!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->disconnect()V

    .line 69
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result v0

    .line 70
    .local v0, "quit_result":Z
    const-string v1, "UiAutomationShellWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect finished, HandlerThread Quit result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v0
.end method

.method public setCompressedLayoutHierarchy(Z)V
    .locals 2
    .param p1, "compressed"    # Z

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 83
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz p1, :cond_0

    .line 84
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 88
    return-void

    .line 86
    :cond_0
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_0
.end method

.method public setRunAsMonkey(Z)V
    .locals 4
    .param p1, "isSet"    # Z

    .prologue
    .line 49
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 50
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 51
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t manage monkey status; is the system running?"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    :try_start_0
    new-instance v2, Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;-><init>(Lcom/android/uiautomator/core/UiAutomationShellWrapper;Lcom/android/uiautomator/core/UiAutomationShellWrapper$1;)V

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
