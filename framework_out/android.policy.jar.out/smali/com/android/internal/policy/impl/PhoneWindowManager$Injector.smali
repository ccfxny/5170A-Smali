.class Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;IZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 7977
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->wakeUpSystemByGestureIfNeeded(Lcom/android/internal/policy/impl/PhoneWindowManager;IZZ)Z

    move-result v0

    return v0
.end method

.method public static checkAddPermission(Ljava/lang/String;I[I)Ljava/lang/String;
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "outAppOp"    # [I

    .prologue
    .line 7995
    const/16 v0, 0x7fb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7fa

    if-ne p1, v0, :cond_1

    .line 7997
    :cond_0
    const-string p0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 7998
    const/4 v0, 0x0

    const/16 v1, 0x18

    aput v1, p2, v0

    .line 8000
    :cond_1
    return-object p0
.end method

.method private static wakeUpSystemByGestureIfNeeded(Lcom/android/internal/policy/impl/PhoneWindowManager;IZZ)Z
    .locals 4
    .param p0, "pw"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 7979
    const/16 v2, 0x10a

    if-ne p1, v2, :cond_0

    if-nez p3, :cond_0

    .line 7980
    if-eqz p2, :cond_0

    .line 7981
    const-string v2, "gesture_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object v1

    .line 7984
    .local v1, "gestureManager":Landroid/view/IGestureManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IGestureManager;->triggerGesture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7988
    :goto_0
    const/4 v2, 0x1

    .line 7991
    .end local v1    # "gestureManager":Landroid/view/IGestureManager;
    :goto_1
    return v2

    .line 7985
    .restart local v1    # "gestureManager":Landroid/view/IGestureManager;
    :catch_0
    move-exception v0

    .line 7986
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "GestureManager"

    const-string v3, "IGestureManager threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7991
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "gestureManager":Landroid/view/IGestureManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static windowTypeToLayerLw(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 8004
    const/16 v0, 0x7fb

    if-ne p0, v0, :cond_0

    .line 8005
    const/4 v0, 0x3

    .line 8009
    :goto_0
    return v0

    .line 8006
    :cond_0
    const/16 v0, 0x7fa

    if-ne p0, v0, :cond_1

    .line 8007
    const/16 v0, 0xe

    goto :goto_0

    .line 8009
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
