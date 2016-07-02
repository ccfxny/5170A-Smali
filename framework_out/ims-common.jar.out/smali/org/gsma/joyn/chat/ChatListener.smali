.class public abstract Lorg/gsma/joyn/chat/ChatListener;
.super Lorg/gsma/joyn/chat/IChatListener$Stub;
.source "ChatListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/chat/IChatListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onComposingEvent(Z)V
.end method

.method public abstract onNewBurnMessageArrived(Lorg/gsma/joyn/chat/ChatMessage;)V
.end method

.method public abstract onNewGeoloc(Lorg/gsma/joyn/chat/GeolocMessage;)V
.end method

.method public abstract onNewMessage(Lorg/gsma/joyn/chat/ChatMessage;)V
.end method

.method public abstract onReportDeliveredMessage(Ljava/lang/String;)V
.end method

.method public abstract onReportFailedMessage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onReportMessageDelivered(Ljava/lang/String;)V
.end method

.method public abstract onReportMessageDisplayed(Ljava/lang/String;)V
.end method

.method public abstract onReportMessageFailed(Ljava/lang/String;)V
.end method

.method public abstract onReportSentMessage(Ljava/lang/String;)V
.end method
