.class public abstract Lorg/gsma/joyn/ft/NewFileTransferListener;
.super Lorg/gsma/joyn/ft/INewFileTransferListener$Stub;
.source "NewFileTransferListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/ft/INewFileTransferListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFileDeliveredReport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFileDisplayedReport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNewBurnFileTransfer(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNewFileTransfer(Ljava/lang/String;)V
.end method

.method public abstract onNewFileTransferReceived(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onNewPublicAccountChatFile(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReportFileDelivered(Ljava/lang/String;)V
.end method

.method public abstract onReportFileDisplayed(Ljava/lang/String;)V
.end method
