.class public Lcom/meizu/android/mms/pdu/MzRetrieveConf;
.super Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;
.source "MzRetrieveConf.java"


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
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;-><init>()V

    .line 36
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->setMessageType(I)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .param p2, "body"    # Lcom/meizu/android/mms/pdu/MzPduBody;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .line 56
    return-void
.end method


# virtual methods
.method public addCc(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->appendEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 75
    return-void
.end method

.method public getCc()[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getFrom()Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()[B
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadReport()I
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getRetrieveStatus()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getRetrieveText()Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setContentType([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 94
    return-void
.end method

.method public setDeliveryReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 113
    return-void
.end method

.method public setFrom(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 134
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 155
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 174
    return-void
.end method

.method public setReadReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 193
    return-void
.end method

.method public setRetrieveStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 212
    return-void
.end method

.method public setRetrieveText(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 231
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzRetrieveConf;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 250
    return-void
.end method
