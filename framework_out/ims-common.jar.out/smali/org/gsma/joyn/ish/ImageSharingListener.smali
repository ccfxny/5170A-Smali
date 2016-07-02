.class public abstract Lorg/gsma/joyn/ish/ImageSharingListener;
.super Lorg/gsma/joyn/ish/IImageSharingListener$Stub;
.source "ImageSharingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/ish/IImageSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onImageShared(Ljava/lang/String;)V
.end method

.method public abstract onSharingAborted()V
.end method

.method public abstract onSharingError(I)V
.end method

.method public abstract onSharingProgress(JJ)V
.end method

.method public abstract onSharingStarted()V
.end method
