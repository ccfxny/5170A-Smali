.class public interface abstract Lorg/gsma/joyn/capability/ICapabilitiesListener;
.super Ljava/lang/Object;
.source "ICapabilitiesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/capability/ICapabilitiesListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCapabilitiesReceived(Ljava/lang/String;Lorg/gsma/joyn/capability/Capabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
