.class public final Lcom/google/android/mms/util/PduCacheEntry;
.super Ljava/lang/Object;
.source "PduCacheEntry.java"


# instance fields
.field private mFileLink:Ljava/lang/String;

.field private final mMessageBox:I

.field private mMmsDescription:Ljava/lang/String;

.field private final mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    .locals 1
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "msgBox"    # I
    .param p3, "threadId"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 34
    iput p2, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    .line 35
    iput-wide p3, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/mms/pdu/GenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "msgBox"    # I
    .param p3, "threadId"    # J
    .param p5, "fileLink"    # Ljava/lang/String;
    .param p6, "mmsDescription"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    .line 41
    iput-object p5, p0, Lcom/google/android/mms/util/PduCacheEntry;->mFileLink:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMmsDescription:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getFileLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mFileLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBox()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public getMmsDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMmsDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    return-wide v0
.end method
