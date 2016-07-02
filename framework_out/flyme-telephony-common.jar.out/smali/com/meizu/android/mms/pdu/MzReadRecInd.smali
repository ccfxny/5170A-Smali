.class public Lcom/meizu/android/mms/pdu/MzReadRecInd;
.super Lcom/meizu/android/mms/pdu/MzGenericPdu;
.source "MzReadRecInd.java"


# direct methods
.method public constructor <init>(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;[BII[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 1
    .param p1, "from"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .param p2, "messageId"    # [B
    .param p3, "mmsVersion"    # I
    .param p4, "readStatus"    # I
    .param p5, "to"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzReadRecInd;->setMessageType(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/meizu/android/mms/pdu/MzReadRecInd;->setFrom(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/meizu/android/mms/pdu/MzReadRecInd;->setMessageId([B)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/meizu/android/mms/pdu/MzReadRecInd;->setMmsVersion(I)V

    .line 44
    invoke-virtual {p0, p5}, Lcom/meizu/android/mms/pdu/MzReadRecInd;->setTo([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 45
    invoke-virtual {p0, p4}, Lcom/meizu/android/mms/pdu/MzReadRecInd;->setReadStatus(I)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadStatus()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 73
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 92
    return-void
.end method

.method public setReadStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 130
    return-void
.end method

.method public setTo([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadRecInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValues([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 111
    return-void
.end method
