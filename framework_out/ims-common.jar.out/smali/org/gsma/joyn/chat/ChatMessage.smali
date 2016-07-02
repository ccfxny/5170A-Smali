.class public Lorg/gsma/joyn/chat/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gsma/joyn/chat/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:Ljava/lang/String; = "text/plain"

.field public static final TAG:Ljava/lang/String; = "TAPI-ChatMessage"


# instance fields
.field private contact:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private displayedReportRequested:Z

.field private id:Ljava/lang/String;

.field private isBurnMessage:Z

.field private isCloudMessage:Z

.field private isEmoticonMessage:Z

.field private isPublicMessage:Z

.field private message:Ljava/lang/String;

.field private receiptAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lorg/gsma/joyn/chat/ChatMessage$1;

    invoke-direct {v0}, Lorg/gsma/joyn/chat/ChatMessage$1;-><init>()V

    sput-object v0, Lorg/gsma/joyn/chat/ChatMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v2, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayedReportRequested:Z

    .line 73
    iput-boolean v2, p0, Lorg/gsma/joyn/chat/ChatMessage;->isBurnMessage:Z

    .line 75
    iput-boolean v2, p0, Lorg/gsma/joyn/chat/ChatMessage;->isPublicMessage:Z

    .line 77
    iput-boolean v2, p0, Lorg/gsma/joyn/chat/ChatMessage;->isCloudMessage:Z

    .line 79
    iput-boolean v2, p0, Lorg/gsma/joyn/chat/ChatMessage;->isEmoticonMessage:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->id:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->contact:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->message:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->receiptAt:Ljava/util/Date;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayedReportRequested:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isBurnMessage:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isPublicMessage:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isCloudMessage:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lorg/gsma/joyn/chat/ChatMessage;->isEmoticonMessage:Z

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    :cond_1
    move v0, v2

    .line 117
    goto :goto_1

    :cond_2
    move v0, v2

    .line 118
    goto :goto_2

    :cond_3
    move v0, v2

    .line 119
    goto :goto_3

    :cond_4
    move v1, v2

    .line 120
    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZLjava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "receiptAt"    # Ljava/util/Date;
    .param p5, "displayedReportRequested"    # Z
    .param p6, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayedReportRequested:Z

    .line 73
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isBurnMessage:Z

    .line 75
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isPublicMessage:Z

    .line 77
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isCloudMessage:Z

    .line 79
    iput-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isEmoticonMessage:Z

    .line 93
    const-string v0, "TAPI-ChatMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatMessage entrymessageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receiptAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " displayedReportRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "TAPI-ChatMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ABCG ChatMessage entrydisplayname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lorg/gsma/joyn/chat/ChatMessage;->id:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lorg/gsma/joyn/chat/ChatMessage;->contact:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lorg/gsma/joyn/chat/ChatMessage;->message:Ljava/lang/String;

    .line 99
    iput-boolean p5, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayedReportRequested:Z

    .line 100
    iput-object p4, p0, Lorg/gsma/joyn/chat/ChatMessage;->receiptAt:Ljava/util/Date;

    .line 101
    iput-object p6, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayName:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->receiptAt:Ljava/util/Date;

    return-object v0
.end method

.method public isBurnMessage()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isBurnMessage:Z

    return v0
.end method

.method public isCloudMessage()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isCloudMessage:Z

    return v0
.end method

.method public isDisplayedReportRequested()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayedReportRequested:Z

    return v0
.end method

.method public isEmoticonMessage()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isEmoticonMessage:Z

    return v0
.end method

.method public isPublicMessage()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isPublicMessage:Z

    return v0
.end method

.method public setBurnMessage(Z)V
    .locals 0
    .param p1, "burnFlag"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lorg/gsma/joyn/chat/ChatMessage;->isBurnMessage:Z

    .line 240
    return-void
.end method

.method public setCloudMessage(Z)V
    .locals 0
    .param p1, "burnFlag"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lorg/gsma/joyn/chat/ChatMessage;->isCloudMessage:Z

    .line 248
    return-void
.end method

.method public setEmoticonMessage(Z)V
    .locals 0
    .param p1, "burnFlag"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lorg/gsma/joyn/chat/ChatMessage;->isEmoticonMessage:Z

    .line 256
    return-void
.end method

.method public setPublicMessage(Z)V
    .locals 0
    .param p1, "publicFlag"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lorg/gsma/joyn/chat/ChatMessage;->isPublicMessage:Z

    .line 274
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->contact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->receiptAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayedReportRequested:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isBurnMessage:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 149
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isPublicMessage:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isCloudMessage:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-boolean v0, p0, Lorg/gsma/joyn/chat/ChatMessage;->isEmoticonMessage:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v0, v2

    .line 148
    goto :goto_1

    :cond_2
    move v0, v2

    .line 149
    goto :goto_2

    :cond_3
    move v0, v2

    .line 150
    goto :goto_3

    :cond_4
    move v1, v2

    .line 151
    goto :goto_4
.end method
