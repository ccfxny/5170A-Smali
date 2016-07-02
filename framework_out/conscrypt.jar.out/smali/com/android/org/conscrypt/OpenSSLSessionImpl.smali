.class public Lcom/android/org/conscrypt/OpenSSLSessionImpl;
.super Ljava/lang/Object;
.source "OpenSSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private isValid:Z

.field lastAccessedTime:J

.field final localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

.field protected sslSessionNativePointer:J

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 3
    .param p1, "sslSessionNativePointer"    # J
    .param p3, "localCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p5, "peerHost"    # Ljava/lang/String;
    .param p6, "peerPort"    # I
    .param p7, "sessionContext"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    .line 40
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    .line 62
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    .line 63
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 64
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 65
    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 66
    iput p6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    .line 67
    iput-object p7, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 68
    return-void
.end method

.method constructor <init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 9
    .param p1, "derData"    # [B
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p5, "sessionContext"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p2

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    .line 87
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid session data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    return-void
.end method

.method private createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    new-array v0, v5, [Ljavax/security/cert/X509Certificate;

    .line 229
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 230
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 231
    .local v2, "encoded":[B
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .end local v2    # "encoded":[B
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 236
    .local v3, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 237
    throw v3

    .line 238
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_1
    move-exception v1

    .line 239
    .local v1, "e":Ljavax/security/cert/CertificateException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw v3

    .line 233
    .end local v1    # "e":Ljavax/security/cert/CertificateException;
    .end local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .restart local v4    # "i":I
    :cond_0
    return-object v0
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
    .line 485
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 489
    return-void

    .line 487
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getApplicationBufferSize()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 320
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 323
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 326
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    return-object v1
.end method

.method public getCreationTime()J
    .locals 4

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 131
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    .line 133
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method getEncoded()[B
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    goto :goto_0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPacketBufferSize()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x4805

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 211
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 212
    .local v0, "result":[Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 216
    :cond_0
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 258
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 282
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 336
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 399
    return-void
.end method

.method public isValid()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 361
    iget-boolean v8, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    if-nez v8, :cond_0

    .line 389
    :goto_0
    return v6

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 367
    .local v2, "context":Ljavax/net/ssl/SSLSessionContext;
    if-nez v2, :cond_1

    move v6, v7

    .line 369
    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {v2}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v3

    .line 373
    .local v3, "timeoutSeconds":I
    if-nez v3, :cond_2

    move v6, v7

    .line 375
    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v4

    .line 379
    .local v4, "creationTimestampMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 382
    .local v0, "ageSeconds":J
    int-to-long v8, v3

    cmp-long v8, v0, v8

    if-gez v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_4

    .line 384
    :cond_3
    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    goto :goto_0

    :cond_4
    move v6, v7

    .line 389
    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 445
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_2

    .line 450
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 453
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_3

    .line 454
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local v0    # "old":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 457
    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 476
    .local v1, "old":Ljava/lang/Object;
    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 477
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 478
    .local v0, "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 480
    .end local v0    # "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_1
    return-void
.end method

.method resetId()V
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    .line 114
    return-void
.end method
