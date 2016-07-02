.class Lcom/android/location/provider/FusedLocationHardware$MessageCommand;
.super Ljava/lang/Object;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/FusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageCommand"
.end annotation


# instance fields
.field private final mData:Ljava/lang/String;

.field private final mLocations:[Landroid/location/Location;

.field private final mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

.field final synthetic this$0:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method public constructor <init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .param p2, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;
    .param p3, "locations"    # [Landroid/location/Location;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    .line 238
    iput-object p3, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mLocations:[Landroid/location/Location;

    .line 239
    iput-object p4, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mData:Ljava/lang/String;

    .line 240
    return-void
.end method


# virtual methods
.method public dispatchDiagnosticData()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/location/provider/FusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public dispatchLocation()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mLocations:[Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/android/location/provider/FusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V

    .line 244
    return-void
.end method
