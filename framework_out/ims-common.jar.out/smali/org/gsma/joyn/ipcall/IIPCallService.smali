.class public interface abstract Lorg/gsma/joyn/ipcall/IIPCallService;
.super Ljava/lang/Object;
.source "IIPCallService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ipcall/IIPCallService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addNewIPCallListener(Lorg/gsma/joyn/ipcall/INewIPCallListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract addServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConfiguration()Lorg/gsma/joyn/ipcall/IPCallServiceConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIPCall(Ljava/lang/String;)Lorg/gsma/joyn/ipcall/IIPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIPCalls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServiceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initiateCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IIPCallPlayer;Lorg/gsma/joyn/ipcall/IIPCallRenderer;Lorg/gsma/joyn/ipcall/IIPCallListener;)Lorg/gsma/joyn/ipcall/IIPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initiateVisioCall(Ljava/lang/String;Lorg/gsma/joyn/ipcall/IIPCallPlayer;Lorg/gsma/joyn/ipcall/IIPCallRenderer;Lorg/gsma/joyn/ipcall/IIPCallListener;)Lorg/gsma/joyn/ipcall/IIPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isServiceRegistered()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeNewIPCallListener(Lorg/gsma/joyn/ipcall/INewIPCallListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeServiceRegistrationListener(Lorg/gsma/joyn/IJoynServiceRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
