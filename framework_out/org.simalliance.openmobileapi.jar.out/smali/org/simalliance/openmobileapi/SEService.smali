.class public Lorg/simalliance/openmobileapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/SEService$CallBack;
    }
.end annotation


# static fields
.field private static final SERVICE_TAG:Ljava/lang/String; = "SEService"


# instance fields
.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/simalliance/openmobileapi/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/simalliance/openmobileapi/SEService$CallBack;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    .line 71
    new-instance v2, Lorg/simalliance/openmobileapi/SEService$1;

    invoke-direct {v2, p0}, Lorg/simalliance/openmobileapi/SEService$1;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 117
    new-instance v2, Lorg/simalliance/openmobileapi/SEService$2;

    invoke-direct {v2, p0}, Lorg/simalliance/openmobileapi/SEService$2;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 134
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "org.simalliance.openmobileapi.service"

    const-string v3, "org.simalliance.openmobileapi.service.SmartcardService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 139
    .local v0, "bindingSuccessful":Z
    if-eqz v0, :cond_1

    .line 140
    const-string v2, "SEService"

    const-string v3, "bindService successful"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 0
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;
    .param p1, "x1"    # Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;
    .locals 1
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    return-object v0
.end method

.method static checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .param p0, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_0
    .catch Lorg/simalliance/openmobileapi/service/CardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "exp":Lorg/simalliance/openmobileapi/service/CardException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/CardException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .end local v0    # "exp":Lorg/simalliance/openmobileapi/service/CardException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "exp":Ljava/security/AccessControlException;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/security/AccessControlException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    return-object v0
.end method

.method getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 221
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v2, 0x0

    .line 223
    .local v2, "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v3, p1, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 227
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 228
    return-object v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getReaders()[Lorg/simalliance/openmobileapi/Reader;
    .locals 10

    .prologue
    .line 164
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v8, :cond_0

    .line 165
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "service not connected to system"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 168
    :cond_0
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 171
    .local v3, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v8, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 176
    .local v7, "readerNames":[Ljava/lang/String;
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 177
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 178
    .local v6, "readerName":Ljava/lang/String;
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    new-instance v9, Lorg/simalliance/openmobileapi/Reader;

    invoke-direct {v9, p0, v6}, Lorg/simalliance/openmobileapi/Reader;-><init>(Lorg/simalliance/openmobileapi/SEService;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "readerName":Ljava/lang/String;
    .end local v7    # "readerNames":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 180
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "readerNames":[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 181
    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v8, v8, [Lorg/simalliance/openmobileapi/Reader;

    invoke-interface {v1, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/simalliance/openmobileapi/Reader;

    return-object v8
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 6

    .prologue
    .line 192
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 193
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 195
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 196
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/simalliance/openmobileapi/Reader;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simalliance/openmobileapi/Reader;

    .line 199
    .local v2, "reader":Lorg/simalliance/openmobileapi/Reader;
    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/Reader;->closeSessions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    .end local v2    # "reader":Lorg/simalliance/openmobileapi/Reader;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 205
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/simalliance/openmobileapi/Reader;>;"
    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 211
    monitor-exit v4

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 206
    :catch_1
    move-exception v3

    goto :goto_1
.end method
