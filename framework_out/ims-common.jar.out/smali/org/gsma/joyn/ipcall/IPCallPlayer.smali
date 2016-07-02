.class public abstract Lorg/gsma/joyn/ipcall/IPCallPlayer;
.super Lorg/gsma/joyn/ipcall/IIPCallPlayer$Stub;
.source "IPCallPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ipcall/IPCallPlayer$Error;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/ipcall/IPCallPlayerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/gsma/joyn/ipcall/IIPCallPlayer$Stub;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallPlayer;->listeners:Ljava/util/Set;

    .line 63
    return-void
.end method


# virtual methods
.method public addEventListener(Lorg/gsma/joyn/ipcall/IPCallPlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/gsma/joyn/ipcall/IPCallPlayerListener;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallPlayer;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public abstract close()V
.end method

.method public abstract getAudioCodec()Lorg/gsma/joyn/ipcall/AudioCodec;
.end method

.method public getEventListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/ipcall/IPCallPlayerListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallPlayer;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public abstract getLocalAudioRtpPort()I
.end method

.method public abstract getLocalVideoRtpPort()I
.end method

.method public abstract getSupportedAudioCodecs()[Lorg/gsma/joyn/ipcall/AudioCodec;
.end method

.method public abstract getSupportedVideoCodecs()[Lorg/gsma/joyn/ipcall/VideoCodec;
.end method

.method public abstract getVideoCodec()Lorg/gsma/joyn/ipcall/VideoCodec;
.end method

.method public abstract open(Lorg/gsma/joyn/ipcall/AudioCodec;Lorg/gsma/joyn/ipcall/VideoCodec;Ljava/lang/String;II)V
.end method

.method public removeAllEventListeners()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallPlayer;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 167
    return-void
.end method

.method public removeEventListener(Lorg/gsma/joyn/ipcall/IPCallPlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/gsma/joyn/ipcall/IPCallPlayerListener;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallPlayer;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
