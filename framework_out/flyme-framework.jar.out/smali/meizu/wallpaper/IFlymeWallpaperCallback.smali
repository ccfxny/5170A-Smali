.class public interface abstract Lmeizu/wallpaper/IFlymeWallpaperCallback;
.super Ljava/lang/Object;
.source "IFlymeWallpaperCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/wallpaper/IFlymeWallpaperCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLockWallpaperChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
