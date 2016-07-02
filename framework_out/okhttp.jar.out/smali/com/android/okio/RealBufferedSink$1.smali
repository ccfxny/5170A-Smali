.class Lcom/android/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okio/RealBufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okio/RealBufferedSink;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okio/RealBufferedSink;->close()V

    .line 143
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    # getter for: Lcom/android/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okio/RealBufferedSink;->access$000(Lcom/android/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okio/RealBufferedSink;->flush()V

    .line 139
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    # getter for: Lcom/android/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okio/RealBufferedSink;->access$000(Lcom/android/okio/RealBufferedSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/okio/OkBuffer;->writeByte(I)Lcom/android/okio/OkBuffer;

    .line 125
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    .line 126
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    # getter for: Lcom/android/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okio/RealBufferedSink;->access$000(Lcom/android/okio/RealBufferedSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okio/RealBufferedSink;->buffer:Lcom/android/okio/OkBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okio/OkBuffer;->write([BII)Lcom/android/okio/OkBuffer;

    .line 131
    iget-object v0, p0, Lcom/android/okio/RealBufferedSink$1;->this$0:Lcom/android/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okio/BufferedSink;

    .line 132
    return-void
.end method
