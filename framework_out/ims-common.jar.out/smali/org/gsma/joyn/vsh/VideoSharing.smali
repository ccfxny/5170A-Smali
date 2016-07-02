.class public Lorg/gsma/joyn/vsh/VideoSharing;
.super Ljava/lang/Object;
.source "VideoSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/vsh/VideoSharing$Encoding;,
        Lorg/gsma/joyn/vsh/VideoSharing$Error;,
        Lorg/gsma/joyn/vsh/VideoSharing$Direction;,
        Lorg/gsma/joyn/vsh/VideoSharing$State;
    }
.end annotation


# instance fields
.field private sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/vsh/IVideoSharing;)V
    .locals 0
    .param p1, "sharingInf"    # Lorg/gsma/joyn/vsh/IVideoSharing;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    .line 127
    return-void
.end method


# virtual methods
.method public abortSharing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->abortSharing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation(Lorg/gsma/joyn/vsh/VideoRenderer;)V
    .locals 3
    .param p1, "renderer"    # Lorg/gsma/joyn/vsh/VideoRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/vsh/IVideoSharing;->acceptInvitation(Lorg/gsma/joyn/vsh/IVideoRenderer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addEventListener(Lorg/gsma/joyn/vsh/VideoSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/vsh/VideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/vsh/IVideoSharing;->addEventListener(Lorg/gsma/joyn/vsh/IVideoSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirection()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->getDirection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->getRemoteContact()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSharingId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->getSharingId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoCodec()Lorg/gsma/joyn/vsh/VideoCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->getVideoCodec()Lorg/gsma/joyn/vsh/VideoCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoEncoding()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->getVideoEncoding()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoFormat()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->getVideoFormat()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/vsh/IVideoSharing;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeEventListener(Lorg/gsma/joyn/vsh/VideoSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/vsh/VideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/vsh/VideoSharing;->sharingInf:Lorg/gsma/joyn/vsh/IVideoSharing;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/vsh/IVideoSharing;->removeEventListener(Lorg/gsma/joyn/vsh/IVideoSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
