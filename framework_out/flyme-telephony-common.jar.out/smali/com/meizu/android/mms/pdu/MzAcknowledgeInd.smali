.class public Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;
.super Lcom/meizu/android/mms/pdu/MzGenericPdu;
.source "MzAcknowledgeInd.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>()V

    .line 38
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;->setMessageType(I)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;->setMmsVersion(I)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;->setTransactionId([B)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzGenericPdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

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
    .line 68
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 69
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzAcknowledgeInd;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 88
    return-void
.end method
