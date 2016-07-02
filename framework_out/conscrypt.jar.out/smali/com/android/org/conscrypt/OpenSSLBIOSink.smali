.class public final Lcom/android/org/conscrypt/OpenSSLBIOSink;
.super Ljava/lang/Object;
.source "OpenSSLBIOSink.java"


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final ctx:J

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    .line 33
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 34
    return-void
.end method

.method public static create()Lcom/android/org/conscrypt/OpenSSLBIOSink;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    return-wide v0
.end method

.method public position()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 43
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v1

    long-to-int v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 47
    .local v0, "maxLength":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 48
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->reset()V

    .line 51
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
