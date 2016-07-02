.class public Lcom/android/org/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# instance fields
.field private final transient mContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 59
    return-void
.end method

.method private static alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p0, "altNameArray"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 459
    if-nez p0, :cond_0

    .line 460
    const/4 v2, 0x0

    .line 468
    :goto_0
    return-object v2

    .line 463
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 465
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method public static fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_0

    .line 163
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 165
    .end local p0    # "cert":Ljava/security/cert/Certificate;
    :goto_0
    return-object p0

    .line 164
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Only X.509 certificates are supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 98
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 101
    if-nez v1, :cond_1

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 113
    :cond_0
    return-object v2

    .line 95
    .end local v1    # "certRefs":[J
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    .line 105
    .restart local v1    # "certRefs":[J
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 108
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 107
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    :cond_2
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 146
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 152
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 151
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    .line 155
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_1
    return-object v2
.end method

.method public static fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 4
    .param p0, "encoded"    # [B

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509([B)J

    move-result-wide v0

    .line 81
    .local v0, "certCtx":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 84
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    goto :goto_0
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_bio(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 68
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 69
    const/4 v4, 0x0

    .line 75
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    :goto_0
    return-object v4

    .line 71
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 72
    .end local v2    # "certCtx":J
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 123
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 124
    const/4 v4, 0x0

    .line 130
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    :goto_0
    return-object v4

    .line 126
    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 127
    .end local v2    # "certCtx":J
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "sigAlg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 366
    :cond_0
    if-nez p2, :cond_1

    .line 367
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 372
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 374
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 375
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 377
    :cond_2
    return-void
.end method

.method private verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 6
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 349
    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_verify(JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 352
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1}, Ljava/security/SignatureException;-><init>()V

    throw v1
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 223
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate not valid until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_1

    .line 234
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 485
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 486
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 488
    .local v0, "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_cmp(JJ)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 491
    .end local v0    # "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :goto_0
    return v1

    .line 488
    .restart local v0    # "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 491
    .end local v0    # "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_1
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 513
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 514
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBasicConstraints()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 328
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    move v0, v1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_pathlen(J)I

    move-result v0

    .line 333
    .local v0, "pathLen":I
    if-ne v0, v1, :cond_0

    .line 334
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-wide v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 187
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 450
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_xkusage(J)[Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "extUsage":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 452
    const/4 v1, 0x0

    .line 455
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_issuerUID(J)[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .prologue
    .line 438
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_issuer_name(J)[B

    move-result-object v0

    .line 439
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getKeyUsage()[Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 312
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_kusage(J)[Z

    move-result-object v0

    .line 313
    .local v0, "kusage":[Z
    if-nez v0, :cond_1

    .line 314
    const/4 v0, 0x0

    .line 323
    .end local v0    # "kusage":[Z
    :cond_0
    :goto_0
    return-object v0

    .line 317
    .restart local v0    # "kusage":[Z
    :cond_1
    array-length v2, v0

    if-ge v2, v5, :cond_0

    .line 321
    new-array v1, v5, [Z

    .line 322
    .local v1, "resized":[Z
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    move-object v0, v1

    .line 323
    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 4

    .prologue
    .line 269
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 270
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 271
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notAfter(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 272
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 4

    .prologue
    .line 261
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 262
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 263
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notBefore(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 264
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 6

    .prologue
    .line 414
    :try_start_0
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_pubkey(J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 415
    .local v3, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 433
    .end local v3    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :goto_0
    return-object v4

    .line 416
    :catch_0
    move-exception v4

    .line 420
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_pubkey_oid(J)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "oid":Ljava/lang/String;
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(J)[B

    move-result-object v0

    .line 423
    .local v0, "encoded":[B
    :try_start_1
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 424
    .local v1, "kf":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 426
    .end local v1    # "kf":Ljava/security/KeyFactory;
    :catch_1
    move-exception v4

    .line 433
    :goto_1
    new-instance v4, Lcom/android/org/conscrypt/X509PublicKey;

    invoke-direct {v4, v2, v0}, Lcom/android/org/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    goto :goto_0

    .line 425
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 246
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_signature(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 473
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_subjectUID(J)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .prologue
    .line 444
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_subject_name(J)[B

    move-result-object v0

    .line 445
    .local v0, "subject":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_cert_info_enc(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_version(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 400
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 401
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v8}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 403
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_print_ex(JJJJ)V

    .line 404
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 406
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 382
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v1, :cond_0

    .line 383
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 384
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 389
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :goto_0
    return-void

    .line 388
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 396
    return-void
.end method
