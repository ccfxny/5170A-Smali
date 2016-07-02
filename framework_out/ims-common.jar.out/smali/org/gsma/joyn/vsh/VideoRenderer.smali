.class public abstract Lorg/gsma/joyn/vsh/VideoRenderer;
.super Lorg/gsma/joyn/vsh/IVideoRenderer$Stub;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/vsh/VideoRenderer$Error;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/vsh/IVideoRendererListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/gsma/joyn/vsh/IVideoRenderer$Stub;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/gsma/joyn/vsh/VideoRenderer;->listeners:Ljava/util/Set;

    .line 60
    return-void
.end method


# virtual methods
.method public addEventListener(Lorg/gsma/joyn/vsh/IVideoRendererListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/gsma/joyn/vsh/IVideoRendererListener;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoRenderer;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public abstract close()V
.end method

.method public abstract getCodec()Lorg/gsma/joyn/vsh/VideoCodec;
.end method

.method public getEventListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/gsma/joyn/vsh/IVideoRendererListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoRenderer;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public abstract getLocalRtpPort()I
.end method

.method public abstract getSupportedCodecs()[Lorg/gsma/joyn/vsh/VideoCodec;
.end method

.method public abstract open(Lorg/gsma/joyn/vsh/VideoCodec;Ljava/lang/String;I)V
.end method

.method public removeAllEventListeners()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoRenderer;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 139
    return-void
.end method

.method public removeEventListener(Lorg/gsma/joyn/vsh/IVideoRendererListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/gsma/joyn/vsh/IVideoRendererListener;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/gsma/joyn/vsh/VideoRenderer;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
