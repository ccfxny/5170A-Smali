.class public abstract Lorg/gsma/joyn/vsh/VideoPlayerListener;
.super Lorg/gsma/joyn/vsh/IVideoPlayerListener$Stub;
.source "VideoPlayerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/vsh/IVideoPlayerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPlayerClosed()V
.end method

.method public abstract onPlayerFailed()V
.end method

.method public abstract onPlayerOpened()V
.end method

.method public abstract onPlayerStarted()V
.end method

.method public abstract onPlayerStopped()V
.end method
