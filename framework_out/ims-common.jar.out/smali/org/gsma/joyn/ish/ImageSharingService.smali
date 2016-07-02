.class public Lorg/gsma/joyn/ish/ImageSharingService;
.super Lorg/gsma/joyn/JoynService;
.source "ImageSharingService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageSharingService"


# instance fields
.field private api:Lorg/gsma/joyn/ish/IImageSharingService;

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

    iput-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    .line 108
    new-instance v0, Lorg/gsma/joyn/ish/ImageSharingService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/ish/ImageSharingService$1;-><init>(Lorg/gsma/joyn/ish/ImageSharingService;)V

    iput-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService;->apiConnection:Landroid/content/ServiceConnection;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ish/ImageSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ish/ImageSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ish/ImageSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/ish/ImageSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ish/ImageSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addNewImageSharingListener(Lorg/gsma/joyn/ish/NewImageSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/ish/NewImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v1, :cond_0

    .line 370
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ish/IImageSharingService;->addNewImageSharingListener(Lorg/gsma/joyn/ish/INewImageSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
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
    .line 325
    const-string v1, "ImageSharingService"

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

    .line 326
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v1, :cond_0

    .line 328
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ish/IImageSharingService;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
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
    const-string v2, "ImageSharingService"

    const-string v3, "connect() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.orangelabs.rcs"

    const-string v3, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/ish/ImageSharingService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/gsma/joyn/ish/ImageSharingService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConfiguration()Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharingService;->getConfiguration()Lorg/gsma/joyn/ish/ImageSharingServiceConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getImageSharing(Ljava/lang/String;)Lorg/gsma/joyn/ish/ImageSharing;
    .locals 4
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v2, :cond_1

    .line 218
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/ish/IImageSharingService;->getImageSharing(Ljava/lang/String;)Lorg/gsma/joyn/ish/IImageSharing;

    move-result-object v1

    .line 219
    .local v1, "sharingIntf":Lorg/gsma/joyn/ish/IImageSharing;
    if-eqz v1, :cond_0

    .line 220
    new-instance v2, Lorg/gsma/joyn/ish/ImageSharing;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ish/ImageSharing;-><init>(Lorg/gsma/joyn/ish/IImageSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 224
    .end local v1    # "sharingIntf":Lorg/gsma/joyn/ish/IImageSharing;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getImageSharingFor(Landroid/content/Intent;)Lorg/gsma/joyn/ish/ImageSharing;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v2, :cond_1

    .line 242
    :try_start_0
    const-string v2, "sharingId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "sharingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/ish/ImageSharingService;->getImageSharing(Ljava/lang/String;)Lorg/gsma/joyn/ish/ImageSharing;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 246
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 248
    .end local v1    # "sharingId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getImageSharings()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/ish/ImageSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v6, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v6, :cond_0

    .line 193
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ish/ImageSharing;>;"
    iget-object v6, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v6}, Lorg/gsma/joyn/ish/IImageSharingService;->getImageSharings()Ljava/util/List;

    move-result-object v3

    .line 195
    .local v3, "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
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

    .line 196
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v5, Lorg/gsma/joyn/ish/ImageSharing;

    invoke-static {v0}, Lorg/gsma/joyn/ish/IImageSharing$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ish/IImageSharing;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/gsma/joyn/ish/ImageSharing;-><init>(Lorg/gsma/joyn/ish/IImageSharing;)V

    .line 197
    .local v5, "sharing":Lorg/gsma/joyn/ish/ImageSharing;
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ish/ImageSharing;>;"
    .end local v5    # "sharing":Lorg/gsma/joyn/ish/ImageSharing;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6

    .line 199
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ish/ImageSharing;>;"
    :cond_1
    return-object v4
.end method

.method public getJoynAccountViaNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v1, :cond_0

    .line 266
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ish/IImageSharingService;->getJoynAccountViaNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
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
    .line 283
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharingService;->getServiceVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->version:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isServiceRegistered()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v2, :cond_0

    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, "serviceStatus":Z
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v2}, Lorg/gsma/joyn/ish/IImageSharingService;->isServiceRegistered()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 312
    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "serviceStatus":Z
    :cond_0
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public removeNewImageSharingListener(Lorg/gsma/joyn/ish/NewImageSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/ish/NewImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ish/IImageSharingService;->removeNewImageSharingListener(Lorg/gsma/joyn/ish/INewImageSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
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
    .line 344
    const-string v1, "ImageSharingService"

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

    .line 345
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v1, :cond_0

    .line 347
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ish/IImageSharingService;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
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
    .line 100
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 102
    check-cast p1, Lorg/gsma/joyn/ish/IImageSharingService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    .line 103
    return-void
.end method

.method public shareImage(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ish/ImageSharingListener;)Lorg/gsma/joyn/ish/ImageSharing;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/ish/ImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    if-eqz v2, :cond_1

    .line 170
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ish/ImageSharingService;->api:Lorg/gsma/joyn/ish/IImageSharingService;

    invoke-interface {v2, p1, p2, p3}, Lorg/gsma/joyn/ish/IImageSharingService;->shareImage(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ish/IImageSharingListener;)Lorg/gsma/joyn/ish/IImageSharing;

    move-result-object v1

    .line 171
    .local v1, "sharingIntf":Lorg/gsma/joyn/ish/IImageSharing;
    if-eqz v1, :cond_0

    .line 172
    new-instance v2, Lorg/gsma/joyn/ish/ImageSharing;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ish/ImageSharing;-><init>(Lorg/gsma/joyn/ish/IImageSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 176
    .end local v1    # "sharingIntf":Lorg/gsma/joyn/ish/IImageSharing;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method
