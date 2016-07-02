.class public Lcom/meizu/android/mms/pdu/MzReadOrigInd;
.super Lcom/meizu/android/mms/pdu/MzGenericPdu;
.source "MzReadOrigInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>()V

    .line 33
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->setMessageType(I)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadStatus()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 61
    return-void
.end method

.method public setFrom(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 82
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 101
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
    .line 119
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 120
    return-void
.end method

.method public setTo([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzReadOrigInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValues([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 139
    return-void
.end method
