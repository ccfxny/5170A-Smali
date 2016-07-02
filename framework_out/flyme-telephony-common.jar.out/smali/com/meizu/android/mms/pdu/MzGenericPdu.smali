.class public Lcom/meizu/android/mms/pdu/MzGenericPdu;
.super Ljava/lang/Object;
.source "MzGenericPdu.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 34
    new-instance v0, Lcom/meizu/android/mms/pdu/MzPduHeaders;

    invoke-direct {v0}, Lcom/meizu/android/mms/pdu/MzPduHeaders;-><init>()V

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/meizu/android/mms/pdu/MzPduHeaders;)V
    .locals 1
    .param p1, "headers"    # Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 43
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    .line 44
    return-void
.end method


# virtual methods
.method public getFrom()Lcom/meizu/android/mms/pdu/MzEncodedStringValue;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getEncodedStringValue(I)Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getMmsVersion()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method getPduHeaders()Lcom/meizu/android/mms/pdu/MzPduHeaders;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    return-object v0
.end method

.method public setFrom(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setEncodedStringValue(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;I)V

    .line 114
    return-void
.end method

.method public setMessageType(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 73
    return-void
.end method

.method public setMmsVersion(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzGenericPdu;->mPduHeaders:Lcom/meizu/android/mms/pdu/MzPduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Lcom/meizu/android/mms/pdu/MzPduHeaders;->setOctet(II)V

    .line 93
    return-void
.end method
