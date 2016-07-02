.class public interface abstract Lorg/gsma/joyn/gsh/INewGeolocSharingListener;
.super Ljava/lang/Object;
.source "INewGeolocSharingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/gsh/INewGeolocSharingListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewGeolocSharing(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
