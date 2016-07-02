.class Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;
.super Ljava/lang/Object;
.source "MzPduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/android/mms/pdu/MzPduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferStack"
.end annotation


# instance fields
.field private stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

.field stackSize:I

.field final synthetic this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

.field private toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Lcom/meizu/android/mms/pdu/MzPduComposer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1456
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    .line 1458
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    .line 1460
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stackSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/android/mms/pdu/MzPduComposer;Lcom/meizu/android/mms/pdu/MzPduComposer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/android/mms/pdu/MzPduComposer;
    .param p2, "x1"    # Lcom/meizu/android/mms/pdu/MzPduComposer$1;

    .prologue
    .line 1456
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;-><init>(Lcom/meizu/android/mms/pdu/MzPduComposer;)V

    return-void
.end method


# virtual methods
.method copy()V
    .locals 4

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iget-object v1, v1, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iget v3, v3, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/android/mms/pdu/MzPduComposer;->arraycopy([BII)V

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    .line 1515
    return-void
.end method

.method mark()Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .locals 3

    .prologue
    .line 1521
    new-instance v0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;-><init>(Lcom/meizu/android/mms/pdu/MzPduComposer;Lcom/meizu/android/mms/pdu/MzPduComposer$1;)V

    .line 1523
    .local v0, "m":Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget v1, v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    # setter for: Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->c_pos:I
    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->access$402(Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;I)I

    .line 1524
    iget v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stackSize:I

    # setter for: Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->currentStackSize:I
    invoke-static {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->access$502(Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;I)I

    .line 1526
    return-object v0
.end method

.method newbuf()V
    .locals 3

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    if-eqz v1, :cond_0

    .line 1470
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1473
    :cond_0
    new-instance v0, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;-><init>(Lcom/meizu/android/mms/pdu/MzPduComposer$1;)V

    .line 1475
    .local v0, "temp":Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget-object v1, v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1476
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget v1, v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    iput v1, v0, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentPosition:I

    .line 1478
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iput-object v1, v0, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->next:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    .line 1479
    iput-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    .line 1481
    iget v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stackSize:I

    .line 1483
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1484
    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 1485
    return-void
.end method

.method pop()V
    .locals 4

    .prologue
    .line 1491
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget-object v0, v2, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1492
    .local v0, "currentMessage":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget v1, v2, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 1494
    .local v1, "currentPosition":I
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iget-object v3, v3, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Lcom/meizu/android/mms/pdu/MzPduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1495
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget-object v3, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iget v3, v3, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentPosition:I

    iput v3, v2, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    .line 1497
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    .line 1500
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iget-object v2, v2, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->next:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stack:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    .line 1501
    iget v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stackSize:I

    .line 1503
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iput-object v0, v2, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1504
    iget-object v2, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->toCopy:Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;

    iput v1, v2, Lcom/meizu/android/mms/pdu/MzPduComposer$LengthRecordNode;->currentPosition:I

    .line 1505
    return-void
.end method
