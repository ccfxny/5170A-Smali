.class public interface abstract Lorg/gsma/joyn/chat/ISpamReportListener;
.super Ljava/lang/Object;
.source "ISpamReportListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/ISpamReportListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSpamReportFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSpamReportSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
