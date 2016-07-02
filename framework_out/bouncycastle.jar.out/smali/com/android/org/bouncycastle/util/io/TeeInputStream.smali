.class public Lcom/android/org/bouncycastle/util/io/TeeInputStream;
.super Ljava/io/InputStream;
.source "TeeInputStream.java"


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    .line 17
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
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 56
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 43
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 48
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 30
    .local v0, "i":I
    if-lez v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    :cond_0
    return v0
.end method
