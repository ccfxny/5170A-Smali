.class public interface abstract Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted()V
.end method

.method public abstract onCaptureFailed(I)V
.end method

.method public abstract onInput()V
.end method

.method public abstract onWaitingForInput()V
.end method
