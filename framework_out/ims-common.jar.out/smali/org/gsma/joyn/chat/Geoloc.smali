.class public Lorg/gsma/joyn/chat/Geoloc;
.super Ljava/lang/Object;
.source "Geoloc.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/chat/Geoloc;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "TAPI-Geoloc"

.field private static final serialVersionUID:J


# instance fields
.field private accuracy:F

.field private expiration:J

.field private label:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lorg/gsma/joyn/chat/Geoloc$1;

    invoke-direct {v0}, Lorg/gsma/joyn/chat/Geoloc$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/chat/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->expiration:J

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/gsma/joyn/chat/Geoloc;->accuracy:F

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/chat/Geoloc;->label:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->latitude:D

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->longitude:D

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->expiration:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/chat/Geoloc;->accuracy:F

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJ)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "expiration"    # J

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->expiration:J

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/gsma/joyn/chat/Geoloc;->accuracy:F

    .line 71
    const-string v0, "TAPI-Geoloc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geoloc entrylabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expiration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lorg/gsma/joyn/chat/Geoloc;->label:Ljava/lang/String;

    .line 74
    iput-wide p2, p0, Lorg/gsma/joyn/chat/Geoloc;->latitude:D

    .line 75
    iput-wide p4, p0, Lorg/gsma/joyn/chat/Geoloc;->longitude:D

    .line 76
    iput-wide p6, p0, Lorg/gsma/joyn/chat/Geoloc;->expiration:J

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJF)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "expiration"    # J
    .param p8, "accuracy"    # F

    .prologue
    .line 90
    invoke-direct/range {p0 .. p7}, Lorg/gsma/joyn/chat/Geoloc;-><init>(Ljava/lang/String;DDJ)V

    .line 91
    const-string v0, "TAPI-Geoloc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput p8, p0, Lorg/gsma/joyn/chat/Geoloc;->accuracy:F

    .line 93
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lorg/gsma/joyn/chat/Geoloc;->accuracy:F

    return v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->expiration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/gsma/joyn/chat/Geoloc;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->longitude:D

    return-wide v0
.end method

.method public setAcuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .prologue
    .line 237
    iput p1, p0, Lorg/gsma/joyn/chat/Geoloc;->accuracy:F

    .line 238
    return-void
.end method

.method public setExpiration(J)V
    .locals 1
    .param p1, "expiration"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lorg/gsma/joyn/chat/Geoloc;->expiration:J

    .line 220
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/gsma/joyn/chat/Geoloc;->label:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 183
    iput-wide p1, p0, Lorg/gsma/joyn/chat/Geoloc;->latitude:D

    .line 184
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 201
    iput-wide p1, p0, Lorg/gsma/joyn/chat/Geoloc;->longitude:D

    .line 202
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/gsma/joyn/chat/Geoloc;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 130
    iget-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 131
    iget-wide v0, p0, Lorg/gsma/joyn/chat/Geoloc;->expiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget v0, p0, Lorg/gsma/joyn/chat/Geoloc;->accuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 133
    return-void
.end method
