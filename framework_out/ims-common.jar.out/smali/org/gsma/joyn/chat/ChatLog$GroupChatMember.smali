.class public Lorg/gsma/joyn/chat/ChatLog$GroupChatMember;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupChatMember"
.end annotation


# static fields
.field public static final CHAT_ID:Ljava/lang/String; = "CHAT_ID"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field public static final GROUP_MEMBER_NAME:Ljava/lang/String; = "MEMBER_NAME"

.field public static final GROUP_MEMBER_NUMBER:Ljava/lang/String; = "CONTACT_NUMBER"

.field public static final GROUP_MEMBER_PORTRAIT:Ljava/lang/String; = "PORTRAIT"

.field public static final GROUP_MEMBER_TYPE:Ljava/lang/String; = "CONTACT_ETYPE"

.field public static final ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 609
    const-string v0, "content://org.gsma.joyn.provider.chat/groupmember"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/gsma/joyn/chat/ChatLog$GroupChatMember;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
