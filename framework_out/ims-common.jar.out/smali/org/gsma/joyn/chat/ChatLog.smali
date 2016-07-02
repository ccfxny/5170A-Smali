.class public Lorg/gsma/joyn/chat/ChatLog;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/ChatLog$GroupChatMember;,
        Lorg/gsma/joyn/chat/ChatLog$MultiMessage;,
        Lorg/gsma/joyn/chat/ChatLog$Message;,
        Lorg/gsma/joyn/chat/ChatLog$GroupChat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    return-void
.end method

.method public static getGeolocFromBlob([B)Lorg/gsma/joyn/chat/Geoloc;
    .locals 4
    .param p0, "content"    # [B

    .prologue
    .line 693
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 694
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 695
    .local v3, "is":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gsma/joyn/chat/Geoloc;

    .line 696
    .local v2, "geoloc":Lorg/gsma/joyn/chat/Geoloc;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "geoloc":Lorg/gsma/joyn/chat/Geoloc;
    .end local v3    # "is":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v2

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTextFromBlob([B)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # [B

    .prologue
    .line 678
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-object v1

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
