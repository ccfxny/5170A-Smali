.class public Lorg/gsma/joyn/chat/Chat$MessageState;
.super Ljava/lang/Object;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageState"
.end annotation


# static fields
.field public static final DELIVERED:I = 0x2

.field public static final FAILED:I = 0x3

.field public static final SENDING:I = 0x0

.field public static final SENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
