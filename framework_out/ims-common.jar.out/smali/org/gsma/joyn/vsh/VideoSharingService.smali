.class public Lorg/gsma/joyn/vsh/VideoSharingService;
.super Lorg/gsma/joyn/JoynService;
.source "VideoSharingService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoSharingService"


# instance fields
.field private api:Lorg/gsma/joyn/vsh/IVideoSharingService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/gsma/joyn/JoynService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    .line 110
    new-instance v0, Lorg/gsma/joyn/vsh/VideoSharingService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/vsh/VideoSharingService$1;-><init>(Lorg/gsma/joyn/vsh/VideoSharingService;)V

    iput-object v0, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/vsh/VideoSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/vsh/VideoSharingService;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/vsh/VideoSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/vsh/VideoSharingService;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/vsh/VideoSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/vsh/VideoSharingService;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/vsh/VideoSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/vsh/VideoSharingService;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addNewVideoSharingListener(Lorg/gsma/joyn/vsh/NewVideoSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/vsh/NewVideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v1, :cond_0

    .line 368
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/vsh/IVideoSharingService;->addNewVideoSharingListener(Lorg/gsma/joyn/vsh/INewVideoSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
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
    .line 322
    const-string v1, "VideoSharingService"

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

    .line 323
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/vsh/IVideoSharingService;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public connect()V
    .locals 5

    .prologue
    .line 77
    const-string v2, "VideoSharingService"

    const-string v3, "connect() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.orangelabs.rcs"

    const-string v3, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 83
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConfiguration()Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharingService;->getConfiguration()Lorg/gsma/joyn/vsh/VideoSharingServiceConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getServiceVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 283
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharingService;->getServiceVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->version:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getVideoSharing(Ljava/lang/String;)Lorg/gsma/joyn/vsh/VideoSharing;
    .locals 4
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v2, :cond_1

    .line 231
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/vsh/IVideoSharingService;->getVideoSharing(Ljava/lang/String;)Lorg/gsma/joyn/vsh/IVideoSharing;

    move-result-object v1

    .line 232
    .local v1, "sharingIntf":Lorg/gsma/joyn/vsh/IVideoSharing;
    if-eqz v1, :cond_0

    .line 233
    new-instance v2, Lorg/gsma/joyn/vsh/VideoSharing;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/vsh/VideoSharing;-><init>(Lorg/gsma/joyn/vsh/IVideoSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 237
    .end local v1    # "sharingIntf":Lorg/gsma/joyn/vsh/IVideoSharing;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getVideoSharingFor(Landroid/content/Intent;)Lorg/gsma/joyn/vsh/VideoSharing;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v2, :cond_1

    .line 257
    :try_start_0
    const-string v2, "sharingId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "sharingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/vsh/VideoSharingService;->getVideoSharing(Ljava/lang/String;)Lorg/gsma/joyn/vsh/VideoSharing;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 262
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 264
    .end local v1    # "sharingId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getVideoSharings()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/vsh/VideoSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v6, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v6, :cond_0

    .line 203
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 204
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/vsh/VideoSharing;>;"
    iget-object v6, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v6}, Lorg/gsma/joyn/vsh/IVideoSharingService;->getVideoSharings()Ljava/util/List;

    move-result-object v5

    .line 205
    .local v5, "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 206
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v4, Lorg/gsma/joyn/vsh/VideoSharing;

    invoke-static {v0}, Lorg/gsma/joyn/vsh/IVideoSharing$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/vsh/IVideoSharing;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/gsma/joyn/vsh/VideoSharing;-><init>(Lorg/gsma/joyn/vsh/IVideoSharing;)V

    .line 208
    .local v4, "sharing":Lorg/gsma/joyn/vsh/VideoSharing;
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/vsh/VideoSharing;>;"
    .end local v4    # "sharing":Lorg/gsma/joyn/vsh/VideoSharing;
    .end local v5    # "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6

    .line 210
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/vsh/VideoSharing;>;"
    .restart local v5    # "vshList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1
    return-object v3
.end method

.method public isServiceRegistered()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v2, :cond_0

    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, "serviceStatus":Z
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v2}, Lorg/gsma/joyn/vsh/IVideoSharingService;->isServiceRegistered()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "serviceStatus":Z
    :cond_0
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public removeNewVideoSharingListener(Lorg/gsma/joyn/vsh/NewVideoSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/vsh/NewVideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v1, :cond_0

    .line 391
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/vsh/IVideoSharingService;->removeNewVideoSharingListener(Lorg/gsma/joyn/vsh/INewVideoSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
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
    .line 341
    const-string v1, "VideoSharingService"

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

    .line 342
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/vsh/IVideoSharingService;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

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

    .line 349
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
    .line 102
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 104
    check-cast p1, Lorg/gsma/joyn/vsh/IVideoSharingService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    .line 105
    return-void
.end method

.method public shareVideo(Ljava/lang/String;Lorg/gsma/joyn/vsh/VideoPlayer;Lorg/gsma/joyn/vsh/VideoSharingListener;)Lorg/gsma/joyn/vsh/VideoSharing;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "player"    # Lorg/gsma/joyn/vsh/VideoPlayer;
    .param p3, "listener"    # Lorg/gsma/joyn/vsh/VideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    if-eqz v2, :cond_1

    .line 179
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/vsh/VideoSharingService;->api:Lorg/gsma/joyn/vsh/IVideoSharingService;

    invoke-interface {v2, p1, p2, p3}, Lorg/gsma/joyn/vsh/IVideoSharingService;->shareVideo(Ljava/lang/String;Lorg/gsma/joyn/vsh/IVideoPlayer;Lorg/gsma/joyn/vsh/IVideoSharingListener;)Lorg/gsma/joyn/vsh/IVideoSharing;

    move-result-object v1

    .line 181
    .local v1, "sharingIntf":Lorg/gsma/joyn/vsh/IVideoSharing;
    if-eqz v1, :cond_0

    .line 182
    new-instance v2, Lorg/gsma/joyn/vsh/VideoSharing;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/vsh/VideoSharing;-><init>(Lorg/gsma/joyn/vsh/IVideoSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    .end local v1    # "sharingIntf":Lorg/gsma/joyn/vsh/IVideoSharing;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method
