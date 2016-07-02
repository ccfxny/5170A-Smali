.class public Lorg/gsma/joyn/chat/ChatLog$Message;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/chat/ChatLog$Message$Status;,
        Lorg/gsma/joyn/chat/ChatLog$Message$Direction;,
        Lorg/gsma/joyn/chat/ChatLog$Message$Type;
    }
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CONTACT_NUMBER:Ljava/lang/String; = "sender"

.field public static final CONTENT_CHAT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field public static final MESSAGE_STATUS:Ljava/lang/String; = "status"

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "msg_type"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_DISPLAYED:Ljava/lang/String; = "timestamp_displayed"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "content://org.gsma.joyn.provider.chat/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/gsma/joyn/chat/ChatLog$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    const-string v0, "content://org.gsma.joyn.provider.chat/message/#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/gsma/joyn/chat/ChatLog$Message;->CONTENT_CHAT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method
