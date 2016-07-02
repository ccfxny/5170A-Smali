.class public interface abstract Lmeizu/splitmode/IFlymeSplitModeService;
.super Ljava/lang/Object;
.source "IFlymeSplitModeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/splitmode/IFlymeSplitModeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableResize(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActivitySplitRect(Landroid/os/IBinder;Landroid/graphics/Rect;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSplitMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
