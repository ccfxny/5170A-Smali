.class public Lorg/gsma/joyn/chat/ChatLog$GroupChat;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupChat"
.end annotation


# static fields
.field public static final CHAIRMAN:Ljava/lang/String; = "chairman"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ISBLOCKED:Ljava/lang/String; = "isBlocked"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PARTICIPANTS_LIST:Ljava/lang/String; = "participants"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://org.gsma.joyn.provider.chat/chat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/gsma/joyn/chat/ChatLog$GroupChat;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
