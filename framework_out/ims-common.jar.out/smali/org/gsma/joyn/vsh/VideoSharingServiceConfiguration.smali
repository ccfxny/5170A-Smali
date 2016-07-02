.class public Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "VideoSharingServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration$1;

    invoke-direct {v0}, Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxTime"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;->maxTime:J

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;->maxTime:J

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;->maxTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;->maxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    return-void
.end method
