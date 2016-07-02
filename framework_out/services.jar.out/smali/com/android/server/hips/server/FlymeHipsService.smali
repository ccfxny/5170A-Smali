.class public Lcom/android/server/hips/server/FlymeHipsService;
.super Lmeizu/hips/IFlymeHipsService$Stub;
.source "FlymeHipsService.java"


# static fields
.field private static final GET_FLYME_HIPS_SERVICE:Ljava/lang/String; = "android.permission.GET_FLYME_HIPS_SERVICE"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lmeizu/hips/IFlymeHipsService$Stub;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getUsbInstallInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/hips/server/UsbInstallManager;->getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hips/server/UsbInstallManager;->getAllItems()Ljava/util/Map;

    move-result-object v0

    .line 58
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "usb_install_item_switch"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "usb_install_item_switch"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-object v0
.end method

.method public getUsbInstallSwitchState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/server/UsbInstallManager;->getSwitchState()I

    move-result v0

    return v0
.end method

.method public isStopUsbInstall(Ljava/lang/String;)I
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/server/UsbInstallManager;->isStopInstall(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/hips/server/UsbInstallManager;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public setUsbInstallSwitchState(Z)V
    .locals 3
    .param p1, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/server/UsbInstallManager;->setSwitchState(Z)V

    .line 37
    return-void
.end method
