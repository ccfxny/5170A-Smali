.class public Lorg/gsma/joyn/chat/ChatServiceConfiguration;
.super Ljava/lang/Object;
.source "ChatServiceConfiguration.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/chat/ChatServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ChatServiceConfiguration"


# instance fields
.field private autoAcceptGroupChat:Z

.field private autoAcceptSingleChat:Z

.field private chatTimeout:I

.field private displayedDeliveryReport:Z

.field private geolocExpireTime:I

.field private isComposingTimeout:I

.field private mIsImCapAlwaysOn:Z

.field private maxGeolocLabelLength:I

.field private maxGroupChat:I

.field private maxGroupChatParticipants:I

.field private maxMsgLengthGroupChat:J

.field private maxMsgLengthSingleChat:J

.field private smsFallback:Z

.field private warnSF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lorg/gsma/joyn/chat/ChatServiceConfiguration$1;

    invoke-direct {v0}, Lorg/gsma/joyn/chat/ChatServiceConfiguration$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->chatTimeout:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->isComposingTimeout:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChatParticipants:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthSingleChat:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthGroupChat:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->smsFallback:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptSingleChat:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptGroupChat:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->displayedDeliveryReport:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->warnSF:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChat:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGeolocLabelLength:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->geolocExpireTime:I

    .line 168
    return-void

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0

    :cond_1
    move v0, v2

    .line 161
    goto :goto_1

    :cond_2
    move v0, v2

    .line 162
    goto :goto_2

    :cond_3
    move v0, v2

    .line 163
    goto :goto_3

    :cond_4
    move v1, v2

    .line 164
    goto :goto_4
.end method

.method public constructor <init>(ZIIIJJIZZZZIIZ)V
    .locals 5
    .param p1, "warnSF"    # Z
    .param p2, "chatTimeout"    # I
    .param p3, "isComposingTimeout"    # I
    .param p4, "maxGroupChatParticipants"    # I
    .param p5, "maxMsgLengthSingleChat"    # J
    .param p7, "maxMsgLengthGroupChat"    # J
    .param p9, "maxGroupChat"    # I
    .param p10, "smsFallback"    # Z
    .param p11, "autoAcceptSingleChat"    # Z
    .param p12, "autoAcceptGroupChat"    # Z
    .param p13, "displayedDeliveryReport"    # Z
    .param p14, "maxGeolocLabelLength"    # I
    .param p15, "geolocExpireTime"    # I
    .param p16, "isImCapAlwaysOn"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v1, "ChatServiceConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChatServiceConfiguration entrywarnSF "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chatTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isComposingTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxGroupChatParticipants"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxMsgLengthSingleChat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxMsgLengthGroupChat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxGroupChat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "smsFallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autoAcceptSingleChat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autoAcceptGroupChat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "displayedDeliveryReport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxGeolocLabelLength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "geolocExpireTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isImCapAlwaysOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-boolean p1, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->warnSF:Z

    .line 133
    iput p2, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->chatTimeout:I

    .line 134
    iput p3, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->isComposingTimeout:I

    .line 135
    iput p4, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChatParticipants:I

    .line 136
    iput-wide p5, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthSingleChat:J

    .line 137
    iput-wide p7, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthGroupChat:J

    .line 138
    iput p9, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChat:I

    .line 139
    iput-boolean p10, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->smsFallback:Z

    .line 140
    move/from16 v0, p11

    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptSingleChat:Z

    .line 141
    move/from16 v0, p12

    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptGroupChat:Z

    .line 142
    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->displayedDeliveryReport:Z

    .line 143
    move/from16 v0, p14

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGeolocLabelLength:I

    .line 144
    move/from16 v0, p15

    iput v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->geolocExpireTime:I

    .line 145
    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->mIsImCapAlwaysOn:Z

    .line 146
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getChatSessionTimeout()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->chatTimeout:I

    return v0
.end method

.method public getGeolocExpirationTime()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->geolocExpireTime:I

    return v0
.end method

.method public getGeolocLabelMaxLength()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGeolocLabelLength:I

    return v0
.end method

.method public getGroupChatMaxParticipantsNumber()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChatParticipants:I

    return v0
.end method

.method public getGroupChatMessageMaxLength()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthGroupChat:J

    return-wide v0
.end method

.method public getIsComposingTimeout()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->isComposingTimeout:I

    return v0
.end method

.method public getMaxGroupChats()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChat:I

    return v0
.end method

.method public getSingleChatMessageMaxLength()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthSingleChat:J

    return-wide v0
.end method

.method public isChatAutoAcceptMode()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptSingleChat:Z

    return v0
.end method

.method public isDisplayedDeliveryReport()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->displayedDeliveryReport:Z

    return v0
.end method

.method public isGroupChatAutoAcceptMode()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptGroupChat:Z

    return v0
.end method

.method public isImCapAlwaysOn()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->mIsImCapAlwaysOn:Z

    return v0
.end method

.method public isImWarnSf()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->warnSF:Z

    return v0
.end method

.method public isSmsFallback()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->smsFallback:Z

    return v0
.end method

.method public setDisplayedDeliveryReport(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->displayedDeliveryReport:Z

    .line 329
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->chatTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->isComposingTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChatParticipants:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-wide v4, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthSingleChat:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget-wide v4, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxMsgLengthGroupChat:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->smsFallback:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptSingleChat:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->autoAcceptGroupChat:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->displayedDeliveryReport:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->warnSF:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGroupChat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->maxGeolocLabelLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lorg/gsma/joyn/chat/ChatServiceConfiguration;->geolocExpireTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v0, v2

    .line 195
    goto :goto_1

    :cond_2
    move v0, v2

    .line 196
    goto :goto_2

    :cond_3
    move v0, v2

    .line 197
    goto :goto_3

    :cond_4
    move v1, v2

    .line 198
    goto :goto_4
.end method
