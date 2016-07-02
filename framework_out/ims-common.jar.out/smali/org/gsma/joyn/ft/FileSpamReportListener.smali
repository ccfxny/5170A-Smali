.class public abstract Lorg/gsma/joyn/ft/FileSpamReportListener;
.super Lorg/gsma/joyn/ft/IFileSpamReportListener$Stub;
.source "FileSpamReportListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/ft/IFileSpamReportListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFileSpamReportFailed(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onFileSpamReportSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
