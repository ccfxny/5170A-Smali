.class public Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;
.super Ljava/lang/Object;
.source "FileTransferServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "TAPI-FileTransferServiceConfiguration"


# instance fields
.field private autoAcceptMode:Z

.field private fileIcon:Z

.field private maxFileIconSize:J

.field private maxFileTransfers:I

.field private maxSize:J

.field private warnSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration$1;

    invoke-direct {v0}, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZZJI)V
    .locals 3
    .param p1, "warnSize"    # J
    .param p3, "maxSize"    # J
    .param p5, "autoAcceptMode"    # Z
    .param p6, "fileIcon"    # Z
    .param p7, "maxFileIconSize"    # J
    .param p9, "maxFileTransfers"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "TAPI-FileTransferServiceConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileTransferServiceConfiguration entrywarnSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "maxSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autoAcceptMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fileIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "maxFileIconSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "maxFileTransfers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-wide p1, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->warnSize:J

    .line 79
    iput-wide p3, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxSize:J

    .line 80
    iput-boolean p5, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->autoAcceptMode:Z

    .line 81
    iput-boolean p6, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->fileIcon:Z

    .line 82
    iput-wide p7, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxFileIconSize:J

    .line 83
    iput p9, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxFileTransfers:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->warnSize:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxSize:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->autoAcceptMode:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->fileIcon:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxFileIconSize:J

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v1, v2

    .line 96
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoAcceptMode()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->autoAcceptMode:Z

    return v0
.end method

.method public getMaxFileIconSize()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxFileIconSize:J

    return-wide v0
.end method

.method public getMaxFileTransfers()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxFileTransfers:I

    return v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxSize:J

    return-wide v0
.end method

.method public getWarnSize()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->warnSize:J

    return-wide v0
.end method

.method public isFileIconSupported()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->fileIcon:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-wide v4, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->warnSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-wide v4, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-boolean v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->autoAcceptMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->fileIcon:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-wide v0, p0, Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;->maxFileIconSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    :cond_1
    move v1, v2

    .line 122
    goto :goto_1
.end method
