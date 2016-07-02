.class public Lorg/gsma/joyn/ft/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/ft/FileTransfer$Error;,
        Lorg/gsma/joyn/ft/FileTransfer$Direction;,
        Lorg/gsma/joyn/ft/FileTransfer$State;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TAPI-FileTransfer"


# instance fields
.field private transferInf:Lorg/gsma/joyn/ft/IFileTransfer;


# direct methods
.method public constructor <init>(Lorg/gsma/joyn/ft/IFileTransfer;)V
    .locals 0
    .param p1, "transferIntf"    # Lorg/gsma/joyn/ft/IFileTransfer;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    .line 141
    return-void
.end method


# virtual methods
.method public abortTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 328
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "abortTransfer() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->abortTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
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
    .line 300
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "acceptInvitation() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addEventListener(Lorg/gsma/joyn/ft/FileTransferListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 371
    const-string v1, "TAPI-FileTransfer"

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

    .line 373
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ft/IFileTransfer;->addEventListener(Lorg/gsma/joyn/ft/IFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
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
    .line 286
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getDirection() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getDirection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileIconName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 254
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getFileIconName() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getFileIconName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
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
    .line 209
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getFileName() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getFileName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
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
    .line 224
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getFileSize() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getFileSize()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 227
    :catch_0
    move-exception v0

    .line 228
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
    .line 239
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getFileType() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getFileType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

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

.method public getRemoteContact()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getRemoteContact() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getRemoteContact()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
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
    .line 270
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getState() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransferDuration()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 179
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getTransferDuration() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getTransferDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransferId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "getTransferId() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->getTransferId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isHttpFileTransfer()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "isHttpFileTransfer "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->isHttpFileTransfer()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

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

.method public pauseTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 342
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "pauseTransfer() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->pauseTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
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
    .line 314
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "rejectInvitation() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeEventListener(Lorg/gsma/joyn/ft/FileTransferListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/gsma/joyn/ft/FileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 386
    const-string v1, "TAPI-FileTransfer"

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

    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/ft/IFileTransfer;->removeEventListener(Lorg/gsma/joyn/ft/IFileTransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resumeTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v1, "TAPI-FileTransfer"

    const-string v2, "resumeTransfer() entry "

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/ft/FileTransfer;->transferInf:Lorg/gsma/joyn/ft/IFileTransfer;

    invoke-interface {v1}, Lorg/gsma/joyn/ft/IFileTransfer;->resumeTransfer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
