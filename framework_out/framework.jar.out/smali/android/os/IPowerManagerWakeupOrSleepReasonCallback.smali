.class public interface abstract Landroid/os/IPowerManagerWakeupOrSleepReasonCallback;
.super Ljava/lang/Object;
.source "IPowerManagerWakeupOrSleepReasonCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManagerWakeupOrSleepReasonCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWakeupOrSleepReasonChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
