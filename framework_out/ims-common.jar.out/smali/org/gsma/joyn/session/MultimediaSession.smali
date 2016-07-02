.class public Lorg/gsma/joyn/session/MultimediaSession;
.super Ljava/lang/Object;
.source "MultimediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/session/MultimediaSession$Error;,
        Lorg/gsma/joyn/session/MultimediaSession$Direction;,
        Lorg/gsma/joyn/session/MultimediaSession$State;
    }
.end annotation


# instance fields
.field private sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/session/IMultimediaSession;)V
    .locals 0
    .param p1, "sessionInf"    # Lorg/gsma/joyn/session/IMultimediaSession;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    .line 123
    return-void
.end method


# virtual methods
.method public abortSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->abortSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
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
    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addEventListener(Lorg/gsma/joyn/session/MultimediaSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/session/MultimediaSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/session/IMultimediaSession;->addEventListener(Lorg/gsma/joyn/session/IMultimediaSessionListener;)V
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

.method public getDirection()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->getDirection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
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
    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->getRemoteContact()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->getServiceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->getSessionId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
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
    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
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
    .line 217
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1}, Lorg/gsma/joyn/session/IMultimediaSession;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeEventListener(Lorg/gsma/joyn/session/MultimediaSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/session/MultimediaSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/session/IMultimediaSession;->removeEventListener(Lorg/gsma/joyn/session/IMultimediaSessionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMessage([B)Z
    .locals 3
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/session/MultimediaSession;->sessionInf:Lorg/gsma/joyn/session/IMultimediaSession;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/session/IMultimediaSession;->sendMessage([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
