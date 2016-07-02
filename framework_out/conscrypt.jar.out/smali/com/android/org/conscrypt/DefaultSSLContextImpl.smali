.class public final Lcom/android/org/conscrypt/DefaultSSLContextImpl;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# static fields
.field private static KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>(Lcom/android/org/conscrypt/DefaultSSLContextImpl;)V

    .line 60
    return-void
.end method


# virtual methods
.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Do not init() the default SSLContext "

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 64
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v8, :cond_1

    .line 65
    sget-object v7, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 90
    :cond_0
    :goto_0
    return-object v7

    .line 68
    :cond_1
    const-string v8, "javax.net.ssl.keyStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "keystore":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 72
    const-string v8, "javax.net.ssl.keyStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "keystorepwd":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 75
    .local v7, "pwd":[C
    :goto_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 76
    .local v6, "ks":Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 78
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6, v1, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 86
    :cond_2
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "kmfAlg":Ljava/lang/String;
    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 88
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v4, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 89
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v8

    sput-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 90
    sget-object v7, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    goto :goto_0

    .line 73
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kmfAlg":Ljava/lang/String;
    .end local v6    # "ks":Ljava/security/KeyStore;
    .end local v7    # "pwd":[C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    goto :goto_1

    .line 81
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v6    # "ks":Ljava/security/KeyStore;
    .restart local v7    # "pwd":[C
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v8

    .line 81
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v8, :cond_1

    .line 96
    sget-object v5, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 122
    :cond_0
    :goto_0
    return-object v5

    .line 100
    :cond_1
    const-string v8, "javax.net.ssl.trustStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "keystore":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 104
    const-string v8, "javax.net.ssl.trustStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "keystorepwd":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 108
    .local v5, "pwd":[C
    :goto_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 109
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 111
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 118
    :cond_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "tmfAlg":Ljava/lang/String;
    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 120
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v6, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 121
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    sput-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 122
    sget-object v5, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    goto :goto_0

    .line 105
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .end local v5    # "pwd":[C
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v7    # "tmfAlg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    goto :goto_1

    .line 114
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "pwd":[C
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v8

    .line 114
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method
