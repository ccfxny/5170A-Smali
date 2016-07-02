.class public Lcom/meizu/android/mms/pdu/MzNotifyRespInd;
.super Lcom/meizu/android/mms/pdu/MzGenericPdu;
.source "MzNotifyRespInd.java"


# direct methods
.method public constructor <init>(I[BI)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->setMessageType(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->setMmsVersion(I)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->setTransactionId([B)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->setStatus(I)V

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setReportAllowed(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 73
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
    .line 83
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 84
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzNotifyRespInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 113
    return-void
.end method
