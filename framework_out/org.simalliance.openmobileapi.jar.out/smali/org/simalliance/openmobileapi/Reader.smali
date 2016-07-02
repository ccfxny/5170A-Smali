.class public Lorg/simalliance/openmobileapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    .line 50
    return-void
.end method


# virtual methods
.method public closeSessions()V
    .locals 5

    .prologue
    .line 159
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    if-eqz v2, :cond_2

    .line 163
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 164
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->closeSessions(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 171
    monitor-exit v3

    .line 173
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_2
    return-void

    .line 167
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSEService()Lorg/simalliance/openmobileapi/SEService;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    return-object v0
.end method

.method public isSecureElementPresent()Z
    .locals 6

    .prologue
    .line 123
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service is not connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    if-nez v3, :cond_2

    .line 128
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    iget-object v4, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/simalliance/openmobileapi/SEService;->getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v3

    iput-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_2
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 137
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v3, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->isSecureElementPresent(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 141
    .local v2, "flag":Z
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 142
    return v2

    .line 129
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "flag":Z
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service reader cannot be accessed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public openSession()Lorg/simalliance/openmobileapi/Session;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service is not connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    if-nez v3, :cond_2

    .line 85
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    iget-object v4, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/simalliance/openmobileapi/SEService;->getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v3

    iput-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Reader;->isSecureElementPresent()Z

    move-result v3

    if-nez v3, :cond_3

    .line 95
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Secure Element is not presented."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "service reader cannot be accessed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_1
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_2
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mReader:Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    invoke-interface {v3, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;->openSession(Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 107
    .local v2, "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :try_start_3
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 109
    if-nez v2, :cond_4

    .line 110
    new-instance v3, Ljava/io/IOException;

    const-string v5, "service session is null."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v2    # "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 104
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "session":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :cond_4
    new-instance v3, Lorg/simalliance/openmobileapi/Session;

    iget-object v5, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v3, v5, v2, p0}, Lorg/simalliance/openmobileapi/Session;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;Lorg/simalliance/openmobileapi/Reader;)V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v3
.end method
