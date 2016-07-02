.class Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
.super Ljava/lang/Object;
.source "MzPduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/android/mms/pdu/MzPduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionMarker"
.end annotation


# instance fields
.field private c_pos:I

.field private currentStackSize:I

.field final synthetic this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;


# direct methods
.method private constructor <init>(Lcom/meizu/android/mms/pdu/MzPduComposer;)V
    .locals 0

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/android/mms/pdu/MzPduComposer;Lcom/meizu/android/mms/pdu/MzPduComposer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/android/mms/pdu/MzPduComposer;
    .param p2, "x1"    # Lcom/meizu/android/mms/pdu/MzPduComposer$1;

    .prologue
    .line 1435
    invoke-direct {p0, p1}, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;-><init>(Lcom/meizu/android/mms/pdu/MzPduComposer;)V

    return-void
.end method

.method static synthetic access$402(Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .param p1, "x1"    # I

    .prologue
    .line 1435
    iput p1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->c_pos:I

    return p1
.end method

.method static synthetic access$502(Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;
    .param p1, "x1"    # I

    .prologue
    .line 1435
    iput p1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->currentStackSize:I

    return p1
.end method


# virtual methods
.method getLength()I
    .locals 2

    .prologue
    .line 1443
    iget v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->currentStackSize:I

    iget-object v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    # getter for: Lcom/meizu/android/mms/pdu/MzPduComposer;->mStack:Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;
    invoke-static {v1}, Lcom/meizu/android/mms/pdu/MzPduComposer;->access$100(Lcom/meizu/android/mms/pdu/MzPduComposer;)Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;

    move-result-object v1

    iget v1, v1, Lcom/meizu/android/mms/pdu/MzPduComposer$BufferStack;->stackSize:I

    if-eq v0, v1, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid call to getLength()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->this$0:Lcom/meizu/android/mms/pdu/MzPduComposer;

    iget v0, v0, Lcom/meizu/android/mms/pdu/MzPduComposer;->mPosition:I

    iget v1, p0, Lcom/meizu/android/mms/pdu/MzPduComposer$PositionMarker;->c_pos:I

    sub-int/2addr v0, v1

    return v0
.end method
