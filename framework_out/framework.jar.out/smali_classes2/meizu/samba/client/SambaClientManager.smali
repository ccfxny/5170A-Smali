.class public Lmeizu/samba/client/SambaClientManager;
.super Ljava/lang/Object;
.source "SambaClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final SCAN_NEW_SERVER:Ljava/lang/String; = "SCAN_NEW_SERVER"

.field public static final SCAN_STOPED:Ljava/lang/String; = "SCAN_STOPED"

.field private static final TAG:Ljava/lang/String; = "SambaClientManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lmeizu/samba/client/SambaStatusListener;",
            "Lmeizu/samba/client/SambaClientManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lmeizu/samba/client/ISambaClientManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmeizu/samba/client/ISambaClientManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmeizu/samba/client/ISambaClientManager;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    .line 131
    iput-object p2, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    .line 132
    iput-object p1, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method


# virtual methods
.method public addSambaStatusListener(Lmeizu/samba/client/SambaStatusListener;)Z
    .locals 6
    .param p1, "listener"    # Lmeizu/samba/client/SambaStatusListener;

    .prologue
    .line 224
    const/4 v1, 0x1

    .line 225
    .local v1, "result":Z
    if-nez p1, :cond_0

    .line 226
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener==null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_0
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "SambaClientManager"

    const-string v4, "addSambaStatusListener: already added!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v3, 0x1

    .line 247
    :goto_0
    return v3

    .line 234
    :cond_1
    :try_start_0
    iget-object v4, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :try_start_1
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .line 236
    .local v2, "transport":Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    if-nez v2, :cond_2

    .line 237
    new-instance v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .end local v2    # "transport":Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lmeizu/samba/client/SambaClientManager$ListenerTransport;-><init>(Lmeizu/samba/client/SambaClientManager;Lmeizu/samba/client/SambaStatusListener;Landroid/os/Looper;)V

    .line 239
    .restart local v2    # "transport":Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :cond_2
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    iget-object v5, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lmeizu/samba/client/ISambaClientManager;->addSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)Z

    .line 241
    monitor-exit v4

    .end local v2    # "transport":Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :goto_1
    move v3, v1

    .line 247
    goto :goto_0

    .line 241
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SambaClientManager"

    const-string v4, "addSambaStatusListener: DeadObjectException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNetbiosName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->getNetbiosName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSharedFolders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ip cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_0
    const-string v1, "Exception"

    .line 304
    .local v1, "folderlist":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lmeizu/samba/client/ISambaClientManager;->getSharedFolders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    const-string v2, "SambaClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedFolders: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const-string v2, "SmbAuthException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    const/4 v1, 0x0

    .line 313
    new-instance v2, Lmeizu/samba/client/SambaGetSharedFoldersException;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lmeizu/samba/client/SambaGetSharedFoldersException;-><init>(I)V

    throw v2

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lmeizu/samba/client/SambaGetSharedFoldersException;

    const/4 v3, -0x4

    invoke-direct {v2, v3}, Lmeizu/samba/client/SambaGetSharedFoldersException;-><init>(I)V

    throw v2

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "SmbException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    const/4 v1, 0x0

    .line 317
    new-instance v2, Lmeizu/samba/client/SambaGetSharedFoldersException;

    const/4 v3, -0x3

    invoke-direct {v2, v3}, Lmeizu/samba/client/SambaGetSharedFoldersException;-><init>(I)V

    throw v2

    .line 319
    :cond_2
    const-string v2, "MalformedURLException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    const/4 v1, 0x0

    .line 321
    new-instance v2, Lmeizu/samba/client/SambaGetSharedFoldersException;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Lmeizu/samba/client/SambaGetSharedFoldersException;-><init>(I)V

    throw v2

    .line 323
    :cond_3
    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    const/4 v1, 0x0

    .line 325
    new-instance v2, Lmeizu/samba/client/SambaGetSharedFoldersException;

    const/4 v3, -0x5

    invoke-direct {v2, v3}, Lmeizu/samba/client/SambaGetSharedFoldersException;-><init>(I)V

    throw v2

    .line 329
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .param p1, "folder"    # Lmeizu/samba/client/RemoteSharedFolder;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .param p1, "folder"    # Lmeizu/samba/client/RemoteSharedFolder;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_0
    if-nez p2, :cond_1

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1, p2}, Lmeizu/samba/client/ISambaClientManager;->needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 285
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSambaStatusListener(Lmeizu/samba/client/SambaStatusListener;)V
    .locals 4
    .param p1, "listener"    # Lmeizu/samba/client/SambaStatusListener;

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    .line 261
    .local v1, "transport":Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 262
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    iget-object v3, p0, Lmeizu/samba/client/SambaClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lmeizu/samba/client/ISambaClientManager;->removeSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1    # "transport":Lmeizu/samba/client/SambaClientManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SambaClientManager"

    const-string v3, "RemoteException in removeSambaStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startScan(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ip cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->startScan(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopScan()Z
    .locals 2

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1}, Lmeizu/samba/client/ISambaClientManager;->stopScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 3
    .param p1, "folder"    # Lmeizu/samba/client/RemoteSharedFolder;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folder cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/client/SambaClientManager;->mService:Lmeizu/samba/client/ISambaClientManager;

    invoke-interface {v1, p1}, Lmeizu/samba/client/ISambaClientManager;->umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
