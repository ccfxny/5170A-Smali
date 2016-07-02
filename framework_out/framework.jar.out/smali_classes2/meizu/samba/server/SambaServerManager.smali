.class public Lmeizu/samba/server/SambaServerManager;
.super Ljava/lang/Object;
.source "SambaServerManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lmeizu/samba/server/ISambaServerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmeizu/samba/server/ISambaServerManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmeizu/samba/server/ISambaServerManager;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    .line 24
    iput-object p1, p0, Lmeizu/samba/server/SambaServerManager;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public addSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 3
    .param p1, "folders"    # Lmeizu/samba/server/LocalSharedFolder;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folders cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1, p1}, Lmeizu/samba/server/ISambaServerManager;->addSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isServerRunning()Z
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1}, Lmeizu/samba/server/ISambaServerManager;->isServerRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    :goto_0
    return v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSharedFolder()Z
    .locals 2

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1}, Lmeizu/samba/server/ISambaServerManager;->removeAllSharedFolder()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    .locals 3
    .param p1, "folders"    # Lmeizu/samba/server/LocalSharedFolder;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folders cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/samba/server/SambaServerManager;->mService:Lmeizu/samba/server/ISambaServerManager;

    invoke-interface {v1, p1}, Lmeizu/samba/server/ISambaServerManager;->removeSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
