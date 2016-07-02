.class Landroid/app/ContextImpl$DeviceStateServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceStateServiceFetcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2738
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ContextImpl$1;

    .prologue
    .line 2738
    invoke-direct {p0}, Landroid/app/ContextImpl$DeviceStateServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 2740
    const-string v2, "device_states"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2741
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/os/IDeviceStateService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceStateService;

    move-result-object v1

    .line 2742
    .local v1, "service":Lmeizu/os/IDeviceStateService;
    new-instance v2, Lmeizu/os/DeviceStateManager;

    invoke-direct {v2, p1, v1}, Lmeizu/os/DeviceStateManager;-><init>(Landroid/content/Context;Lmeizu/os/IDeviceStateService;)V

    return-object v2
.end method
