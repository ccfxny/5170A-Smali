.class public interface abstract Lorg/gsma/joyn/chat/INewChatListener;
.super Ljava/lang/Object;
.source "INewChatListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/INewChatListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNewGroupChat(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNewSingleChat(Ljava/lang/String;Lorg/gsma/joyn/chat/ChatMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
