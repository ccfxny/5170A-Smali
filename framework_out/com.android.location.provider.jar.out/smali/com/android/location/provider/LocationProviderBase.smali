.class public abstract Lcom/android/location/provider/LocationProviderBase;
.super Ljava/lang/Object;
.source "LocationProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/LocationProviderBase$1;,
        Lcom/android/location/provider/LocationProviderBase$Service;
    }
.end annotation


# static fields
.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field protected final mLocationManager:Landroid/location/ILocationManager;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/location/provider/LocationProviderBase;->TAG:Ljava/lang/String;

    .line 117
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 118
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mLocationManager:Landroid/location/ILocationManager;

    .line 119
    invoke-virtual {p2}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->getProviderProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 120
    new-instance v1, Lcom/android/location/provider/LocationProviderBase$Service;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/location/provider/LocationProviderBase$Service;-><init>(Lcom/android/location/provider/LocationProviderBase;Lcom/android/location/provider/LocationProviderBase$1;)V

    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/location/provider/LocationProviderBase;)Lcom/android/internal/location/ProviderProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/location/provider/LocationProviderBase;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract onDisable()V
.end method

.method public onDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 172
    return-void
.end method

.method public abstract onEnable()V
.end method

.method public abstract onGetStatus(Landroid/os/Bundle;)I
.end method

.method public abstract onGetStatusUpdateTime()J
.end method

.method public onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
.end method

.method public final reportLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->TAG:Ljava/lang/String;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
