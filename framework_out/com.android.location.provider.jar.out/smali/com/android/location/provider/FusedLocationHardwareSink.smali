.class public abstract Lcom/android/location/provider/FusedLocationHardwareSink;
.super Ljava/lang/Object;
.source "FusedLocationHardwareSink.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onDiagnosticDataAvailable(Ljava/lang/String;)V
.end method

.method public abstract onLocationAvailable([Landroid/location/Location;)V
.end method
