.class public Lcom/meizu/android/mms/pdu/MzSendReq;
.super Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;
.source "MzSendReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendReq"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;-><init>()V

    .line 31
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzSendReq;->setMessageType(I)V

    .line 32
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzSendReq;->setMmsVersion(I)V

    .line 35
    const-string v1, "application/vnd.wap.multipart.related"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzSendReq;->setContentType([B)V

    .line 36
    new-instance v1, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzSendReq;->setFrom(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 37
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzSendReq;->generateTransactionId()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/android/mms/pdu/MzSendReq;->setTransactionId([B)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .param p2, "body"    # Lcom/meizu/android/mms/pdu/MzPduBody;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;-><init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .line 89
    return-void
.end method

.method public constructor <init>([BLcom/meizu/android/mms/pdu/MzEncodedStringValue;I[B)V
    .locals 1
    .param p1, "contentType"    # [B
    .param p2, "from"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .param p3, "mmsVersion"    # I
    .param p4, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzMultimediaMessagePdu;-><init>()V

    .line 65
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/meizu/android/mms/pdu/MzSendReq;->setMessageType(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/meizu/android/mms/pdu/MzSendReq;->setContentType([B)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/meizu/android/mms/pdu/MzSendReq;->setFrom(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 68
    invoke-virtual {p0, p3}, Lcom/meizu/android/mms/pdu/MzSendReq;->setMmsVersion(I)V

    .line 69
    invoke-virtual {p0, p4}, Lcom/meizu/android/mms/pdu/MzSendReq;->setTransactionId([B)V

    .line 70
    return-void
.end method

.method private generateTransactionId()[B
    .locals 4

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "transactionId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addBcc(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->appendEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 108
    return-void
.end method

.method public addCc(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->appendEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 137
    return-void
.end method

.method public getBcc()[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCc()[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValues(I)[Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageClass()[B
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadReport()I
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setBcc([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValues([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 118
    return-void
.end method

.method public setCc([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValues([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 147
    return-void
.end method

.method public setContentType([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 166
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
    .line 184
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 185
    return-void
.end method

.method public setExpiry(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 205
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 206
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 246
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 247
    return-void
.end method

.method public setMessageSize(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setLongInteger(JI)V

    .line 226
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
    .line 265
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 266
    return-void
.end method

.method public setTo([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValues([Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 276
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 294
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzSendReq;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setTextString([BI)V

    .line 295
    return-void
.end method
