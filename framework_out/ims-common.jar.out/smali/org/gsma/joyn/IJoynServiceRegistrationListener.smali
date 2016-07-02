.class public interface abstract Lorg/gsma/joyn/IJoynServiceRegistrationListener;
.super Ljava/lang/Object;
.source "IJoynServiceRegistrationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/IJoynServiceRegistrationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onServiceRegistered()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceUnregistered()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
