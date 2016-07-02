.class public Lorg/gsma/joyn/ipcall/VideoCodec;
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
            "Lorg/gsma/joyn/ipcall/VideoCodec;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "VideoCodec"


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
    .line 155
    new-instance v0, Lorg/gsma/joyn/ipcall/VideoCodec$1;

    invoke-direct {v0}, Lorg/gsma/joyn/ipcall/VideoCodec$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/ipcall/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->encoding:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->payload:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->clockRate:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->frameRate:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->bitRate:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->width:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->height:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->parameters:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "payload"    # I
    .param p3, "clockRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "bitRate"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "parameters"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCodec entryencoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clockRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frameRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bitRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->encoding:Ljava/lang/String;

    .line 95
    iput p2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->payload:I

    .line 96
    iput p3, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->clockRate:I

    .line 97
    iput p4, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->frameRate:I

    .line 98
    iput p5, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->bitRate:I

    .line 99
    iput p6, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->width:I

    .line 100
    iput p7, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->height:I

    .line 101
    iput-object p8, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->parameters:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public compare(Lorg/gsma/joyn/ipcall/VideoCodec;)Z
    .locals 4
    .param p1, "codec"    # Lorg/gsma/joyn/ipcall/VideoCodec;

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "ret":Z
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/gsma/joyn/ipcall/VideoCodec;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoWidth()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoHeight()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/gsma/joyn/ipcall/VideoCodec;->getVideoHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 278
    :cond_1
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H264"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/gsma/joyn/H264Config;->getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/gsma/joyn/ipcall/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/gsma/joyn/H264Config;->getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 280
    const/4 v0, 0x1

    .line 288
    :cond_2
    :goto_0
    const-string v1, "VideoCodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compare value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return v0

    .line 283
    :cond_3
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/gsma/joyn/ipcall/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .locals 3

    .prologue
    .line 212
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitRate value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->bitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->bitRate:I

    return v0
.end method

.method public getClockRate()I
    .locals 3

    .prologue
    .line 192
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClockRate value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->clockRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->clockRate:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEncoding value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 3

    .prologue
    .line 202
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrameRate value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->frameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->frameRate:I

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/gsma/joyn/ipcall/VideoCodec;->getParameters()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "parameters":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    .local v0, "codecparams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 258
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const-string v4, "VideoCodec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParameter value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-object v3
.end method

.method public getParameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParameters value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->parameters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->parameters:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()I
    .locals 3

    .prologue
    .line 182
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPayloadType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->payload:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->payload:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 3

    .prologue
    .line 232
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->height:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    .prologue
    .line 222
    const-string v0, "VideoCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->width:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->payload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->clockRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->frameRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/VideoCodec;->parameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return-void
.end method
