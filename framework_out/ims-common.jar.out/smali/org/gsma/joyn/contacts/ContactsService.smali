.class public Lorg/gsma/joyn/contacts/ContactsService;
.super Lorg/gsma/joyn/JoynService;
.source "ContactsService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TAPI-ContactsService"


# instance fields
.field private api:Lorg/gsma/joyn/contacts/IContactsService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/gsma/joyn/JoynService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    .line 63
    iput-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    .line 64
    iput-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lorg/gsma/joyn/contacts/ContactsService$1;

    invoke-direct {v0, p0}, Lorg/gsma/joyn/contacts/ContactsService$1;-><init>(Lorg/gsma/joyn/contacts/ContactsService;)V

    iput-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->apiConnection:Landroid/content/ServiceConnection;

    .line 74
    iput-object p1, p0, Lorg/gsma/joyn/contacts/ContactsService;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/gsma/joyn/contacts/ContactsService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/contacts/ContactsService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gsma/joyn/contacts/ContactsService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/contacts/ContactsService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gsma/joyn/contacts/ContactsService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/contacts/ContactsService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/gsma/joyn/contacts/ContactsService;)Lorg/gsma/joyn/JoynServiceListener;
    .locals 1
    .param p0, "x0"    # Lorg/gsma/joyn/contacts/ContactsService;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 5

    .prologue
    .line 81
    const-string v2, "TAPI-ContactsService"

    const-string v3, "ContactsService connect() entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.orangelabs.rcs"

    const-string v3, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lorg/gsma/joyn/contacts/ContactsService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lorg/gsma/joyn/contacts/ContactsService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 86
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "TAPI-ContactsService"

    const-string v1, "ContactsService disconnect() entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/gsma/joyn/contacts/ContactsService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getImBlockedContacts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1}, Lorg/gsma/joyn/contacts/IContactsService;->getImBlockedContacts()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getImBlockedContactsFromLocal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 280
    const-string v2, "TAPI-ContactsService"

    const-string v3, "getImBlockedContactsFromLocal entry"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v2, :cond_0

    .line 283
    :try_start_0
    iget-object v2, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v2}, Lorg/gsma/joyn/contacts/IContactsService;->getImBlockedContactsFromLocal()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    :cond_0
    :goto_0
    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getJoynContact(Ljava/lang/String;)Lorg/gsma/joyn/contacts/JoynContact;
    .locals 4
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v1, "TAPI-ContactsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJoynContact entry Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/contacts/IContactsService;->getJoynContact(Ljava/lang/String;)Lorg/gsma/joyn/contacts/JoynContact;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getJoynContacts()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/contacts/JoynContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 166
    const-string v5, "TAPI-ContactsService"

    const-string v6, "getJoynContacts entry "

    invoke-static {v5, v6}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v5, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v5, :cond_1

    .line 169
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/contacts/JoynContact;>;"
    iget-object v5, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v5}, Lorg/gsma/joyn/contacts/IContactsService;->getJoynContacts()Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lorg/gsma/joyn/contacts/JoynContact;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 172
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gsma/joyn/contacts/JoynContact;

    .line 173
    .local v0, "contact":Lorg/gsma/joyn/contacts/JoynContact;
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "contact":Lorg/gsma/joyn/contacts/JoynContact;
    :cond_0
    const-string v5, "TAPI-ContactsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getJoynContacts returning result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-object v4

    .line 177
    .end local v1    # "contacts":Ljava/util/List;, "Ljava/util/List<Lorg/gsma/joyn/contacts/JoynContact;>;"
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/contacts/JoynContact;>;"
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v5, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v5}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v5
.end method

.method public getJoynContactsOnline()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/contacts/JoynContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v2, "TAPI-ContactsService"

    const-string v3, "getJoynContactsOnline() entry "

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v2, :cond_0

    .line 195
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 196
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/contacts/JoynContact;>;"
    iget-object v2, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v2}, Lorg/gsma/joyn/contacts/IContactsService;->getJoynContactsOnline()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 197
    const-string v2, "TAPI-ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJoynContactsOnline() returning result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-object v1

    .line 199
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/contacts/JoynContact;>;"
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getJoynContactsSupporting(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/contacts/JoynContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v2, "TAPI-ContactsService"

    const-string v3, "getJoynContactsSupporting() entry "

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v2, :cond_0

    .line 218
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 219
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/contacts/JoynContact;>;"
    iget-object v2, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v2, p1}, Lorg/gsma/joyn/contacts/IContactsService;->getJoynContactsSupporting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    const-string v2, "TAPI-ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJoynContactsSupporting() returning result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-object v1

    .line 222
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/gsma/joyn/contacts/JoynContact;>;"
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v2}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getRegistrationState(Ljava/lang/String;)I
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/contacts/IContactsService;->getRegistrationState(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getTimeStampForBlockedContact(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 329
    const-string v1, "TAPI-ContactsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeStampForBlockedContact entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 332
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/contacts/IContactsService;->getTimeStampForBlockedContact(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getVCard(Landroid/net/Uri;)Ljava/lang/String;
    .locals 20
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v2, "TAPI-ContactsService"

    const-string v3, "getVCard() entry "

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v13, 0x0

    .line 243
    .local v13, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gsma/joyn/contacts/ContactsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 244
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 246
    .local v17, "name":Ljava/lang/String;
    const-string v2, "lookup"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 247
    .local v15, "lookupKey":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v2, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 248
    .local v19, "vCardUri":Landroid/net/Uri;
    const-string v2, "TAPI-ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVCard() uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gsma/joyn/contacts/ContactsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 252
    .local v12, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v14

    .line 253
    .local v14, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v9, v2, [B

    .line 254
    .local v9, "buf":[B
    invoke-virtual {v14, v9}, Ljava/io/FileInputStream;->read([B)I

    .line 255
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 257
    .local v8, "Vcard":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 258
    const-string v2, "TAPI-ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVCard() filename= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v18, "vCardFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 264
    :cond_0
    new-instance v16, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 265
    .local v16, "mFileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 266
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 267
    .end local v8    # "Vcard":Ljava/lang/String;
    .end local v9    # "buf":[B
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "mFileOutputStream":Ljava/io/FileOutputStream;
    .end local v18    # "vCardFile":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 268
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "lookupKey":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "vCardUri":Landroid/net/Uri;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 272
    return-object v13
.end method

.method public isImBlockedForContact(Ljava/lang/String;)Z
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 303
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/contacts/IContactsService;->isImBlockedForContact(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

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

.method public isRcsValidNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/contacts/IContactsService;->isRcsValidNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public loadImBlockedContactsToLocal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 437
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1}, Lorg/gsma/joyn/contacts/IContactsService;->loadImBlockedContactsToLocal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
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
    .line 106
    invoke-super {p0, p1}, Lorg/gsma/joyn/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 108
    check-cast p1, Lorg/gsma/joyn/contacts/IContactsService;

    .end local p1    # "api":Landroid/os/IInterface;
    iput-object p1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    .line 109
    return-void
.end method

.method public setFtBlockedForContact(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 380
    const-string v1, "TAPI-ContactsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFtBlockedForContact entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 383
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1, p1, p2}, Lorg/gsma/joyn/contacts/IContactsService;->setFtBlockedForContact(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public setImBlockedForContact(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 361
    const-string v1, "TAPI-ContactsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImBlockedForContact entry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    if-eqz v1, :cond_0

    .line 364
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/contacts/ContactsService;->api:Lorg/gsma/joyn/contacts/IContactsService;

    invoke-interface {v1, p1, p2}, Lorg/gsma/joyn/contacts/IContactsService;->setImBlockedForContact(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method
