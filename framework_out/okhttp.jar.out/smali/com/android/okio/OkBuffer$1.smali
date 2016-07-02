.class Lcom/android/okio/OkBuffer$1;
.super Ljava/io/OutputStream;
.source "OkBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okio/OkBuffer;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okio/OkBuffer;


# direct methods
.method constructor <init>(Lcom/android/okio/OkBuffer;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/okio/OkBuffer$1;->this$0:Lcom/android/okio/OkBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/okio/OkBuffer$1;->this$0:Lcom/android/okio/OkBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    .line 72
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/okio/OkBuffer$1;->this$0:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    .line 76
    return-void
.end method
