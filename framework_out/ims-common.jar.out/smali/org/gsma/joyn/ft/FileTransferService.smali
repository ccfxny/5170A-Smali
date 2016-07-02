.class public Lorg/gsma/joyn/ft/FileTransferService;
.super Lorg/gsma/joyn/JoynService;
.source "FileTransferService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TAPI-FileTransferService"


# instance fields
.field private api:Lorg/gsma/joyn/ft/IFileTransferService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/gsma/joyn/JoynService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    .line 113
    new-instance v0, Lorg/gsma/joyn/ft/FileTransferService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/ft/FileTransferService$1;-><init>(Lorg/gsma/joyn/ft/FileTransferService;)V

    iput-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ft/FileTransferService;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ft/FileTransferService;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ft/FileTransferService;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/ft/FileTransferService;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addFileSpamReportListener(Lorg/gsma/joyn/ft/FileSpamReportListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ft/FileSpamReportListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 644
    const-string v1, "TAPI-FileTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSpamReportListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v1, :cond_0

    .line 647
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ft/IFileTransferService;->addFileSpamReportListener(Lorg/gsma/joyn/ft/IFileSpamReportListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public addNewFileTransferListener(Lorg/gsma/joyn/ft/NewFileTransferListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ft/NewFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 685
    const-string v1, "TAPI-FileTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewFileTransferListener() entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v1, :cond_0

    .line 688
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ft/IFileTransferService;->addNewFileTransferListener(Lorg/gsma/joyn/ft/INewFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public connect()V
    .locals 5

    .prologue
    .line 78
    const-string v2, "TAPI-FileTransferService"

    const-string v3, "FileTransfer connected() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.orangelabs.rcs"

    const-string v3, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    const-class v2, Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/ft/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 85
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 92
    :try_start_0
    const-string v0, "TAPI-FileTransferService"

    const-string v1, "FileTransfer disconnect() entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConfiguration()Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v1, "TAPI-FileTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfiguration() entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransferService;->getConfiguration()Lorg/gsma/joyn/ft/FileTransferServiceConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getFileTransfer(Ljava/lang/String;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 575
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileTransfer() entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " api="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 578
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/ft/IFileTransferService;->getFileTransfer(Ljava/lang/String;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v1

    .line 579
    .local v1, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v1, :cond_0

    .line 580
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 584
    .end local v1    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getFileTransferFor(Landroid/content/Intent;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 600
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileTransferFor() entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " api="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 603
    :try_start_0
    const-string v2, "transferId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "transferId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {p0, v1}, Lorg/gsma/joyn/ft/FileTransferService;->getFileTransfer(Ljava/lang/String;)Lorg/gsma/joyn/ft/FileTransfer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 607
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 609
    .end local v1    # "transferId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getFileTransfers()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/ft/FileTransfer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 550
    const-string v6, "TAPI-FileTransferService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFileTransfers() entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v6, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v6, :cond_0

    .line 553
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 554
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ft/FileTransfer;>;"
    iget-object v6, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v6}, Lorg/gsma/joyn/ft/IFileTransferService;->getFileTransfers()Ljava/util/List;

    move-result-object v3

    .line 555
    .local v3, "ftList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 556
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-static {v0}, Lorg/gsma/joyn/ft/IFileTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V

    .line 557
    .local v2, "ft":Lorg/gsma/joyn/ft/FileTransfer;
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "ft":Lorg/gsma/joyn/ft/FileTransfer;
    .end local v3    # "ftList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ft/FileTransfer;>;"
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 564
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6

    .line 559
    .restart local v3    # "ftList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/ft/FileTransfer;>;"
    :cond_1
    return-object v5
.end method

.method public initiateFileSpamReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "FtId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 625
    const-string v1, "TAPI-FileTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initiateSpamReport entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v1, :cond_0

    .line 628
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v1, p1, p2}, Lorg/gsma/joyn/ft/IFileTransferService;->initiateFileSpamReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public removeFileSpamReportListener(Lorg/gsma/joyn/ft/FileSpamReportListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ft/FileSpamReportListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 663
    const-string v1, "TAPI-FileTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSpamReportListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v1, :cond_0

    .line 666
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ft/IFileTransferService;->removeFileSpamReportListener(Lorg/gsma/joyn/ft/IFileSpamReportListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public removeNewFileTransferListener(Lorg/gsma/joyn/ft/NewFileTransferListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ft/NewFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 707
    const-string v1, "TAPI-FileTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNewFileTransferListener() entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v1, :cond_0

    .line 710
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ft/IFileTransferService;->removeNewFileTransferListener(Lorg/gsma/joyn/ft/INewFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public resumeFileTransfer(Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "fileTranferId"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeFileTransfer() entry fileTranferId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 223
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v2, p1, p2}, Lorg/gsma/joyn/ft/IFileTransferService;->resumeFileTransfer(Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v1

    .line 224
    .local v1, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v1, :cond_0

    .line 225
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 229
    .end local v1    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public resumeGroupFileTransfer(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "fileTranferId"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeGroupFileTransfer() entry fileTranferId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 279
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v2, p1, p2, p3}, Lorg/gsma/joyn/ft/IFileTransferService;->resumeGroupFileTransfer(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v1

    .line 280
    .local v1, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v1, :cond_0

    .line 281
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 285
    .end local v1    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public resumePublicFileTransfer(Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;I)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "fileTranferId"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .param p3, "timeLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePublicFileTransfer() entry fileTranferId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 250
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v2, p1, p2, p3}, Lorg/gsma/joyn/ft/IFileTransferService;->resumePublicFileTransfer(Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v1

    .line 251
    .local v1, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v1, :cond_0

    .line 252
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 256
    .end local v1    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "api"    # Landroid/os/IInterface;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 107
    check-cast p1, Lorg/gsma/joyn/ft/IFileTransferService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    .line 108
    return-void
.end method

.method public transferBurnFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileicon"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 725
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transferBurnFile() entry contact= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileicon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 728
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/gsma/joyn/ft/IFileTransferService;->transferBurnFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v1

    .line 729
    .local v1, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v1, :cond_0

    .line 730
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 734
    .end local v1    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 738
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public transferFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileicon"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transferFile() entry contact= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileicon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 196
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/gsma/joyn/ft/IFileTransferService;->transferFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v1

    .line 197
    .local v1, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v1, :cond_0

    .line 198
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 202
    .end local v1    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public transferFile(Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/gsma/joyn/ft/FileTransferService;->transferFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;

    move-result-object v0

    return-object v0
.end method

.method public transferFileToGroup(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;ILorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "timeLen"    # I
    .param p5, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/gsma/joyn/ft/FileTransferListener;",
            ")",
            "Lorg/gsma/joyn/ft/FileTransfer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/gsma/joyn/ft/FileTransferService;->transferFileToGroup(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ILorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;

    move-result-object v0

    return-object v0
.end method

.method public transferFileToGroup(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ILorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 9
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileicon"    # Ljava/lang/String;
    .param p5, "timeLen"    # I
    .param p6, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lorg/gsma/joyn/ft/FileTransferListener;",
            ")",
            "Lorg/gsma/joyn/ft/FileTransfer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 402
    .local p2, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "TAPI-FileTransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferFileToGroup() entry contact= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " chatId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " filename="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " fileicon = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " timelen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " listener="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v0, :cond_1

    .line 405
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 406
    .local v2, "contactsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/gsma/joyn/ft/IFileTransferService;->transferFileToGroup(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v8

    .line 407
    .local v8, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v8, :cond_0

    .line 408
    new-instance v0, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v0, v8}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    .end local v2    # "contactsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v7

    .line 413
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFileToGroup(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 1
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileicon"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/gsma/joyn/ft/FileTransferListener;",
            ")",
            "Lorg/gsma/joyn/ft/FileTransfer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x0

    return-object v0

    .line 442
    :cond_0
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFileToGroup(Ljava/util/Set;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 1
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/gsma/joyn/ft/FileTransferListener;",
            ")",
            "Lorg/gsma/joyn/ft/FileTransfer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 468
    :cond_0
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferFileToMultirecepient(Ljava/util/Set;Ljava/lang/String;ZLorg/gsma/joyn/ft/FileTransferListener;I)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 8
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileIcon"    # Z
    .param p4, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .param p5, "timeLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/gsma/joyn/ft/FileTransferListener;",
            "I)",
            "Lorg/gsma/joyn/ft/FileTransfer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "TAPI-FileTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferFileToMultirecepient() entry contact= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filename= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listener= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timelen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v0, :cond_1

    .line 528
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 529
    .local v1, "contactsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/gsma/joyn/ft/IFileTransferService;->transferFileToMultirecepient(Ljava/util/List;Ljava/lang/String;ZLorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v7

    .line 530
    .local v7, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v7, :cond_0

    .line 531
    new-instance v0, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v0, v7}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    .end local v1    # "contactsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v6

    .line 536
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferGeoLocFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileicon"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v2, "TAPI-FileTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transferGeoLocFile() entry contact= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileicon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v2, :cond_1

    .line 315
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/gsma/joyn/ft/IFileTransferService;->transferFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v1

    .line 316
    .local v1, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v1, :cond_0

    .line 317
    new-instance v2, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v2, v1}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 321
    .end local v1    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public transferMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/gsma/joyn/ft/FileTransferListener;)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 8
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileicon"    # Ljava/lang/String;
    .param p4, "timeLen"    # I
    .param p5, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 493
    const-string v0, "TAPI-FileTransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transferMedia() entry contact= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileicon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v0, :cond_1

    .line 496
    :try_start_0
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/gsma/joyn/ft/IFileTransferService;->transferMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v7

    .line 497
    .local v7, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v7, :cond_0

    .line 498
    new-instance v0, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v0, v7}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    .end local v7    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v6

    .line 503
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public transferPublicChatFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/FileTransferListener;I)Lorg/gsma/joyn/ft/FileTransfer;
    .locals 8
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileicon"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .param p5, "timeLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 349
    const-string v0, "TAPI-FileTransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transferPublicChatFile() entry contact= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileicon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,timelen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    if-eqz v0, :cond_1

    .line 352
    :try_start_0
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService;->api:Lorg/gsma/joyn/ft/IFileTransferService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/gsma/joyn/ft/IFileTransferService;->transferPublicChatFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/gsma/joyn/ft/IFileTransferListener;I)Lorg/gsma/joyn/ft/IFileTransfer;

    move-result-object v7

    .line 353
    .local v7, "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    if-eqz v7, :cond_0

    .line 354
    new-instance v0, Lorg/gsma/joyn/ft/FileTransfer;

    invoke-direct {v0, v7}, Lorg/gsma/joyn/ft/FileTransfer;-><init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    .end local v7    # "ftIntf":Lorg/gsma/joyn/ft/IFileTransfer;
    :catch_0
    move-exception v6

    .line 359
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method
