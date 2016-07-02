.class final Lorg/gsma/joyn/chat/GeolocMessage$1;
.super Ljava/lang/Object;
.source "GeolocMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/GeolocMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/gsma/joyn/chat/GeolocMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/gsma/joyn/chat/GeolocMessage$1;->createFromParcel(Landroid/os/Parcel;)Lorg/gsma/joyn/chat/GeolocMessage;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/gsma/joyn/chat/GeolocMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 106
    new-instance v0, Lorg/gsma/joyn/chat/GeolocMessage;

    invoke-direct {v0, p1}, Lorg/gsma/joyn/chat/GeolocMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/gsma/joyn/chat/GeolocMessage$1;->newArray(I)[Lorg/gsma/joyn/chat/GeolocMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/gsma/joyn/chat/GeolocMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 110
    new-array v0, p1, [Lorg/gsma/joyn/chat/GeolocMessage;

    return-object v0
.end method
