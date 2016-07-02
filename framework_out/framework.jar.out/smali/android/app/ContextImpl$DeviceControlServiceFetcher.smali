.class Landroid/app/ContextImpl$DeviceControlServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceControlServiceFetcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2747
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ContextImpl$1;

    .prologue
    .line 2747
    invoke-direct {p0}, Landroid/app/ContextImpl$DeviceControlServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 2749
    const-string v2, "device_control"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2750
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/os/IDeviceControlService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceControlService;

    move-result-object v1

    .line 2751
    .local v1, "service":Lmeizu/os/IDeviceControlService;
    new-instance v2, Lmeizu/os/DeviceControlManager;

    invoke-direct {v2, p1, v1}, Lmeizu/os/DeviceControlManager;-><init>(Landroid/content/Context;Lmeizu/os/IDeviceControlService;)V

    return-object v2
.end method
