.class final Lcom/android/okhttp/internal/http/JavaApiConverter$1;
.super Ljava/net/SecureCacheResponse;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/http/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lcom/android/okhttp/Response$Body;

.field final synthetic val$handshake:Lcom/android/okhttp/Handshake;

.field final synthetic val$headers:Lcom/android/okhttp/Headers;

.field final synthetic val$response:Lcom/android/okhttp/Response;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Body;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    iput-object p2, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    iput-object p3, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    iput-object p4, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$body:Lcom/android/okhttp/Response$Body;

    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$body:Lcom/android/okhttp/Response$Body;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$body:Lcom/android/okhttp/Response$Body;

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$headers:Lcom/android/okhttp/Headers;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$response:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->statusLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v2, :cond_0

    .line 193
    :goto_0
    return-object v1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v2, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    if-nez v2, :cond_0

    .line 201
    :goto_0
    return-object v1

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/JavaApiConverter$1;->val$handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
