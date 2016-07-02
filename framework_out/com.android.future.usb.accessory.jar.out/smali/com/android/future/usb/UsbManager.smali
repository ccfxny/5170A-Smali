.class public Lcom/android/future/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field private static final TAG:Ljava/lang/String; = "UsbManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/usb/IUsbManager;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/future/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 72
    return-void
.end method

.method public static getAccessory(Landroid/content/Intent;)Lcom/android/future/usb/UsbAccessory;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const-string v1, "accessory"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 96
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/future/usb/UsbAccessory;

    invoke-direct {v1, v0}, Lcom/android/future/usb/UsbAccessory;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/future/usb/UsbManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/android/future/usb/UsbManager;

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/future/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    return-object v1
.end method


# virtual methods
.method public getAccessoryList()[Lcom/android/future/usb/UsbAccessory;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v3}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 112
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 119
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :goto_0
    return-object v2

    .line 115
    .restart local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/future/usb/UsbAccessory;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/future/usb/UsbAccessory;

    invoke-direct {v5, v0}, Lcom/android/future/usb/UsbAccessory;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 117
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "UsbManager"

    const-string v4, "RemoteException in getAccessoryList"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasPermission(Lcom/android/future/usb/UsbAccessory;)Z
    .locals 9
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;

    .prologue
    .line 152
    :try_start_0
    iget-object v8, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 158
    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v7

    .line 157
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "UsbManager"

    const-string v1, "RemoteException in hasPermission"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAccessory(Lcom/android/future/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;

    .prologue
    .line 131
    :try_start_0
    iget-object v8, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v7

    .line 136
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "UsbManager"

    const-string v1, "RemoteException in openAccessory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPermission(Lcom/android/future/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 177
    :try_start_0
    iget-object v8, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/future/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v7

    .line 183
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "UsbManager"

    const-string v1, "RemoteException in requestPermission"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
