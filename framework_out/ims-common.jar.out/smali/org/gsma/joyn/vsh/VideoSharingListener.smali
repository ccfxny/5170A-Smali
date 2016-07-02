.class public abstract Lorg/gsma/joyn/vsh/VideoSharingListener;
.super Lorg/gsma/joyn/vsh/IVideoSharingListener$Stub;
.source "VideoSharingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/vsh/IVideoSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSharingAborted()V
.end method

.method public abstract onSharingError(I)V
.end method

.method public abstract onSharingStarted()V
.end method
