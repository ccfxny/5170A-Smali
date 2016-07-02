.class public Lcom/android/org/conscrypt/ServerSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 30
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 45
    iget-wide v0, p0, Lcom/android/org/conscrypt/ServerSessionContext;->sslCtxNativePointer:J

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x20

    aput-byte v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(J[B)V

    .line 46
    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 4
    .param p1, "sessionId"    # [B

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 58
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 74
    :cond_0
    :goto_0
    return-object v2

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v3, p1}, Lcom/android/org/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 65
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 66
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/org/conscrypt/ServerSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-super {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    move-object v2, v1

    .line 69
    goto :goto_0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 2
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 82
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 84
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v1, p1, v0}, Lcom/android/org/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 88
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 0
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 53
    return-void
.end method

.method public setPersistentCache(Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .locals 0
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLServerSessionCache;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    .line 50
    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0
    .param p1, "x0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
.end method
