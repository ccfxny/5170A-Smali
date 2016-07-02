.class public abstract Lorg/gsma/joyn/gsh/GeolocSharingListener;
.super Lorg/gsma/joyn/gsh/IGeolocSharingListener$Stub;
.source "GeolocSharingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/gsma/joyn/gsh/IGeolocSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onGeolocShared(Lorg/gsma/joyn/chat/Geoloc;)V
.end method

.method public abstract onSharingAborted()V
.end method

.method public abstract onSharingError(I)V
.end method

.method public abstract onSharingProgress(JJ)V
.end method

.method public abstract onSharingStarted()V
.end method
