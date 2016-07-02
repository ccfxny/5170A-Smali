.class Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;
.super Ljava/lang/Object;
.source "MzPduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/android/mms/pdu/MzPduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LengthRecordNode"
.end annotation


# instance fields
.field currentMessage:Ljava/io/ByteArrayOutputStream;

.field public currentPosition:I

.field public next:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1427
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentPosition:I

    .line 1429
    iput-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->next:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/android/mms/pdu/MzPduComposer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/android/mms/pdu/MzPduComposer$1;

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;-><init>()V

    return-void
.end method
