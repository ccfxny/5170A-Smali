.class public Lorg/gsma/joyn/chat/PublicAccountChat;
.super Lorg/gsma/joyn/chat/Chat;
.source "PublicAccountChat.java"


# direct methods
.method constructor <init>(Lorg/gsma/joyn/chat/IChat;)V
    .locals 0
    .param p1, "chatIntf"    # Lorg/gsma/joyn/chat/IChat;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/gsma/joyn/chat/Chat;-><init>(Lorg/gsma/joyn/chat/IChat;)V

    .line 14
    return-void
.end method


# virtual methods
.method public sendPublicAccountMessageByLargeMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 25
    const-string v1, "TAPI-Chat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAM sendPublicAccountMessageByLargeMode entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    iget-object v1, p0, Lorg/gsma/joyn/chat/PublicAccountChat;->chatInf:Lorg/gsma/joyn/chat/IChat;

    invoke-interface {v1, p1}, Lorg/gsma/joyn/chat/IChat;->sendPublicAccountMessageByLargeMode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendPublicAccountMessageByPagerMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "TAPI-Chat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAM sendPublicAccountMessageByPagerMode entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    :try_start_0
    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "public"

    aput-object v1, v8, v0

    .line 45
    .local v8, "extraParams":[Ljava/lang/String;
    iget-object v0, p0, Lorg/gsma/joyn/chat/PublicAccountChat;->chatInf:Lorg/gsma/joyn/chat/IChat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lorg/gsma/joyn/chat/IChat;->sendMessageByPagerMode(Ljava/lang/String;ZZZZLjava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 46
    .end local v8    # "extraParams":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 47
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
