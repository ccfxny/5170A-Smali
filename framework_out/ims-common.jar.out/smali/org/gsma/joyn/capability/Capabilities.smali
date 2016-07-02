.class public Lorg/gsma/joyn/capability/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Capabilities"


# instance fields
.field private automata:Z

.field private burnAfterRead:Z

.field private csVideoSupported:Z

.field private extensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileTransfer:Z

.field private fileTransferHttpSupported:Z

.field private geolocPush:Z

.field private imSession:Z

.field private imageSharing:Z

.field private integratedMessagingMode:Z

.field private ipVideoCall:Z

.field private ipVoiceCall:Z

.field private rcsContact:Z

.field private videoSharing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lorg/gsma/joyn/capability/Capabilities$1;

    invoke-direct {v0}, Lorg/gsma/joyn/capability/Capabilities$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    .line 53
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    .line 63
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    .line 68
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    .line 73
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    .line 78
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    .line 83
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 93
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    .line 98
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    .line 103
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    .line 105
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->burnAfterRead:Z

    .line 110
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    .line 125
    iput-boolean v3, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 208
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_b
    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    :goto_c
    iput-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->burnAfterRead:Z

    .line 218
    return-void

    .end local v0    # "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move v1, v3

    .line 202
    goto :goto_0

    :cond_1
    move v1, v3

    .line 203
    goto :goto_1

    :cond_2
    move v1, v3

    .line 204
    goto :goto_2

    :cond_3
    move v1, v3

    .line 205
    goto :goto_3

    .restart local v0    # "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move v1, v3

    .line 209
    goto :goto_4

    :cond_5
    move v1, v3

    .line 210
    goto :goto_5

    :cond_6
    move v1, v3

    .line 211
    goto :goto_6

    :cond_7
    move v1, v3

    .line 212
    goto :goto_7

    :cond_8
    move v1, v3

    .line 213
    goto :goto_8

    :cond_9
    move v1, v3

    .line 214
    goto :goto_9

    :cond_a
    move v1, v3

    .line 215
    goto :goto_a

    :cond_b
    move v1, v3

    .line 216
    goto :goto_b

    :cond_c
    move v2, v3

    .line 217
    goto :goto_c
.end method

.method public constructor <init>(ZZZZZZZLjava/util/Set;ZZZZZ)V
    .locals 4
    .param p1, "imageSharing"    # Z
    .param p2, "videoSharing"    # Z
    .param p3, "imSession"    # Z
    .param p4, "fileTransfer"    # Z
    .param p5, "geolocPush"    # Z
    .param p6, "ipVoiceCall"    # Z
    .param p7, "ipVideoCall"    # Z
    .param p9, "automata"    # Z
    .param p10, "fileTransferHttpSupport"    # Z
    .param p11, "rcsContact"    # Z
    .param p12, "integratedMessagingMode"    # Z
    .param p13, "csVideoSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p8, "extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->burnAfterRead:Z

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    .line 175
    const-string v1, "Capabilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capabilities entry , values are Imagesharing-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "videosharing-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "imSession-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "filetransfer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "geolocPush-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ipVoicecall-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ipVideoCall-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extensions-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "automata-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fileTransferHttpSupport-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rcsContact-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "integratedMessagingMode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "csVideoSupported-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput-boolean p1, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    .line 180
    iput-boolean p2, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    .line 181
    iput-boolean p3, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    .line 182
    iput-boolean p4, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    .line 183
    iput-boolean p5, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    .line 184
    iput-boolean p6, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    .line 185
    iput-boolean p7, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    .line 186
    iput-object p8, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 187
    iput-boolean p9, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    .line 188
    iput-boolean p10, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    .line 189
    iput-boolean p11, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    .line 190
    move/from16 v0, p12

    iput-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    .line 191
    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    .line 193
    return-void
.end method

.method public constructor <init>(ZZZZZZZLjava/util/Set;ZZZZZZ)V
    .locals 4
    .param p1, "imageSharing"    # Z
    .param p2, "videoSharing"    # Z
    .param p3, "imSession"    # Z
    .param p4, "fileTransfer"    # Z
    .param p5, "geolocPush"    # Z
    .param p6, "ipVoiceCall"    # Z
    .param p7, "ipVideoCall"    # Z
    .param p9, "automata"    # Z
    .param p10, "fileTransferHttpSupport"    # Z
    .param p11, "rcsContact"    # Z
    .param p12, "integratedMessagingMode"    # Z
    .param p13, "csVideoSupported"    # Z
    .param p14, "isBurnAfterRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p8, "extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->burnAfterRead:Z

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    .line 151
    const-string v1, "Capabilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capabilities entry , values are Imagesharing-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "videosharing-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "imSession-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "filetransfer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "geolocPush-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ipVoicecall-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ipVideoCall-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extensions-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "automata-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fileTransferHttpSupport-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rcsContact-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "integratedMessagingMode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "csVideoSupported-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-boolean p1, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    .line 156
    iput-boolean p2, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    .line 157
    iput-boolean p3, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    .line 158
    iput-boolean p4, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    .line 159
    iput-boolean p5, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    .line 160
    iput-boolean p6, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    .line 161
    iput-boolean p7, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    .line 162
    iput-object p8, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 163
    iput-boolean p9, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    .line 164
    iput-boolean p10, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    .line 165
    iput-boolean p11, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    .line 166
    move/from16 v0, p12

    iput-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    .line 167
    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    .line 168
    move/from16 v0, p14

    iput-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->burnAfterRead:Z

    .line 169
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedExtensions value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    return-object v0
.end method

