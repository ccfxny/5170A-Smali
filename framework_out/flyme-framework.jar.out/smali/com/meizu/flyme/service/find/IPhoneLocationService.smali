.class public interface abstract Lcom/meizu/flyme/service/find/IPhoneLocationService;
.super Ljava/lang/Object;
.source "IPhoneLocationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getUserName()Lcom/meizu/flyme/service/find/FindPhoneData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract lockPhone()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unLockPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/service/find/FindPhoneData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
