.class public Lcom/android/uiautomator/core/ShellUiAutomatorBridge;
.super Lcom/android/uiautomator/core/UiAutomatorBridge;
.source "ShellUiAutomatorBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/UiAutomation;)V
    .locals 0
    .param p1, "uiAutomation"    # Landroid/app/UiAutomation;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge;-><init>(Landroid/app/UiAutomation;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getDefaultDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()I
    .locals 5

    .prologue
    .line 97
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 99
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v1, -0x1

    .line 101
    .local v1, "ret":I
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error getting screen rotation"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemLongPressTime()J
    .locals 19

    .prologue
    .line 55
    const-wide/16 v14, 0x0

    .line 57
    .local v14, "longPressTimeout":J
    const/4 v2, 0x0

    .line 58
    .local v2, "provider":Landroid/content/IContentProvider;
    const/4 v11, 0x0

    .line 59
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 60
    .local v10, "activityManager":Landroid/app/IActivityManager;
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    .line 61
    .local v17, "providerName":Ljava/lang/String;
    new-instance v18, Landroid/os/Binder;

    invoke-direct/range {v18 .. v18}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v18, "token":Landroid/os/IBinder;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v3, v1}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v13

    .line 65
    .local v13, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v13, :cond_2

    .line 66
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v13    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_0

    .line 81
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_0
    if-eqz v2, :cond_1

    .line 84
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v10    # "activityManager":Landroid/app/IActivityManager;
    .end local v17    # "providerName":Ljava/lang/String;
    .end local v18    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v12

    .line 88
    .local v12, "e":Landroid/os/RemoteException;
    const-string v16, "Error reading long press timeout setting."

    .line 89
    .local v16, "message":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v3, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v16    # "message":Ljava/lang/String;
    .restart local v10    # "activityManager":Landroid/app/IActivityManager;
    .restart local v13    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v17    # "providerName":Ljava/lang/String;
    .restart local v18    # "token":Landroid/os/IBinder;
    :cond_2
    :try_start_3
    iget-object v2, v13, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 69
    const/4 v3, 0x0

    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "value"

    aput-object v7, v5, v6

    const-string v6, "name=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "long_press_timeout"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 76
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    int-to-long v14, v3

    .line 80
    :cond_3
    if-eqz v11, :cond_4

    .line 81
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_4
    if-eqz v2, :cond_5

    .line 84
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    :cond_5
    return-wide v14
.end method

.method public isScreenOn()Z
    .locals 5

    .prologue
    .line 111
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 113
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    .line 115
    .local v2, "ret":Z
    :try_start_0
    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 120
    return v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error getting screen status"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
