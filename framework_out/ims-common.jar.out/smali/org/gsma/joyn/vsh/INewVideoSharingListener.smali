.class public interface abstract Lorg/gsma/joyn/vsh/INewVideoSharingListener;
.super Ljava/lang/Object;
.source "INewVideoSharingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/vsh/INewVideoSharingListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewVideoSharing(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
