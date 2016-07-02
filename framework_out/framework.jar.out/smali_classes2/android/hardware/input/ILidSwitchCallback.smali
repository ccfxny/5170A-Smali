.class public interface abstract Landroid/hardware/input/ILidSwitchCallback;
.super Ljava/lang/Object;
.source "ILidSwitchCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/ILidSwitchCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLidSwitchChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
