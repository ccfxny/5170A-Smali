.class public Lorg/gsma/joyn/chat/GroupChat$ReasonCode;
.super Ljava/lang/Object;
.source "GroupChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReasonCode"
.end annotation


# static fields
.field public static final INTERNAL_ERROR:I = 0x3

.field public static final SUCCESSFUL:I = 0x1

.field public static final TIME_OUT:I = 0x4

.field public static final UNKNOWN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
