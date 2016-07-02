.class public Lorg/gsma/joyn/capability/CapabilityService;
.super Lorg/gsma/joyn/JoynService;
.source "CapabilityService.java"


# static fields
.field public static final EXTENSION_MIME_TYPE:Ljava/lang/String; = "org.gsma.joyn"

.field public static final INTENT_EXTENSIONS:Ljava/lang/String; = "org.gsma.joyn.capability.EXTENSION"

.field public static final TAG:Ljava/lang/String; = "CapabilityService"


# instance fields
.field private api:Lorg/gsma/joyn/capability/ICapabilityService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/gsma/joyn/JoynService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    .line 134
    new-instance v0, Lorg/gsma/joyn/capability/CapabilityService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/capability/CapabilityService$1;-><init>(Lorg/gsma/joyn/capability/CapabilityService;)V

    iput-object v0, p0, Lorg/gsma/joyn/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/capability/CapabilityService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/capability/CapabilityService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/capability/CapabilityService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/capability/CapabilityService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/capability/CapabilityService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/capability/CapabilityService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/capability/CapabilityService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/capability/CapabilityService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/capability/CapabilityService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/capability/CapabilityService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/capability/CapabilityService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/capability/CapabilityService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addCapabilitiesListener(Ljava/util/Set;Lorg/gsma/joyn/capability/CapabilitiesListener;)V
    .locals 6
    .param p2, "listener"    # Lorg/gsma/joyn/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/gsma/joyn/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "CapabilityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCapabilitiesListener entry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v3, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v3, :cond_0

    .line 418
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 419
    .local v2, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    .local v0, "contact":Ljava/lang/String;
    iget-object v3, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v3, v0, p2}, Lorg/gsma/joyn/capability/ICapabilityService;->addContactCapabilitiesListener(Ljava/lang/String;Lorg/gsma/joyn/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 427
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v3}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v3

    .line 429
    .restart local v2    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public addCapabilitiesListener(Lorg/gsma/joyn/capability/CapabilitiesListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 375
    const-string v1, "CapabilityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCapabilitiesListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 378
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/capability/ICapabilityService;->addCapabilitiesListener(Lorg/gsma/joyn/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
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
    .line 337
    const-string v1, "CapabilityService"

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

    .line 338
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 340
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/capability/ICapabilityService;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public connect()V
    .locals 5

    .prologue
    .line 99
    const-string v2, "CapabilityService"

    const-string v3, "connect() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.orangelabs.rcs"

    const-string v3, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    const-class v2, Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lorg/gsma/joyn/capability/CapabilityService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    const-string v0, "CapabilityService"

    const-string v1, "disconnect() entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/gsma/joyn/capability/CapabilityService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContactCapabilities(Ljava/lang/String;)Lorg/gsma/joyn/capability/Capabilities;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v1, "CapabilityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactCapabilities entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/capability/ICapabilityService;->getContactCapabilities(Ljava/lang/String;)Lorg/gsma/joyn/capability/Capabilities;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getMyCapabilities()Lorg/gsma/joyn/capability/Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v1, "CapabilityService"

    const-string v2, "getMyCapabilities entry"

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1}, Lorg/gsma/joyn/capability/ICapabilityService;->getMyCapabilities()Lorg/gsma/joyn/capability/Capabilities;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getServiceVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 291
    const-string v1, "CapabilityService"

    const-string v2, "getServiceVersion entry"

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 295
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1}, Lorg/gsma/joyn/capability/ICapabilityService;->getServiceVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->version:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    const-string v1, "CapabilityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceVersion is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gsma/joyn/capability/CapabilityService;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 315
    const-string v2, "CapabilityService"

    const-string v3, "isServiceRegistered entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v2, :cond_0

    .line 317
    const/4 v1, 0x0

    .line 319
    .local v1, "serviceStatus":Z
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v2}, Lorg/gsma/joyn/capability/ICapabilityService;->isServiceRegistered()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    const-string v2, "CapabilityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceRegistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "serviceStatus":Z
    :cond_0
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public removeCapabilitiesListener(Ljava/util/Set;Lorg/gsma/joyn/capability/CapabilitiesListener;)V
    .locals 6
    .param p2, "listener"    # Lorg/gsma/joyn/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/gsma/joyn/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "CapabilityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCapabilitiesListener entry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v3, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v3, :cond_0

    .line 443
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 444
    .local v2, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    .local v0, "contact":Ljava/lang/String;
    iget-object v3, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v3, v0, p2}, Lorg/gsma/joyn/capability/ICapabilityService;->removeContactCapabilitiesListener(Ljava/lang/String;Lorg/gsma/joyn/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v3}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v3

    .line 454
    .restart local v2    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public removeCapabilitiesListener(Lorg/gsma/joyn/capability/CapabilitiesListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/capability/CapabilitiesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 394
    const-string v1, "CapabilityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCapabilitiesListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/capability/ICapabilityService;->removeCapabilitiesListener(Lorg/gsma/joyn/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
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
    .line 356
    const-string v1, "CapabilityService"

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

    .line 357
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/capability/ICapabilityService;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public requestAllContactsCapabilities()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 271
    const-string v1, "CapabilityService"

    const-string v2, "requestAllContactsCapabilities entry"

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1}, Lorg/gsma/joyn/capability/ICapabilityService;->requestAllContactsCapabilities()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public requestContactCapabilities(Ljava/lang/String;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 221
    const-string v1, "CapabilityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestContactCapabilities entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/capability/ICapabilityService;->requestContactCapabilities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public requestContactCapabilities(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "CapabilityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestContactCapabilities entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 252
    .local v0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/gsma/joyn/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 3
    .param p1, "api"    # Landroid/os/IInterface;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 127
    const-string v0, "CapabilityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApi entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    check-cast p1, Lorg/gsma/joyn/capability/ICapabilityService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/capability/CapabilityService;->api:Lorg/gsma/joyn/capability/ICapabilityService;

    .line 129
    return-void
.end method
