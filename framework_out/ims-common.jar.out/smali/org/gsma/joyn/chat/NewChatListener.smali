.class public abstract Lorg/gsma/joyn/chat/NewChatListener;
.super Lorg/gsma/joyn/chat/INewChatListener$Stub;
.source "NewChatListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/chat/INewChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNewGroupChat(Ljava/lang/String;)V
.end method

.method public abstract onNewPublicAccountChat(Ljava/lang/String;Lorg/gsma/joyn/chat/ChatMessage;)V
.end method

.method public abstract onNewSingleChat(Ljava/lang/String;Lorg/gsma/joyn/chat/ChatMessage;)V
.end method
