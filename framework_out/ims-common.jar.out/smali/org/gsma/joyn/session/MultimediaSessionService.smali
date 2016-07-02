.class public Lorg/gsma/joyn/session/MultimediaSessionService;
.super Lorg/gsma/joyn/JoynService;
.source "MultimediaSessionService.java"


# instance fields
.field private api:Lorg/gsma/joyn/session/IMultimediaSessionService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/gsma/joyn/JoynService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    .line 100
    new-instance v0, Lorg/gsma/joyn/session/MultimediaSessionService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/session/MultimediaSessionService$1;-><init>(Lorg/gsma/joyn/session/MultimediaSessionService;)V

    iput-object v0, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/session/MultimediaSessionService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/session/MultimediaSessionService;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/session/MultimediaSessionService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/session/MultimediaSessionService;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/session/MultimediaSessionService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/session/MultimediaSessionService;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/session/MultimediaSessionService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/session/MultimediaSessionService;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 5

    .prologue
    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.orangelabs.rcs"

    const-string v3, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSession(Ljava/lang/String;)Lorg/gsma/joyn/session/MultimediaSession;
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v2, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    if-eqz v2, :cond_1

    .line 188
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/session/IMultimediaSessionService;->getSession(Ljava/lang/String;)Lorg/gsma/joyn/session/IMultimediaSession;

    move-result-object v1

    .line 189
    .local v1, "sessionIntf":Lorg/gsma/joyn/session/IMultimediaSession;
    if-eqz v1, :cond_0

    .line 190
    new-instance v2, Lorg/gsma/joyn/session/MultimediaSession;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/session/MultimediaSession;-><init>(Lorg/gsma/joyn/session/IMultimediaSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 194
    .end local v1    # "sessionIntf":Lorg/gsma/joyn/session/IMultimediaSession;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getSessionFor(Landroid/content/Intent;)Lorg/gsma/joyn/session/MultimediaSession;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v2, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    if-eqz v2, :cond_1

    .line 212
    :try_start_0
    const-string v2, "sessionId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "sessionId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/session/MultimediaSessionService;->getSession(Ljava/lang/String;)Lorg/gsma/joyn/session/MultimediaSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 216
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 218
    .end local v1    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getSessions(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/session/MultimediaSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v6, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    if-eqz v6, :cond_0

    .line 164
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/session/MultimediaSession;>;"
    iget-object v6, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    invoke-interface {v6, p1}, Lorg/gsma/joyn/session/IMultimediaSessionService;->getSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 166
    .local v3, "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 167
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v5, Lorg/gsma/joyn/session/MultimediaSession;

    invoke-static {v0}, Lorg/gsma/joyn/session/IMultimediaSession$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/session/IMultimediaSession;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/gsma/joyn/session/MultimediaSession;-><init>(Lorg/gsma/joyn/session/IMultimediaSession;)V

    .line 168
    .local v5, "session":Lorg/gsma/joyn/session/MultimediaSession;
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/session/MultimediaSession;>;"
    .end local v5    # "session":Lorg/gsma/joyn/session/MultimediaSession;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6

    .line 170
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mmsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/session/MultimediaSession;>;"
    :cond_1
    return-object v4
.end method

.method public initiateSession(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/session/MultimediaSessionListener;)Lorg/gsma/joyn/session/MultimediaSession;
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/session/MultimediaSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    if-eqz v2, :cond_1

    .line 140
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    invoke-interface {v2, p1, p2, p3}, Lorg/gsma/joyn/session/IMultimediaSessionService;->initiateSession(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/session/IMultimediaSessionListener;)Lorg/gsma/joyn/session/IMultimediaSession;

    move-result-object v1

    .line 141
    .local v1, "sessionIntf":Lorg/gsma/joyn/session/IMultimediaSession;
    if-eqz v1, :cond_0

    .line 142
    new-instance v2, Lorg/gsma/joyn/session/MultimediaSession;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/session/MultimediaSession;-><init>(Lorg/gsma/joyn/session/IMultimediaSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    .end local v1    # "sessionIntf":Lorg/gsma/joyn/session/IMultimediaSession;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    if-eqz v1, :cond_0

    .line 242
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    invoke-interface {v1, p1, p2, p3}, Lorg/gsma/joyn/session/IMultimediaSessionService;->sendMessage(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "api"    # Landroid/os/IInterface;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 94
    check-cast p1, Lorg/gsma/joyn/session/IMultimediaSessionService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/session/MultimediaSessionService;->api:Lorg/gsma/joyn/session/IMultimediaSessionService;

    .line 95
    return-void
.end method
