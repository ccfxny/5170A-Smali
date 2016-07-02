.class public Lorg/gsma/joyn/ipcall/IPCallService;
.super Lorg/gsma/joyn/JoynService;
.source "IPCallService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IPCallService"


# instance fields
.field private api:Lorg/gsma/joyn/ipcall/IIPCallService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/gsma/joyn/JoynService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    .line 112
    new-instance v0, Lorg/gsma/joyn/ipcall/IPCallService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/ipcall/IPCallService$1;-><init>(Lorg/gsma/joyn/ipcall/IPCallService;)V

    iput-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService;->apiConnection:Landroid/content/ServiceConnection;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ipcall/IPCallService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ipcall/IPCallService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ipcall/IPCallService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ipcall/IPCallService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addNewIPCallListener(Lorg/gsma/joyn/ipcall/NewIPCallListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ipcall/NewIPCallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "IPCallService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewIPCallListener() entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ipcall/IIPCallService;->addNewIPCallListener(Lorg/gsma/joyn/ipcall/INewIPCallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public addServiceRegistrationListener(Lorg/gsma/joyn/JoynServiceRegistrationListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/JoynServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 300
    const-string v1, "IPCallService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addServiceRegistrationListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v1, :cond_0

    .line 303
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ipcall/IIPCallService;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public connect()V
    .locals 5

    .prologue
    .line 76
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->ctx:Landroid/content/Context;

    const-string v3, "org.gsma.joyn.RCS_USE_IPCALL"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, " Required permission RCS_USE_IPCALL"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    const-string v2, "IPCallService"

    const-string v3, "connect() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.orangelabs.rcs"

    const-string v3, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/ipcall/IPCallService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 84
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 91
    :try_start_0
    const-string v0, "IPCallService"

    const-string v1, "disconnect() entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConfiguration()Lorg/gsma/joyn/ipcall/IPCallServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "IPCallService"

    const-string v2, "getConfiguration() entry"

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v1}, Lorg/gsma/joyn/ipcall/IIPCallService;->getConfiguration()Lorg/gsma/joyn/ipcall/IPCallServiceConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getIPCall(Ljava/lang/String;)Lorg/gsma/joyn/ipcall/IPCall;
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v2, :cond_1

    .line 252
    const-string v2, "IPCallService"

    const-string v3, "getIPCall() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/ipcall/IIPCallService;->getIPCall(Ljava/lang/String;)Lorg/gsma/joyn/ipcall/IIPCall;

    move-result-object v0

    .line 255
    .local v0, "callIntf":Lorg/gsma/joyn/ipcall/IIPCall;
    if-eqz v0, :cond_0

    .line 256
    new-instance v2, Lorg/gsma/joyn/ipcall/IPCall;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/ipcall/IPCall;-><init>(Lorg/gsma/joyn/ipcall/IIPCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 260
    .end local v0    # "callIntf":Lorg/gsma/joyn/ipcall/IIPCall;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getIPCallFor(Landroid/content/Intent;)Lorg/gsma/joyn/ipcall/IPCall;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v2, :cond_1

    .line 278
    :try_start_0
    const-string v2, "IPCallService"

    const-string v3, "getIPCallFor() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "callId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "callId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/ipcall/IPCallService;->getIPCall(Ljava/lang/String;)Lorg/gsma/joyn/ipcall/IPCall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 283
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 285
    .end local v0    # "callId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getIPCalls()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/ipcall/IPCall;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v6, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v6, :cond_1

    .line 227
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 228
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ipcall/IPCall;>;"
    iget-object v6, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v6}, Lorg/gsma/joyn/ipcall/IIPCallService;->getIPCalls()Ljava/util/List;

    move-result-object v5

    .line 229
    .local v5, "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 230
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lorg/gsma/joyn/ipcall/IPCall;

    invoke-static {v0}, Lorg/gsma/joyn/ipcall/IIPCall$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCall;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/gsma/joyn/ipcall/IPCall;-><init>(Lorg/gsma/joyn/ipcall/IIPCall;)V

    .line 231
    .local v1, "call":Lorg/gsma/joyn/ipcall/IPCall;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "call":Lorg/gsma/joyn/ipcall/IPCall;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ipcall/IPCall;>;"
    .end local v5    # "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ipcall/IPCall;>;"
    .restart local v5    # "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_0
    :try_start_1
    const-string v6, "IPCallService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIPCalls() value - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    return-object v4

    .line 239
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ipcall/IPCall;>;"
    .end local v5    # "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6