.method public isAutomata()Z
    .locals 3

    .prologue
    .line 373
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutomata value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    return v0
.end method

.method public isBurnAfterRead()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->burnAfterRead:Z

    return v0
.end method

.method public isCsVideoSupported()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    return v0
.end method

.method public isExtensionSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExtensionSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFileTransferHttpSupported()Z
    .locals 3

    .prologue
    .line 383
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFileTransferHttpSupported value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    return v0
.end method

.method public isFileTransferSupported()Z
    .locals 3

    .prologue
    .line 311
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFileTransferSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    return v0
.end method

.method public isGeolocPushSupported()Z
    .locals 3

    .prologue
    .line 322
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGeolocPushSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    return v0
.end method

.method public isIPVideoCallSupported()Z
    .locals 3

    .prologue
    .line 342
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIPVideoCallSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    return v0
.end method

.method public isIPVoiceCallSupported()Z
    .locals 3

    .prologue
    .line 332
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIPVoiceCallSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    return v0
.end method

.method public isImSessionSupported()Z
    .locals 3

    .prologue
    .line 301
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImSessionSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    return v0
.end method

.method public isImageSharingSupported()Z
    .locals 3

    .prologue
    .line 281
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImageSharingSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    return v0
.end method

.method public isIntegratedMessagingMode()Z
    .locals 3

    .prologue
    .line 118
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIntegratedMessagingMode entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    return v0
.end method

.method public isSupportedRcseContact()Z
    .locals 3

    .prologue
    .line 393
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportedRcseContact value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    return v0
.end method

.method public isVideoSharingSupported()Z
    .locals 3

    .prologue
    .line 291
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoSharingSupported value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-boolean v0, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    return v0
.end method

.method public setImageSharingSupport(Z)V
    .locals 3
    .param p1, "imageSharing"    # Z

    .prologue
    .line 46
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageSharingSupport entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-boolean p1, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    .line 48
    return-void
.end method

.method public setIntegratedMessagingMode(Z)V
    .locals 3
    .param p1, "integratedMessagingMode"    # Z

    .prologue
    .line 113
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntegratedMessagingMode entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-boolean p1, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    .line 115
    return-void
.end method

.method public setVideoSharingSupport(Z)V
    .locals 3
    .param p1, "videoSharing"    # Z

    .prologue
    .line 56
    const-string v0, "Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoSharingSupport entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-boolean p1, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imageSharing:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->videoSharing:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->imSession:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransfer:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v1, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/gsma/joyn/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 248
    .end local v0    # "exts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->geolocPush:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVoiceCall:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->ipVideoCall:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->automata:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->fileTransferHttpSupported:Z

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->rcsContact:Z

    if-eqz v1, :cond_a

    move v1, v2

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->integratedMessagingMode:Z

    if-eqz v1, :cond_b

    move v1, v2

    :goto_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->csVideoSupported:Z

    if-eqz v1, :cond_c

    move v1, v2

    :goto_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-boolean v1, p0, Lorg/gsma/joyn/capability/Capabilities;->burnAfterRead:Z

    if-eqz v1, :cond_d

    :goto_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    return-void

    :cond_1
    move v1, v3

    .line 239
    goto :goto_0

    :cond_2
    move v1, v3

    .line 240
    goto :goto_1

    :cond_3
    move v1, v3

    .line 241
    goto :goto_2

    :cond_4
    move v1, v3

    .line 242
    goto :goto_3

    :cond_5
    move v1, v3

    .line 248
    goto :goto_4

    :cond_6
    move v1, v3

    .line 249
    goto :goto_5

    :cond_7
    move v1, v3

    .line 250
    goto :goto_6

    :cond_8
    move v1, v3

    .line 251
    goto :goto_7

    :cond_9
    move v1, v3

    .line 252
    goto :goto_8

    :cond_a
    move v1, v3

    .line 253
    goto :goto_9

    :cond_b
    move v1, v3

    .line 254
    goto :goto_a

    :cond_c
    move v1, v3

    .line 255
    goto :goto_b

    :cond_d
    move v2, v3

    .line 256
    goto :goto_c
.end method
