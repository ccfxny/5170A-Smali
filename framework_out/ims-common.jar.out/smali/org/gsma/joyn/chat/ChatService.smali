.class public Lorg/gsma/joyn/chat/ChatService;
.super Lorg/gsma/joyn/JoynService;
.source "ChatService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TAPI-ChatService"


# instance fields
.field private api:Lorg/gsma/joyn/chat/IChatService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/gsma/joyn/JoynService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    .line 118
    new-instance v0, Lorg/gsma/joyn/chat/ChatService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/chat/ChatService$1;-><init>(Lorg/gsma/joyn/chat/ChatService;)V

    iput-object v0, p0, Lorg/gsma/joyn/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/chat/ChatService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/chat/ChatService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/chat/ChatService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/chat/ChatService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lorg/gsma/joyn/chat/NewChatListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/chat/NewChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 769
    const-string v1, "TAPI-ChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEventListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 772
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/chat/IChatService;->addEventListener(Lorg/gsma/joyn/chat/INewChatListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 777
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
    .line 236
    const-string v1, "TAPI-ChatService"

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

    .line 237
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/chat/IChatService;->addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public addSpamReportListener(Lorg/gsma/joyn/chat/SpamReportListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/chat/SpamReportListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v1, "TAPI-ChatService"

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

    .line 256
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/chat/IChatService;->addSpamReportListener(Lorg/gsma/joyn/chat/ISpamReportListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public blockGroupMessages(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 750
    const-string v1, "TAPI-ChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockGroupMessages() entry with chatId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 753
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1, p2}, Lorg/gsma/joyn/chat/IChatService;->blockGroupMessages(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public connect()V
    .locals 6

    .prologue
    .line 84
    const-string v3, "TAPI-ChatService"

    const-string v4, "connected() entry"

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.orangelabs.rcs"

    const-string v4, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lorg/gsma/joyn/chat/ChatService;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lorg/gsma/joyn/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 89
    .local v1, "connected":Z
    const-string v3, "TAPI-ChatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() exit status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    const-string v0, "TAPI-ChatService"

    const-string v1, "disconnect() entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/Chat;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 599
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChat entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 602
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/chat/IChatService;->getChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v0

    .line 603
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IChat;
    if-eqz v0, :cond_0

    .line 604
    new-instance v2, Lorg/gsma/joyn/chat/Chat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/Chat;-><init>(Lorg/gsma/joyn/chat/IChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 608
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IChat;
    :catch_0
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getChatFor(Landroid/content/Intent;)Lorg/gsma/joyn/chat/Chat;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 648
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChatFor entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 651
    :try_start_0
    const-string v2, "contact"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "contact":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/ChatService;->getChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/Chat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 655
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 657
    .end local v0    # "contact":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getChats()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 572
    const-string v6, "TAPI-ChatService"

    const-string v7, "getChats entry "

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v6, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v6, :cond_1

    .line 575
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 576
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/Chat;>;"
    iget-object v6, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v6}, Lorg/gsma/joyn/chat/IChatService;->getChats()Ljava/util/List;

    move-result-object v2

    .line 577
    .local v2, "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 578
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lorg/gsma/joyn/chat/Chat;

    invoke-static {v0}, Lorg/gsma/joyn/chat/IChat$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/gsma/joyn/chat/Chat;-><init>(Lorg/gsma/joyn/chat/IChat;)V

    .line 579
    .local v1, "chat":Lorg/gsma/joyn/chat/Chat;
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "chat":Lorg/gsma/joyn/chat/Chat;
    .end local v2    # "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/Chat;>;"
    :catch_0
    move-exception v3

    .line 584
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 581
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/Chat;>;"
    :cond_0
    :try_start_1
    const-string v6, "TAPI-ChatService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getChats returning with  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 582
    return-object v5

    .line 587
    .end local v2    # "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/Chat;>;"
    :cond_1
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6
.end method

.method public getConfiguration()Lorg/gsma/joyn/chat/ChatServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    const-string v1, "TAPI-ChatService"

    const-string v2, "getConfiguration entry"

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1}, Lorg/gsma/joyn/chat/IChatService;->getConfiguration()Lorg/gsma/joyn/chat/ChatServiceConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/GroupChat;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 699
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGroupChat entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 702
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/chat/IChatService;->getGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v0

    .line 703
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    if-eqz v0, :cond_0

    .line 704
    new-instance v2, Lorg/gsma/joyn/chat/GroupChat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/GroupChat;-><init>(Lorg/gsma/joyn/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 708
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 712
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getGroupChatFor(Landroid/content/Intent;)Lorg/gsma/joyn/chat/GroupChat;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 724
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGroupChat entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 727
    :try_start_0
    const-string v2, "chatId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "chatId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0, v0}, Lorg/gsma/joyn/chat/ChatService;->getGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/GroupChat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 731
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 733
    .end local v0    # "chatId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 737
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getGroupChats()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/chat/GroupChat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 672
    const-string v6, "TAPI-ChatService"

    const-string v7, "getGroupChats entry "

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v6, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v6, :cond_1

    .line 675
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 676
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/GroupChat;>;"
    iget-object v6, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v6}, Lorg/gsma/joyn/chat/IChatService;->getGroupChats()Ljava/util/List;

    move-result-object v2

    .line 677
    .local v2, "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 678
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lorg/gsma/joyn/chat/GroupChat;

    invoke-static {v0}, Lorg/gsma/joyn/chat/IGroupChat$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/gsma/joyn/chat/GroupChat;-><init>(Lorg/gsma/joyn/chat/IGroupChat;)V

    .line 679
    .local v1, "chat":Lorg/gsma/joyn/chat/GroupChat;
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "chat":Lorg/gsma/joyn/chat/GroupChat;
    .end local v2    # "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/GroupChat;>;"
    :catch_0
    move-exception v3

    .line 684
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 681
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/GroupChat;>;"
    :cond_0
    :try_start_1
    const-string v6, "TAPI-ChatService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGroupChats returning with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 682
    return-object v5

    .line 687
    .end local v2    # "chatList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/chat/GroupChat;>;"
    :cond_1
    new-instance v6, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v6}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v6
.end method

.method public getPublicAccountChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/Chat;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 623
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPublicAccountChat entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 626
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/chat/IChatService;->getPublicAccountChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v0

    .line 627
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IChat;
    if-eqz v0, :cond_0

    .line 628
    new-instance v2, Lorg/gsma/joyn/chat/PublicAccountChat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/PublicAccountChat;-><init>(Lorg/gsma/joyn/chat/IChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 632
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IChat;
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getServiceVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1}, Lorg/gsma/joyn/chat/IChatService;->getServiceVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->version:Ljava/lang/Integer;

    .line 175
    const-string v1, "TAPI-ChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceVersion entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gsma/joyn/chat/ChatService;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public initPublicAccountChat(Ljava/lang/String;Lorg/gsma/joyn/chat/ChatListener;)Lorg/gsma/joyn/chat/PublicAccountChat;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/gsma/joyn/chat/ChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 376
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPublicAccountChat entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 379
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1, p2}, Lorg/gsma/joyn/chat/IChatService;->initPublicAccountChat(Ljava/lang/String;Lorg/gsma/joyn/chat/IChatListener;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v0

    .line 380
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IChat;
    if-eqz v0, :cond_0

    .line 381
    new-instance v2, Lorg/gsma/joyn/chat/PublicAccountChat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/PublicAccountChat;-><init>(Lorg/gsma/joyn/chat/IChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 385
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IChat;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public initiateGroupChat(Ljava/util/Set;Ljava/lang/String;Lorg/gsma/joyn/chat/GroupChatListener;)Lorg/gsma/joyn/chat/GroupChat;
    .locals 5
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/chat/GroupChatListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/gsma/joyn/chat/GroupChatListener;",
            ")",
            "Lorg/gsma/joyn/chat/GroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateGroupChat entry= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subject ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 407
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, p2, p3}, Lorg/gsma/joyn/chat/IChatService;->initiateGroupChat(Ljava/util/List;Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v0

    .line 408
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    if-eqz v0, :cond_0

    .line 409
    new-instance v2, Lorg/gsma/joyn/chat/GroupChat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/GroupChat;-><init>(Lorg/gsma/joyn/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 413
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public initiateSpamReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v1, "TAPI-ChatService"

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

    .line 218
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1, p2}, Lorg/gsma/joyn/chat/IChatService;->initiateSpamReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
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
    .line 194
    const-string v2, "TAPI-ChatService"

    const-string v3, "isServiceRegistered entry "

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "serviceStatus":Z
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2}, Lorg/gsma/joyn/chat/IChatService;->isServiceRegistered()Z

    move-result v1

    .line 199
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceRegistered entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "serviceStatus":Z
    :cond_0
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public openMultiChat(Ljava/util/List;Lorg/gsma/joyn/chat/ChatListener;)Lorg/gsma/joyn/chat/Chat;
    .locals 4
    .param p2, "listener"    # Lorg/gsma/joyn/chat/ChatListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/gsma/joyn/chat/ChatListener;",
            ")",
            "Lorg/gsma/joyn/chat/Chat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 348
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1, p2}, Lorg/gsma/joyn/chat/IChatService;->openMultiChat(Ljava/util/List;Lorg/gsma/joyn/chat/IChatListener;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v0

    .line 349
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IChat;
    if-eqz v0, :cond_0

    .line 350
    new-instance v2, Lorg/gsma/joyn/chat/Chat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/Chat;-><init>(Lorg/gsma/joyn/chat/IChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 354
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IChat;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public openSingleChat(Ljava/lang/String;Lorg/gsma/joyn/chat/ChatListener;)Lorg/gsma/joyn/chat/Chat;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/gsma/joyn/chat/ChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 317
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openSingleChat entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 320
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1, p2}, Lorg/gsma/joyn/chat/IChatService;->openSingleChat(Ljava/lang/String;Lorg/gsma/joyn/chat/IChatListener;)Lorg/gsma/joyn/chat/IChat;

    move-result-object v0

    .line 321
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IChat;
    if-eqz v0, :cond_0

    .line 322
    new-instance v2, Lorg/gsma/joyn/chat/Chat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/Chat;-><init>(Lorg/gsma/joyn/chat/IChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 326
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IChat;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public rejoinGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/GroupChat;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 498
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejoinGroupChat entry= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 501
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/chat/IChatService;->rejoinGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v0

    .line 502
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    if-eqz v0, :cond_0

    .line 503
    new-instance v2, Lorg/gsma/joyn/chat/GroupChat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/GroupChat;-><init>(Lorg/gsma/joyn/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 507
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public rejoinGroupChatId(Ljava/lang/String;Ljava/lang/String;)Lorg/gsma/joyn/chat/GroupChat;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "rejoinId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 523
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejoinGroupChat entry= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; rejoin id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 526
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1, p2}, Lorg/gsma/joyn/chat/IChatService;->rejoinGroupChatId(Ljava/lang/String;Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v0

    .line 527
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    if-eqz v0, :cond_0

    .line 528
    new-instance v2, Lorg/gsma/joyn/chat/GroupChat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/GroupChat;-><init>(Lorg/gsma/joyn/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 532
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public removeEventListener(Lorg/gsma/joyn/chat/NewChatListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/chat/NewChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 788
    const-string v1, "TAPI-ChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeEventListener entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 791
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/chat/IChatService;->removeEventListener(Lorg/gsma/joyn/chat/INewChatListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    return-void

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
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
    .line 293
    const-string v1, "TAPI-ChatService"

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

    .line 294
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/chat/IChatService;->removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public removeSpamReportListener(Lorg/gsma/joyn/chat/SpamReportListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/chat/SpamReportListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 274
    const-string v1, "TAPI-ChatService"

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

    .line 275
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/chat/IChatService;->removeSpamReportListener(Lorg/gsma/joyn/chat/ISpamReportListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public resendOne2MultiMessage(Ljava/lang/String;Lorg/gsma/joyn/chat/GroupChatListener;)I
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/gsma/joyn/chat/GroupChatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 454
    const-string v1, "TAPI-ChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resendOne2MultiMessage entry= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 457
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v1, p1, p2}, Lorg/gsma/joyn/chat/IChatService;->resendOne2MultiMessage(Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public restartGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/GroupChat;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 548
    const-string v2, "TAPI-ChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restartGroupChat entry= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v2, :cond_1

    .line 551
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/chat/IChatService;->restartGroupChat(Ljava/lang/String;)Lorg/gsma/joyn/chat/IGroupChat;

    move-result-object v0

    .line 552
    .local v0, "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    if-eqz v0, :cond_0

    .line 553
    new-instance v2, Lorg/gsma/joyn/chat/GroupChat;

    invoke-direct {v2, v0}, Lorg/gsma/joyn/chat/GroupChat;-><init>(Lorg/gsma/joyn/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 557
    .end local v0    # "chatIntf":Lorg/gsma/joyn/chat/IGroupChat;
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 561
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public sendOne2MultiCloudMessageLargeMode(Ljava/lang/String;Ljava/util/Set;Lorg/gsma/joyn/chat/GroupChatListener;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/chat/GroupChatListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/gsma/joyn/chat/GroupChatListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 477
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "TAPI-ChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOne2MultiCloudMessageLarge entry= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 480
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, p1, p3}, Lorg/gsma/joyn/chat/IChatService;->sendOne2MultiCloudMessageLargeMode(Ljava/util/List;Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public sendOne2MultiMessageLargeMode(Ljava/lang/String;Ljava/util/Set;Lorg/gsma/joyn/chat/GroupChatListener;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/gsma/joyn/chat/GroupChatListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/gsma/joyn/chat/GroupChatListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;,
            Lorg/gsma/joyn/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 431
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "TAPI-ChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOne2MultiMessage entry= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    if-eqz v1, :cond_0

    .line 434
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, p1, p3}, Lorg/gsma/joyn/chat/IChatService;->sendOne2MultiMessage(Ljava/util/List;Ljava/lang/String;Lorg/gsma/joyn/chat/IGroupChatListener;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
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
    .line 110
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 111
    const-string v0, "TAPI-ChatService"

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

    .line 112
    check-cast p1, Lorg/gsma/joyn/chat/IChatService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/chat/ChatService;->api:Lorg/gsma/joyn/chat/IChatService;

    .line 113
    return-void
.end method
