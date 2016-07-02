.class Lcom/android/location/provider/FusedLocationHardware$1;
.super Landroid/hardware/location/IFusedLocationHardwareSink$Stub;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/FusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method constructor <init>(Lcom/android/location/provider/FusedLocationHardware;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnosticDataAvailable(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    # invokes: Lcom/android/location/provider/FusedLocationHardware;->dispatchDiagnosticData(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->access$100(Lcom/android/location/provider/FusedLocationHardware;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 1
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    # invokes: Lcom/android/location/provider/FusedLocationHardware;->dispatchLocations([Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->access$000(Lcom/android/location/provider/FusedLocationHardware;[Landroid/location/Location;)V

    .line 49
    return-void
.end method
