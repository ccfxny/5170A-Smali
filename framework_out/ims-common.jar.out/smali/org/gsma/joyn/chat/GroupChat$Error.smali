.class public Lorg/gsma/joyn/chat/GroupChat$Error;
.super Ljava/lang/Object;
.source "GroupChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final CHAT_FAILED:I = 0x0

.field public static final CHAT_NOT_FOUND:I = 0x2

.field public static final INVITATION_DECLINED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method
