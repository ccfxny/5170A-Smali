.class public Lorg/simalliance/openmobileapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# instance fields
.field private final mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;

.field private mSession:Lorg/simalliance/openmobileapi/Session;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "session"    # Lorg/simalliance/openmobileapi/Session;
    .param p3, "channel"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 49
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 50
    iput-object p3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service not connected to system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v1, :cond_2

    .line 63
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "channel must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_2
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 67
    .local v0, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSelectResponse()[B
    .locals 5

    .prologue
    .line 193
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v3, :cond_2

    .line 197
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "channel must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "channel is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->getSelectResponse()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 214
    .local v2, "response":[B
    if-eqz v2, :cond_4

    array-length v3, v2

    if-nez v3, :cond_4

    .line 215
    const/4 v2, 0x0

    .line 216
    :cond_4
    return-object v2

    .line 210
    .end local v2    # "response":[B
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSession()Lorg/simalliance/openmobileapi/Session;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service not connected to system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v1, :cond_2

    .line 112
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "channel must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isBasicChannel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    const/4 v1, 0x1

    .line 95
    :goto_0
    return v1

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v1, :cond_2

    .line 92
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "channel must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public selectNext()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v4}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "service not connected to system"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    :cond_1
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v4, :cond_2

    .line 240
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "channel must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v4}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "channel is closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    .line 251
    .local v3, "response":Z
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 252
    :try_start_1
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .local v2, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_2
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v4, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->selectNext(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 258
    :try_start_3
    invoke-static {v2}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 259
    monitor-exit v5

    .line 260
    return v3

    .line 255
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public transmit([B)[B
    .locals 6
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v3, :cond_2

    .line 157
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "channel must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_2
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 162
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3, p1, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->transmit([BLorg/simalliance/openmobileapi/service/SmartcardError;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 168
    .local v2, "response":[B
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 169
    monitor-exit v4

    .line 170
    return-object v2

    .line 165
    .end local v2    # "response":[B
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
