.class public Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;
.super Lcom/meizu/android/mms/pdu/MzGenericPdu;
.source "MzMultimediaMessagePdu.java"


# instance fields
.field private mMessageBody:Lcom/meizu/android/mms/pdu/MzPduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>()V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V
    .locals 0
    .param p1, "header"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .param p2, "body"    # Lcom/meizu/android/mms/pdu/MzPduBody;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 46
    iput-object p2, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mMessageBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    .line 47
    return-void
.end method


# virtual methods
.method public addTo(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->appendEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 112
    return-void
.end method

.method public getBody()Lcom/meizu/android/mms/pdu/MzPduBody;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mMessageBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getSubject()Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTo()[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lcom/meizu/android/mms/pdu/MzPduBody;)V
    .locals 0
    .param p1, "body"    # Lcom/meizu/android/mms/pdu/MzPduBody;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mMessageBody:Lcom/meizu/android/mms/pdu/MzPduBody;

    .line 74
    return-void
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 148
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 149
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 131
    return-void
.end method

.method public setSubject(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 93
    return-void
.end method
