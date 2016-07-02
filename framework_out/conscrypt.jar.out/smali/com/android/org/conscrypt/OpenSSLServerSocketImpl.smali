.class public Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "OpenSSLServerSocketImpl.java"


# instance fields
.field private channelIdEnabled:Z

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;


# direct methods
.method protected constructor <init>(IILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 43
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 44
    return-void
.end method

.method protected constructor <init>(IILjava/net/InetAddress;Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "iAddress"    # Ljava/net/InetAddress;
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 52
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 53
    return-void
.end method

.method protected constructor <init>(ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    .line 37
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 32
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 169
    .local v0, "socket":Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->channelIdEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdEnabled(Z)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    .line 171
    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isChannelIdEnabled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->channelIdEnabled:Z

    return v0
.end method

.method public setChannelIdEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->channelIdEnabled:Z

    .line 114
    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 63
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 154
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 159
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 144
    return-void
.end method
