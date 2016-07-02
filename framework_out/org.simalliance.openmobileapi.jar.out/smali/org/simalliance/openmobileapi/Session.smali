.class public Lorg/simalliance/openmobileapi/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mReader:Lorg/simalliance/openmobileapi/Reader;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;

.field private final mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;Lorg/simalliance/openmobileapi/Reader;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "session"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .param p3, "reader"    # Lorg/simalliance/openmobileapi/Reader;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 49
    iput-object p3, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    .line 50
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    .line 51
    return-void
.end method

.method private basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    .line 323
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 324
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 327
    const-string v2, "basic channel in use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const/4 v2, 0x1

    .line 332
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 4
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    const/4 v2, 0x1

    .line 336
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 337
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 338
    instance-of v3, v0, Ljava/util/MissingResourceException;

    if-eqz v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v2

    .line 341
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 343
    const-string v3, "channel in use"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    const-string v3, "open channel failed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    const-string v3, "out of channels"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    const-string v3, "MANAGE CHANNEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 362
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 363
    instance-of v1, v0, Ljava/util/NoSuchElementException;

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Applet with the defined aid does not exist in the SE"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    return-void
.end method

.method private isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    .line 310
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 311
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 314
    const-string v2, "default application is not selected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v2, 0x0

    .line 319
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 88
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v2, :cond_2

    .line 92
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 100
    monitor-exit v3

    .line 102
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_2
    return-void

    .line 96
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public closeChannels()V
    .locals 5

    .prologue
    .line 126
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v2, :cond_2

    .line 131
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 132
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->closeChannels(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 139
    monitor-exit v3

    .line 141
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_2
    return-void

    .line 135
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getATR()[B
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service not connected to system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v1, :cond_2

    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service session is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->getAtr()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReader()Lorg/simalliance/openmobileapi/Reader;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->isClosed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openBasicChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .locals 8
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "service not connected to system"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_1
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v5, :cond_2

    .line 186
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "service session is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :cond_2
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    if-nez v5, :cond_3

    .line 189
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "reader must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :cond_3
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 194
    :try_start_0
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .local v3, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v7, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v7}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v7

    invoke-interface {v6, p1, v7, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openBasicChannelAid([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 203
    .local v1, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_start_2
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 204
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 205
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 206
    .local v0, "b":Z
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 207
    if-eqz v0, :cond_4

    .line 208
    monitor-exit v5

    .line 232
    :goto_0
    return-object v4

    .line 200
    .end local v0    # "b":Z
    .end local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 233
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 210
    .restart local v0    # "b":Z
    .restart local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .restart local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 211
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 212
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 213
    if-eqz v0, :cond_5

    .line 214
    monitor-exit v5

    goto :goto_0

    .line 216
    :cond_5
    if-eqz p1, :cond_6

    array-length v6, p1

    if-nez v6, :cond_7

    .line 218
    :cond_6
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 219
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 220
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 221
    if-nez v0, :cond_7

    .line 222
    monitor-exit v5

    goto :goto_0

    .line 225
    :cond_7
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 226
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 227
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 229
    if-nez v1, :cond_8

    .line 230
    monitor-exit v5

    goto :goto_0

    .line 232
    :cond_8
    new-instance v4, Lorg/simalliance/openmobileapi/Channel;

    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v4, v6, p0, v1}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .locals 8
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 265
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "service not connected to system"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_1
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v5, :cond_2

    .line 269
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "service session is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 271
    :cond_2
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    if-nez v5, :cond_3

    .line 272
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "reader must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    :cond_3
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 275
    :try_start_0
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .local v3, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v7, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v7}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v7

    invoke-interface {v6, p1, v7, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openLogicalChannel([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 285
    .local v1, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_start_2
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 286
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 287
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 288
    .local v0, "b":Z
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 289
    if-eqz v0, :cond_4

    .line 290
    monitor-exit v5

    .line 299
    :goto_0
    return-object v4

    .line 282
    .end local v0    # "b":Z
    .end local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 292
    .restart local v0    # "b":Z
    .restart local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .restart local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 293
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 294
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 296
    if-nez v1, :cond_5

    .line 297
    monitor-exit v5

    goto :goto_0

    .line 299
    :cond_5
    new-instance v4, Lorg/simalliance/openmobileapi/Channel;

    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v4, v6, p0, v1}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
