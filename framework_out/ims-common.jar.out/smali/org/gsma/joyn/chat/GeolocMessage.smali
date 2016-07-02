.class public Lorg/gsma/joyn/chat/GeolocMessage;
.super Lorg/gsma/joyn/chat/ChatMessage;
.source "GeolocMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/chat/GeolocMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:Ljava/lang/String; = "application/geoloc"

.field public static final TAG:Ljava/lang/String; = "TAPI-GeolocMessage"


# instance fields
.field private geoloc:Lorg/gsma/joyn/chat/Geoloc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/gsma/joyn/chat/GeolocMessage$1;

    invoke-direct {v0}, Lorg/gsma/joyn/chat/GeolocMessage$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/chat/GeolocMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/gsma/joyn/chat/ChatMessage;-><init>(Landroid/os/Parcel;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gsma/joyn/chat/GeolocMessage;->geoloc:Lorg/gsma/joyn/chat/Geoloc;

    .line 71
    new-instance v0, Lorg/gsma/joyn/chat/Geoloc;

    invoke-direct {v0, p1}, Lorg/gsma/joyn/chat/Geoloc;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lorg/gsma/joyn/chat/GeolocMessage;->geoloc:Lorg/gsma/joyn/chat/Geoloc;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/chat/Geoloc;Ljava/util/Date;Z)V
    .locals 7
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "geoloc"    # Lorg/gsma/joyn/chat/Geoloc;
    .param p4, "receiptAt"    # Ljava/util/Date;
    .param p5, "imdnDisplayedRequested"    # Z

    .prologue
    const/4 v3, 0x0

    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/gsma/joyn/chat/ChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZLjava/lang/String;)V

    .line 42
    iput-object v3, p0, Lorg/gsma/joyn/chat/GeolocMessage;->geoloc:Lorg/gsma/joyn/chat/Geoloc;

    .line 58
    const-string v0, "TAPI-GeolocMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeolocMessage entry geoloc ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p3, p0, Lorg/gsma/joyn/chat/GeolocMessage;->geoloc:Lorg/gsma/joyn/chat/Geoloc;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getGeoloc()Lorg/gsma/joyn/chat/Geoloc;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/gsma/joyn/chat/GeolocMessage;->geoloc:Lorg/gsma/joyn/chat/Geoloc;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lorg/gsma/joyn/chat/ChatMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    iget-object v0, p0, Lorg/gsma/joyn/chat/GeolocMessage;->geoloc:Lorg/gsma/joyn/chat/Geoloc;

    invoke-virtual {v0, p1, p2}, Lorg/gsma/joyn/chat/Geoloc;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    return-void
.end method
