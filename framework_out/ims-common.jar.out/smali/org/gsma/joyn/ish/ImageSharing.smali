.class public Lorg/gsma/joyn/ish/ImageSharing;
.super Ljava/lang/Object;
.source "ImageSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ish/ImageSharing$Error;,
        Lorg/gsma/joyn/ish/ImageSharing$Direction;,
        Lorg/gsma/joyn/ish/ImageSharing$State;
    }
.end annotation


# instance fields
.field private sharingInf:Lorg/gsma/joyn/ish/IImageSharing;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/ish/IImageSharing;)V
    .locals 0
    .param p1, "sharingInf"    # Lorg/gsma/joyn/ish/IImageSharing;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    .line 122
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
    .line 257
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->abortSharing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addEventListener(Lorg/gsma/joyn/ish/ImageSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/ish/ImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ish/IImageSharing;->addEventListener(Lorg/gsma/joyn/ish/IImageSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
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
    .line 218
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->getDirection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->getFileName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileSize()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->getFileSize()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->getFileType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
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
    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->getRemoteContact()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
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
    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->getSharingId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
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
    .line 203
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
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
    .line 244
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/ish/IImageSharing;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeEventListener(Lorg/gsma/joyn/ish/ImageSharingListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/ish/ImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ish/ImageSharing;->sharingInf:Lorg/gsma/joyn/ish/IImageSharing;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ish/IImageSharing;->removeEventListener(Lorg/gsma/joyn/ish/IImageSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
