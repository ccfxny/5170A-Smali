.class public abstract Lorg/gsma/joyn/chat/SpamReportListener;
.super Lorg/gsma/joyn/chat/ISpamReportListener$Stub;
.source "SpamReportListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/chat/ISpamReportListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSpamReportFailed(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onSpamReportSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
