.class public abstract Lorg/gsma/joyn/vsh/VideoRendererListener;
.super Lorg/gsma/joyn/vsh/IVideoRendererListener$Stub;
.source "VideoRendererListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/vsh/IVideoRendererListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRendererClosed()V
.end method

.method public abstract onRendererFailed()V
.end method

.method public abstract onRendererOpened()V
.end method

.method public abstract onRendererStarted()V
.end method

.method public abstract onRendererStopped()V
.end method
