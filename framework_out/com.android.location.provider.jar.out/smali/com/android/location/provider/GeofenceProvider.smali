.class public abstract Lcom/android/location/provider/GeofenceProvider;
.super Ljava/lang/Object;
.source "GeofenceProvider.java"


# instance fields
.field private mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

.field private mProvider:Landroid/location/IGeofenceProvider$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/location/provider/GeofenceProvider$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/GeofenceProvider$1;-><init>(Lcom/android/location/provider/GeofenceProvider;)V

    iput-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mProvider:Landroid/location/IGeofenceProvider$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/location/provider/GeofenceProvider;)Landroid/hardware/location/GeofenceHardware;
    .locals 1
    .param p0, "x0"    # Lcom/android/location/provider/GeofenceProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/location/provider/GeofenceProvider;Landroid/hardware/location/GeofenceHardware;)Landroid/hardware/location/GeofenceHardware;
    .locals 0
    .param p0, "x0"    # Lcom/android/location/provider/GeofenceProvider;
    .param p1, "x1"    # Landroid/hardware/location/GeofenceHardware;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    return-object p1
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mProvider:Landroid/location/IGeofenceProvider$Stub;

    return-object v0
.end method

.method public abstract onGeofenceHardwareChange(Landroid/hardware/location/GeofenceHardware;)V
.end method
