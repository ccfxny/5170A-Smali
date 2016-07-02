.class public Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "ImageSharingServiceConfiguration.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxSize:J

.field private warnSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration$1;

    invoke-direct {v0}, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "warnSize"    # J
    .param p3, "maxSize"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->warnSize:J

    .line 48
    iput-wide p3, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->maxSize:J

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->warnSize:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->maxSize:J

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->maxSize:J

    return-wide v0
.end method

.method public getWarnSize()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->warnSize:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->warnSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;->maxSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void
.end method
