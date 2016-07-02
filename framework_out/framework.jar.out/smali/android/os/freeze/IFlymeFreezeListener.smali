.class public interface abstract Landroid/os/freeze/IFlymeFreezeListener;
.super Ljava/lang/Object;
.source "IFlymeFreezeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/freeze/IFlymeFreezeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFreezeSet(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUnfreezeSet(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
