.class public Lcom/android/ims/ImsConnectionStateListener;
.super Ljava/lang/Object;
.source "ImsConnectionStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .prologue
    .line 62
    return-void
.end method

.method public onImsConnected()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onImsDisconnected()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onImsResumed()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onImsSuspended()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
