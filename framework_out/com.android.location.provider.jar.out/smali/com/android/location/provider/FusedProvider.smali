.class public abstract Lcom/android/location/provider/FusedProvider;
.super Ljava/lang/Object;
.source "FusedProvider.java"


# instance fields
.field private mProvider:Landroid/location/IFusedProvider$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/location/provider/FusedProvider$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/FusedProvider$1;-><init>(Lcom/android/location/provider/FusedProvider;)V

    iput-object v0, p0, Lcom/android/location/provider/FusedProvider;->mProvider:Landroid/location/IFusedProvider$Stub;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/location/provider/FusedProvider;->mProvider:Landroid/location/IFusedProvider$Stub;

    return-object v0
.end method

.method public abstract setFusedLocationHardware(Lcom/android/location/provider/FusedLocationHardware;)V
.end method
