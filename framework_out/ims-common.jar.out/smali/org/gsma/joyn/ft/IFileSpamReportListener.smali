.class public interface abstract Lorg/gsma/joyn/ft/IFileSpamReportListener;
.super Ljava/lang/Object;
.source "IFileSpamReportListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ft/IFileSpamReportListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFileSpamReportFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFileSpamReportSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
