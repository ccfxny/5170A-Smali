.class public Lorg/gsma/joyn/chat/ChatLog$MultiMessage$Status$System;
.super Ljava/lang/Object;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatLog$MultiMessage$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final ACCEPTED:I = 0x1

.field public static final BUSY:I = 0x7

.field public static final DECLINED:I = 0x2

.field public static final DISCONNECTED:I = 0x6

.field public static final FAILED:I = 0x3

.field public static final GONE:I = 0x5

.field public static final JOINED:I = 0x4

.field public static final PENDING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
