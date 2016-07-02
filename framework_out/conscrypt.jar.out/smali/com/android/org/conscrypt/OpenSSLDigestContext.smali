.class public Lcom/android/org/conscrypt/OpenSSLDigestContext;
.super Lcom/android/org/conscrypt/OpenSSLNativeReference;
.source "OpenSSLDigestContext.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLNativeReference;-><init>(J)V

    .line 22
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
    .line 27
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLDigestContext;->context:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_destroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 31
    return-void

    .line 29
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
