.class public Lorg/gsma/joyn/chat/ChatLog$MultiMessage$Direction;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatLog$MultiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Direction"
.end annotation


# static fields
.field public static final INCOMING:I = 0x0

.field public static final IRRELEVANT:I = 0x2

.field public static final OUTGOING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
