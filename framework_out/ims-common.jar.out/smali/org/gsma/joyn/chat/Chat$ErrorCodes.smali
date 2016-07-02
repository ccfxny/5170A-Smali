.class public Lorg/gsma/joyn/chat/Chat$ErrorCodes;
.super Ljava/lang/Object;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCodes"
.end annotation


# static fields
.field public static final INTERNAL_EROR:I = 0x3

.field public static final OUT_OF_SIZE:I = 0x4

.field public static final TIMEOUT:I = 0x1

.field public static final UNKNOWN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
