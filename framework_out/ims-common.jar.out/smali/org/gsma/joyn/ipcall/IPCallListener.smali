.class public abstract Lorg/gsma/joyn/ipcall/IPCallListener;
.super Lorg/gsma/joyn/ipcall/IIPCallListener$Stub;
.source "IPCallListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/gsma/joyn/ipcall/IIPCallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCallAborted()V
.end method

.method public abstract onCallContinue()V
.end method

.method public abstract onCallError(I)V
.end method

.method public abstract onCallHeld()V
.end method

.method public abstract onCallStarted()V
.end method
