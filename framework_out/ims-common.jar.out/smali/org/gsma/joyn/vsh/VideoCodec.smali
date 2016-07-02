.class public Lorg/gsma/joyn/vsh/VideoCodec;
.super Ljava/lang/Object;
.source "VideoCodec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/vsh/VideoCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitRate:I

.field private clockRate:I

.field private encoding:Ljava/lang/String;

.field private frameRate:I

.field private height:I

.field private parameters:Ljava/lang/String;

.field private payload:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lorg/gsma/joyn/vsh/VideoCodec$1;

    invoke-direct {v0}, Lorg/gsma/joyn/vsh/VideoCodec$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/vsh/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->encoding:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->payload:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->clockRate:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->frameRate:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->bitRate:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->width:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->height:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->parameters:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "payload"    # I
    .param p3, "clockRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "bitRate"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "parameters"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/gsma/joyn/vsh/VideoCodec;->encoding:Ljava/lang/String;

    .line 89
    iput p2, p0, Lorg/gsma/joyn/vsh/VideoCodec;->payload:I

    .line 90
    iput p3, p0, Lorg/gsma/joyn/vsh/VideoCodec;->clockRate:I

    .line 91
    iput p4, p0, Lorg/gsma/joyn/vsh/VideoCodec;->frameRate:I

    .line 92
    iput p5, p0, Lorg/gsma/joyn/vsh/VideoCodec;->bitRate:I

    .line 93
    iput p6, p0, Lorg/gsma/joyn/vsh/VideoCodec;->width:I

    .line 94
    iput p7, p0, Lorg/gsma/joyn/vsh/VideoCodec;->height:I

    .line 95
    iput-object p8, p0, Lorg/gsma/joyn/vsh/VideoCodec;->parameters:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public compare(Lorg/gsma/joyn/vsh/VideoCodec;)Z
    .locals 3
    .param p1, "codec"    # Lorg/gsma/joyn/vsh/VideoCodec;

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "ret":Z
    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/gsma/joyn/vsh/VideoCodec;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoWidth()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoHeight()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/gsma/joyn/vsh/VideoCodec;->getVideoHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 264
    :cond_1
    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H264"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/gsma/joyn/H264Config;->getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/gsma/joyn/vsh/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/H264Config;->getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 266
    const/4 v0, 0x1

    .line 274
    :cond_2
    :goto_0
    return v0

    .line 269
    :cond_3
    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/gsma/joyn/vsh/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->bitRate:I

    return v0
.end method

.method public getClockRate()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->clockRate:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->frameRate:I

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/gsma/joyn/vsh/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "parameters":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    .local v0, "codecparams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return-object v3
.end method

.method public getParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->parameters:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->payload:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->height:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->width:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->payload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->clockRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->frameRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoCodec;->parameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
