.class public Lorg/gsma/joyn/chat/ChatLog$MultiMessage$Status$Content;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatLog$MultiMessage$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# static fields
.field public static final BLOCKED:I = 0x7

.field public static final FAILED:I = 0x5

.field public static final READ:I = 0x2

.field public static final SENDING:I = 0x3

.field public static final SENT:I = 0x4

.field public static final TO_SEND:I = 0x6

.field public static final UNREAD:I = 0x0

.field public static final UNREAD_REPORT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
