.class public Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "OpenSSLBIOInputStream.java"


# instance fields
.field private ctx:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    .line 35
    return-void
.end method


# virtual methods
.method public getBioContext()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-wide v0
.end method

.method public gets([B)I
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 74
    :cond_1
    return v1

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    .local v1, "offset":I
    const/4 v0, 0x0

    .line 56
    .local v0, "inputByte":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->read()I

    move-result v0

    .line 58
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 62
    const/16 v3, 0xa

    if-ne v0, v3, :cond_3

    .line 63
    if-nez v1, :cond_1

    goto :goto_0

    .line 71
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v0

    aput-byte v3, p1, v1

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 43
    return-void
.end method
