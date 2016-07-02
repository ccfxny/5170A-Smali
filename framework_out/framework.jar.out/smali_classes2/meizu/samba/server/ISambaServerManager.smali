.class public interface abstract Lmeizu/samba/server/ISambaServerManager;
.super Ljava/lang/Object;
.source "ISambaServerManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/samba/server/ISambaServerManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isServerRunning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeAllSharedFolder()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeSharedFolders(Lmeizu/samba/server/LocalSharedFolder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
