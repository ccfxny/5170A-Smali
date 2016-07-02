.class Lcom/android/org/conscrypt/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Platform$1;,
        Lcom/android/org/conscrypt/Platform$OpenSSLMapper;,
        Lcom/android/org/conscrypt/Platform$NoPreloadHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/Platform$OpenSSLMapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/Platform$OpenSSLMapper;-><init>(Lcom/android/org/conscrypt/Platform$1;)V

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->setSource(Lorg/apache/harmony/security/utils/AlgNameMapperSource;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/conscrypt/Platform$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform;-><init>()V

    return-void
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x509tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 112
    instance-of v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 113
    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 114
    .local v0, "tm":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 118
    .end local v0    # "tm":Lcom/android/org/conscrypt/TrustManagerImpl;
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurveName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "s"    # Ljava/net/Socket;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;
    .locals 6
    .param p0, "openSSLSocketImpl"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .prologue
    .line 82
    :try_start_0
    const-class v4, Ljava/net/Socket;

    const-string v5, "impl"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 83
    .local v2, "f_impl":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, "socketImpl":Ljava/lang/Object;
    const-class v4, Ljava/net/SocketImpl;

    const-string v5, "fd"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    .local v1, "f_fd":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 88
    .end local v1    # "f_fd":Ljava/lang/reflect/Field;
    .end local v2    # "f_impl":Ljava/lang/reflect/Field;
    .end local v3    # "socketImpl":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t get FileDescriptor from socket"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static isLiteralIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSniEnabledByDefault()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 12
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    const-string v7, "android.os.Process"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 134
    .local v3, "processClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 135
    .local v4, "processInstance":Ljava/lang/Object;
    const-string v8, "myUid"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 136
    .local v2, "myUidMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 138
    .local v5, "uid":I
    const-string v7, "android.util.EventLog"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, "eventLogClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "eventLogInstance":Ljava/lang/Object;
    const-string v7, "writeEvent"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, [Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 142
    .local v6, "writeEventMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x534e4554

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "conscrypt"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p0, v9, v10

    aput-object v9, v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "eventLogClass":Ljava/lang/Class;
    .end local v1    # "eventLogInstance":Ljava/lang/Object;
    .end local v2    # "myUidMethod":Ljava/lang/reflect/Method;
    .end local v3    # "processClass":Ljava/lang/Class;
    .end local v4    # "processInstance":Ljava/lang/Object;
    .end local v5    # "uid":I
    .end local v6    # "writeEventMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private ping()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public static setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 0
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Ljava/security/spec/ECParameterSpec;->setCurveName(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static setSocketWriteTimeout(Ljava/net/Socket;J)V
    .locals 5
    .param p0, "s"    # Ljava/net/Socket;
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1, p2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v1

    .line 104
    .local v1, "tv":Landroid/system/StructTimeval;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static setup()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    invoke-direct {v0}, Lcom/android/org/conscrypt/Platform;->ping()V

    .line 52
    return-void
.end method

.method public static wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method
