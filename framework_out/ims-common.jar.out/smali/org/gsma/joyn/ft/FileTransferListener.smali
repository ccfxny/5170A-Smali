.class public abstract Lorg/gsma/joyn/ft/FileTransferListener;
.super Lorg/gsma/joyn/ft/IFileTransferListener$Stub;
.source "FileTransferListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/ft/IFileTransferListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFileTransferred(Ljava/lang/String;)V
.end method

.method public abstract onTransferAborted()V
.end method

.method public abstract onTransferError(I)V
.end method

.method public abstract onTransferPaused()V
.end method

.method public abstract onTransferProgress(JJ)V
.end method

.method public abstract onTransferResumed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTransferStarted()V
.end method
