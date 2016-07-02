.class public Lorg/gsma/joyn/chat/ChatLog$Message$Type;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatLog$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final BURN:I = 0x3

.field public static final CLOUD:I = 0x5

.field public static final CONTENT:I = 0x0

.field public static final EMOTICON:I = 0x6

.field public static final PUBLIC:I = 0x4

.field public static final SPAM:I = 0x2

.field public static final SYSTEM:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
