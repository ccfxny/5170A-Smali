.class public Lorg/gsma/joyn/gsh/GeolocSharingService;
.super Lorg/gsma/joyn/JoynService;
.source "GeolocSharingService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TAPI-GeolocSharingService"


# instance fields
.field private api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

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

    iput-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    .line 109
    new-instance v0, Lorg/gsma/joyn/gsh/GeolocSharingService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/gsh/GeolocSharingService$1;-><init>(Lorg/gsma/joyn/gsh/GeolocSharingService;)V

    iput-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->apiConnection:Landroid/content/ServiceConnection;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/gsh/GeolocSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/gsh/GeolocSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/gsh/GeolocSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/gsh/GeolocSharingService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/gsh/GeolocSharingService;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addNewGeolocSharingListener(Lorg/gsma/joyn/gsh/NewGeolocSharingListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/gsh/NewGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v1, "TAPI-GeolocSharingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewGeolocSharingListener entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/gsh/IGeolocSharingService;->addNewGeolocSharingListener(Lorg/gsma/joyn/gsh/INewGeolocSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
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
    const-string v2, "TAPI-GeolocSharingService"

    const-string v3, "GeolocSharing connect() entry"

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
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->apiConnection:Landroid/content/ServiceConnection;

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
    const-string v0, "TAPI-GeolocSharingService"

    const-string v1, "disconnect() entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getGeolocSharing(Ljava/lang/String;)Lorg/gsma/joyn/gsh/GeolocSharing;
    .locals 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v2, "TAPI-GeolocSharingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGeolocSharing entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    if-eqz v2, :cond_1

    .line 210
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/gsh/IGeolocSharingService;->getGeolocSharing(Ljava/lang/String;)Lorg/gsma/joyn/gsh/IGeolocSharing;

    move-result-object v1

    .line 211
    .local v1, "sharingIntf":Lorg/gsma/joyn/gsh/IGeolocSharing;
    if-eqz v1, :cond_0

    .line 212
    new-instance v2, Lorg/gsma/joyn/gsh/GeolocSharing;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/gsh/GeolocSharing;-><init>(Lorg/gsma/joyn/gsh/IGeolocSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    .end local v1    # "sharingIntf":Lorg/gsma/joyn/gsh/IGeolocSharing;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getGeolocSharingFor(Landroid/content/Intent;)Lorg/gsma/joyn/gsh/GeolocSharing;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 232
    const-string v2, "TAPI-GeolocSharingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGeolocSharingFor entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    if-eqz v2, :cond_1

    .line 235
    :try_start_0
    const-string v2, "sharingId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "sharingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/gsh/GeolocSharingService;->getGeolocSharing(Ljava/lang/String;)Lorg/gsma/joyn/gsh/GeolocSharing;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 239
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 241
    .end local v1    # "sharingId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getGeolocSharings()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/gsh/GeolocSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v6, "TAPI-GeolocSharingService"

    const-string v7, "getGeolocSharings entry "

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    if-eqz v6, :cond_1

    .line 183
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/gsh/GeolocSharing;>;"
    iget-object v6, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    invoke-interface {v6}, Lorg/gsma/joyn/gsh/IGeolocSharingService;->getGeolocSharings()Ljava/util/List;

    move-result-object v3

    .line 185
    .local v3, "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 186
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v5, Lorg/gsma/joyn/gsh/GeolocSharing;

    invoke-static {v0}, Lorg/gsma/joyn/gsh/IGeolocSharing$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/gsh/IGeolocSharing;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/gsma/joyn/gsh/GeolocSharing;-><init>(Lorg/gsma/joyn/gsh/IGeolocSharing;)V

    .line 187
    .local v5, "sharing":Lorg/gsma/joyn/gsh/GeolocSharing;
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/gsh/GeolocSharing;>;"
    .end local v5    # "sharing":Lorg/gsma/joyn/gsh/GeolocSharing;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/gsh/GeolocSharing;>;"
    :cond_0
    :try_start_1
    const-string v6, "TAPI-GeolocSharingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGeolocSharings returning "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    return-object v4

    .line 195
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/gsh/GeolocSharing;>;"
    :cond_1
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6
.end method

.method public removeNewGeolocSharingListener(Lorg/gsma/joyn/gsh/NewGeolocSharingListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/gsh/NewGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 275
    const-string v1, "TAPI-GeolocSharingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNewGeolocSharingListener entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    if-eqz v1, :cond_0

    .line 278
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/gsh/IGeolocSharingService;->removeNewGeolocSharingListener(Lorg/gsma/joyn/gsh/INewGeolocSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
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
    .line 101
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 103
    check-cast p1, Lorg/gsma/joyn/gsh/IGeolocSharingService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    .line 104
    return-void
.end method

.method public shareGeoloc(Ljava/lang/String;Lorg/gsma/joyn/chat/Geoloc;Lorg/gsma/joyn/gsh/GeolocSharingListener;)Lorg/gsma/joyn/gsh/GeolocSharing;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "geoloc"    # Lorg/gsma/joyn/chat/Geoloc;
    .param p3, "listener"    # Lorg/gsma/joyn/gsh/GeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->ctx:Landroid/content/Context;

    const-string v3, "org.gsma.joyn.RCS_LOCATION_SEND"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, " Required permission RCS_LOCATION_SEND"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->ctx:Landroid/content/Context;

    const-string v3, "org.gsma.joyn.RCS_USE_CHAT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, " Required permission RCS_USE_CHAT"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1
    const-string v2, "TAPI-GeolocSharingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shareGeoloc() entry contact="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " geoloc ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " listener ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    if-eqz v2, :cond_3

    .line 159
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/gsh/GeolocSharingService;->api:Lorg/gsma/joyn/gsh/IGeolocSharingService;

    invoke-interface {v2, p1, p2, p3}, Lorg/gsma/joyn/gsh/IGeolocSharingService;->shareGeoloc(Ljava/lang/String;Lorg/gsma/joyn/chat/Geoloc;Lorg/gsma/joyn/gsh/IGeolocSharingListener;)Lorg/gsma/joyn/gsh/IGeolocSharing;

    move-result-object v1

    .line 160
    .local v1, "sharingIntf":Lorg/gsma/joyn/gsh/IGeolocSharing;
    if-eqz v1, :cond_2

    .line 161
    new-instance v2, Lorg/gsma/joyn/gsh/GeolocSharing;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/gsh/GeolocSharing;-><init>(Lorg/gsma/joyn/gsh/IGeolocSharing;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 165
    .end local v1    # "sharingIntf":Lorg/gsma/joyn/gsh/IGeolocSharing;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method
