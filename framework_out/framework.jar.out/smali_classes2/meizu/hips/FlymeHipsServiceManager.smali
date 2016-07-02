.class public Lmeizu/hips/FlymeHipsServiceManager;
.super Ljava/lang/Object;
.source "FlymeHipsServiceManager.java"


# static fields
.field private static mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

.field private static volatile mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lmeizu/hips/FlymeHipsServiceManager;->mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

    .line 12
    sput-object v0, Lmeizu/hips/FlymeHipsServiceManager;->mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance()Lmeizu/hips/FlymeHipsServiceManager;
    .locals 3

    .prologue
    .line 19
    sget-object v1, Lmeizu/hips/FlymeHipsServiceManager;->mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

    if-nez v1, :cond_1

    .line 20
    const-class v2, Lmeizu/hips/FlymeHipsServiceManager;

    monitor-enter v2

    .line 21
    :try_start_0
    sget-object v1, Lmeizu/hips/FlymeHipsServiceManager;->mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lmeizu/hips/FlymeHipsServiceManager;

    invoke-direct {v1}, Lmeizu/hips/FlymeHipsServiceManager;-><init>()V

    sput-object v1, Lmeizu/hips/FlymeHipsServiceManager;->mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

    .line 23
    const-string v1, "hips_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 24
    .local v0, "remote":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/hips/IFlymeHipsService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/hips/IFlymeHipsService;

    move-result-object v1

    sput-object v1, Lmeizu/hips/FlymeHipsServiceManager;->mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

    .line 27
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v1, Lmeizu/hips/FlymeHipsServiceManager;->mHipsServiceManager:Lmeizu/hips/FlymeHipsServiceManager;

    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getUsbInstallInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lmeizu/hips/FlymeHipsServiceManager;->mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

    invoke-interface {v0}, Lmeizu/hips/IFlymeHipsService;->getUsbInstallInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUsbInstallSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lmeizu/hips/FlymeHipsServiceManager;->mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

    invoke-interface {v0}, Lmeizu/hips/IFlymeHipsService;->getUsbInstallSwitchState()I

    move-result v0

    return v0
.end method

.method public isStopUsbInstall(Ljava/lang/String;)I
    .locals 1
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lmeizu/hips/FlymeHipsServiceManager;->mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

    invoke-interface {v0, p1}, Lmeizu/hips/IFlymeHipsService;->isStopUsbInstall(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
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
    .line 46
    sget-object v0, Lmeizu/hips/FlymeHipsServiceManager;->mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lmeizu/hips/IFlymeHipsService;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public setUsbInstallSwitchState(Z)V
    .locals 1
    .param p1, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lmeizu/hips/FlymeHipsServiceManager;->mFlymeHipsService:Lmeizu/hips/IFlymeHipsService;

    invoke-interface {v0, p1}, Lmeizu/hips/IFlymeHipsService;->setUsbInstallSwitchState(Z)V

    .line 38
    return-void
.end method
