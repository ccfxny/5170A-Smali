.class public final Lcom/android/org/conscrypt/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 43
    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .locals 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "anchors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 129
    .local v3, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 132
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 133
    .local v1, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 138
    .local v2, "caPublicKey":Ljava/security/PublicKey;
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v1    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "caPublicKey":Ljava/security/PublicKey;
    :goto_2
    return-object v0

    .line 136
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "caPublicKey":Ljava/security/PublicKey;
    goto :goto_1

    .line 145
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v1    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "caPublicKey":Ljava/security/PublicKey;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 141
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private index(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 47
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_0

    .line 49
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    return-void
.end method


# virtual methods
.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v6, 0x0

    .line 90
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 91
    .local v4, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v7

    .line 92
    :try_start_0
    iget-object v8, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 93
    .local v1, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v1, :cond_0

    .line 94
    monitor-exit v7

    move-object v0, v6

    .line 112
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 101
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 106
    .local v5, "publicKey":Ljava/security/PublicKey;
    :goto_2
    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    monitor-exit v7

    goto :goto_0

    .line 111
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v1    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 104
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .restart local v5    # "publicKey":Ljava/security/PublicKey;
    goto :goto_2

    .line 111
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v6

    .line 112
    goto :goto_0

    .line 108
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 117
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    .line 120
    const/4 v2, 0x0

    monitor-exit v3

    .line 122
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 123
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 52
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 53
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    .line 54
    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .locals 5
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 60
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 66
    .local v2, "subject":Ljavax/security/auth/x500/X500Principal;
    :goto_0
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v4

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 68
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    return-void

    .line 63
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .restart local v2    # "subject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
