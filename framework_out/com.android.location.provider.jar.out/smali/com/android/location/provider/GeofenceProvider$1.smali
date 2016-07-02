.class Lcom/android/location/provider/GeofenceProvider$1;
.super Landroid/location/IGeofenceProvider$Stub;
.source "GeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/GeofenceProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/GeofenceProvider;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    invoke-direct {p0}, Landroid/location/IGeofenceProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V
    .locals 2
    .param p1, "hardwareProxy"    # Landroid/hardware/location/IGeofenceHardware;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    new-instance v1, Landroid/hardware/location/GeofenceHardware;

    invoke-direct {v1, p1}, Landroid/hardware/location/GeofenceHardware;-><init>(Landroid/hardware/location/IGeofenceHardware;)V

    # setter for: Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;
    invoke-static {v0, v1}, Lcom/android/location/provider/GeofenceProvider;->access$002(Lcom/android/location/provider/GeofenceProvider;Landroid/hardware/location/GeofenceHardware;)Landroid/hardware/location/GeofenceHardware;

    .line 42
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    iget-object v1, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    # getter for: Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;
    invoke-static {v1}, Lcom/android/location/provider/GeofenceProvider;->access$000(Lcom/android/location/provider/GeofenceProvider;)Landroid/hardware/location/GeofenceHardware;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/location/provider/GeofenceProvider;->onGeofenceHardwareChange(Landroid/hardware/location/GeofenceHardware;)V

    .line 43
    return-void
.end method
