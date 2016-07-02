.class Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLBIOSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field private final source:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    .line 59
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 78
    .local v0, "originalPosition":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 85
    .local v1, "toRead":I
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 86
    .local v0, "originalPosition":I
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 87
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v0

    return v2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 93
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 98
    .local v0, "originalPosition":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    int-to-long v2, v0

    add-long/2addr v2, p1

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-long v2, v1

    return-wide v2
.end method
