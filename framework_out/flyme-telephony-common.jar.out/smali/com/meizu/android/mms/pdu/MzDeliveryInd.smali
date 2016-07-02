.class public Lcom/meizu/android/mms/pdu/MzDeliveryInd;
.super Lcom/meizu/android/mms/pdu/MzGenericPdu;
.source "MzDeliveryInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>()V

    .line 36
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->setMessageType(I)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 64
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 83
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 102
    return-void
.end method

.method public setTo([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzDeliveryInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValues([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 121
    return-void
.end method
