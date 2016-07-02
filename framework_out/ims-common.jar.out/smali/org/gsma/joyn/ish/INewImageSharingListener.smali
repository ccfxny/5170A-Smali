.class public interface abstract Lorg/gsma/joyn/ish/INewImageSharingListener;
.super Ljava/lang/Object;
.source "INewImageSharingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ish/INewImageSharingListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewImageSharing(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
