.class public final Lcom/meizu/android/mms/util/MzPduCacheEntry;
.super Ljava/lang/Object;
.source "MzPduCacheEntry.java"


# instance fields
.field private mFileLink:Ljava/lang/String;

.field private final mMessageBox:I

.field private mMmsDescription:Ljava/lang/String;

.field private final mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJ)V
    .locals 1
    .param p1, "pdu"    # Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .param p2, "msgBox"    # I
    .param p3, "threadId"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

    .line 32
    iput p2, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mMessageBox:I

    .line 33
    iput-wide p3, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mThreadId:J

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pdu"    # Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .param p2, "msgBox"    # I
    .param p3, "threadId"    # J
    .param p5, "fileLink"    # Ljava/lang/String;
    .param p6, "mmsDescription"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/android/mms/util/MzPduCacheEntry;-><init>(Lcom/meizu/android/mms/pdu/MzGenericPdu;IJ)V

    .line 38
    iput-object p5, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mFileLink:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mMmsDescription:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getFileLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mFileLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBox()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public getMmsDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mMmsDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPdu()Lcom/meizu/android/mms/pdu/MzGenericPdu;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mPdu:Lcom/meizu/android/mms/pdu/MzGenericPdu;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/meizu/android/mms/util/MzPduCacheEntry;->mThreadId:J

    return-wide v0
.end method
