.class public Lorg/gsma/joyn/gsh/GeolocSharing;
.super Ljava/lang/Object;
.source "GeolocSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/gsh/GeolocSharing$Error;,
        Lorg/gsma/joyn/gsh/GeolocSharing$Direction;,
        Lorg/gsma/joyn/gsh/GeolocSharing$State;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TAPI-GeolocSharing"


# instance fields
.field private sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/gsh/IGeolocSharing;)V
    .locals 0
    .param p1, "sharingInf"    # Lorg/gsma/joyn/gsh/IGeolocSharing;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    .line 121
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
    .line 235
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "abortSharing() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->abortSharing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
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
    .line 207
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "acceptInvitation() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addEventListener(Lorg/gsma/joyn/gsh/GeolocSharingListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/gsh/GeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v1, "TAPI-GeolocSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEventListener() entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->addEventListener(Lorg/gsma/joyn/gsh/IGeolocSharingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
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
    .line 193
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "getDirection() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->getDirection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGeoloc()Lorg/gsma/joyn/chat/Geoloc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "getGeoloc() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->getGeoloc()Lorg/gsma/joyn/chat/Geoloc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
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
    .line 145
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "getRemoteContact() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->getRemoteContact()Ljava/lang/String;
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

.method public getSharingId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "getSharingId() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->getSharingId()Ljava/lang/String;
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
    .line 177
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "getState() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
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
    .line 221
    const-string v1, "TAPI-GeolocSharing"

    const-string v2, "rejectInvitation() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeEventListener(Lorg/gsma/joyn/gsh/GeolocSharingListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/gsh/GeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 265
    const-string v1, "TAPI-GeolocSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeEventListener() entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/gsh/GeolocSharing;->sharingInf:Lorg/gsma/joyn/gsh/IGeolocSharing;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/gsh/IGeolocSharing;->removeEventListener(Lorg/gsma/joyn/gsh/IGeolocSharingListener;)V
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
