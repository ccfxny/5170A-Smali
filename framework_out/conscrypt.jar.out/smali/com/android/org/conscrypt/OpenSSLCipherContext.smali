.class Lcom/android/org/conscrypt/OpenSSLCipherContext;
.super Ljava/lang/Object;
.source "OpenSSLCipherContext.java"


# instance fields
.field private final context:J


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "ctx"    # J

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ctx == 0"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherContext;->context:J

    .line 28
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherContext;->context:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    return-void

    .line 35
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getContext()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherContext;->context:J

    return-wide v0
.end method