.end method

.method public getServiceVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v1, "IPCallService"

    const-string v2, "getServiceVersion() entry"

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 343
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v1}, Lorg/gsma/joyn/ipcall/IIPCallService;->getServiceVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->version:Ljava/lang/Integer;

    .line 344
    const-string v1, "IPCallService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceVersion() value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gsma/joyn/ipcall/IPCallService;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public initiateCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IPCallPlayer;Lorg/gsma/joyn/ipcall/IPCallRenderer;Lorg/gsma/joyn/ipcall/IPCallListener;)Lorg/gsma/joyn/ipcall/IPCall;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "player"    # Lorg/gsma/joyn/ipcall/IPCallPlayer;
    .param p3, "renderer"    # Lorg/gsma/joyn/ipcall/IPCallRenderer;
    .param p4, "listener"    # Lorg/gsma/joyn/ipcall/IPCallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v2, :cond_1

    .line 171
    const-string v2, "IPCallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateCall() entrycontact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "player"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "renderer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "listener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/gsma/joyn/ipcall/IIPCallService;->initiateCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IIPCallPlayer;Lorg/gsma/joyn/ipcall/IIPCallRenderer;Lorg/gsma/joyn/ipcall/IIPCallListener;)Lorg/gsma/joyn/ipcall/IIPCall;

    move-result-object v0

    .line 174
    .local v0, "callIntf":Lorg/gsma/joyn/ipcall/IIPCall;
    if-eqz v0, :cond_0

    .line 175
    new-instance v2, Lorg/gsma/joyn/ipcall/IPCall;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/ipcall/IPCall;-><init>(Lorg/gsma/joyn/ipcall/IIPCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 179
    .end local v0    # "callIntf":Lorg/gsma/joyn/ipcall/IIPCall;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public initiateVisioCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IPCallPlayer;Lorg/gsma/joyn/ipcall/IPCallRenderer;Lorg/gsma/joyn/ipcall/IPCallListener;)Lorg/gsma/joyn/ipcall/IPCall;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "player"    # Lorg/gsma/joyn/ipcall/IPCallPlayer;
    .param p3, "renderer"    # Lorg/gsma/joyn/ipcall/IPCallRenderer;
    .param p4, "listener"    # Lorg/gsma/joyn/ipcall/IPCallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v2, :cond_1

    .line 203
    :try_start_0
    const-string v2, "IPCallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateVisioCall() entrycontact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "player"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "renderer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "listener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/gsma/joyn/ipcall/IIPCallService;->initiateVisioCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IIPCallPlayer;Lorg/gsma/joyn/ipcall/IIPCallRenderer;Lorg/gsma/joyn/ipcall/IIPCallListener;)Lorg/gsma/joyn/ipcall/IIPCall;

    move-result-object v0

    .line 205
    .local v0, "callIntf":Lorg/gsma/joyn/ipcall/IIPCall;
    if-eqz v0, :cond_0

    .line 206
    new-instance v2, Lorg/gsma/joyn/ipcall/IPCall;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/ipcall/IPCall;-><init>(Lorg/gsma/joyn/ipcall/IIPCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 210
    .end local v0    # "callIntf":Lorg/gsma/joyn/ipcall/IIPCall;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v2, :cond_0

    .line 364
    const-string v2, "IPCallService"

    const-string v3, "isServiceRegistered() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, "serviceStatus":Z
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v2}, Lorg/gsma/joyn/ipcall/IIPCallService;->isServiceRegistered()Z

    move-result v1

    .line 368
    const-string v2, "IPCallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceRegistered() value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    return v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "serviceStatus":Z
    :cond_0
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public removeNewIPCallListener(Lorg/gsma/joyn/ipcall/NewIPCallListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ipcall/NewIPCallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "IPCallService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNewIPCallListener() entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ipcall/IIPCallService;->removeNewIPCallListener(Lorg/gsma/joyn/ipcall/INewIPCallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public removeServiceRegistrationListener(Lorg/gsma/joyn/JoynServiceRegistrationListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/JoynServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 319
    const-string v1, "IPCallService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeServiceRegistrationListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ipcall/IIPCallService;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 3
    .param p1, "api"    # Landroid/os/IInterface;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 105
    const-string v0, "IPCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApi() entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    check-cast p1, Lorg/gsma/joyn/ipcall/IIPCallService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/ipcall/IPCallService;->api:Lorg/gsma/joyn/ipcall/IIPCallService;

    .line 107
    return-void
.end method
