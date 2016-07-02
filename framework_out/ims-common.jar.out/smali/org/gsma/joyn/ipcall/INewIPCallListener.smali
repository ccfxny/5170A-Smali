.class public interface abstract Lorg/gsma/joyn/ipcall/INewIPCallListener;
.super Ljava/lang/Object;
.source "INewIPCallListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ipcall/INewIPCallListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewIPCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
