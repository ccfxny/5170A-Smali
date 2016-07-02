.class public abstract Lorg/gsma/joyn/session/MultimediaSessionListener;
.super Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;
.source "MultimediaSessionListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/gsma/joyn/session/IMultimediaSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNewMessage([B)V
.end method

.method public abstract onSessionAborted()V
.end method

.method public abstract onSessionError(I)V
.end method

.method public abstract onSessionRinging()V
.end method

.method public abstract onSessionStarted()V
.end method
