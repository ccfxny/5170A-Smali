.class public Lmeizu/os/DeviceStateManager;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/os/DeviceStateManager$RemoteHandle;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mService:Lmeizu/os/IDeviceStateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmeizu/os/IDeviceStateService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmeizu/os/IDeviceStateService;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmeizu/os/DeviceStateManager;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lmeizu/os/DeviceStateManager;->mService:Lmeizu/os/IDeviceStateService;

    .line 29
    return-void
.end method


# virtual methods
.method public doCheckState(I)I
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceStateManager;->mService:Lmeizu/os/IDeviceStateService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceStateService;->doCheckState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public doCommand(I[B)I
    .locals 2
    .param p1, "handle"    # I
    .param p2, "rsaData"    # [B

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceStateManager;->mService:Lmeizu/os/IDeviceStateService;

    invoke-interface {v1, p1, p2}, Lmeizu/os/IDeviceStateService;->doCommand(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public doGetInitNo(I[B)I
    .locals 2
    .param p1, "handle"    # I
    .param p2, "inData"    # [B

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceStateManager;->mService:Lmeizu/os/IDeviceStateService;

    invoke-interface {v1, p1, p2}, Lmeizu/os/IDeviceStateService;->doGetInitNo(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 35
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public getActivateStats()I
    .locals 2

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceStateManager;->mService:Lmeizu/os/IDeviceStateService;

    invoke-interface {v1}, Lmeizu/os/IDeviceStateService;->getActivateStats()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockRecoveryUnchecked()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock:Lmeizu/os/DeviceStateManager$RemoteHandle;

    invoke-virtual {v0}, Lmeizu/os/DeviceStateManager$RemoteHandle;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lmeizu/os/DeviceStateManager;->lockRecoveryUncheckedByHandle(I)I

    move-result v0

    return v0
.end method

.method public lockRecoveryUncheckedByHandle(I)I
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceStateManager;->mService:Lmeizu/os/IDeviceStateService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceStateService;->lockRecoveryUncheckedByHandle(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public setActivateStats(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lmeizu/os/DeviceStateManager;->mService:Lmeizu/os/IDeviceStateService;

    invoke-interface {v1, p1}, Lmeizu/os/IDeviceStateService;->setActivateStats(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method
