.class public Lorg/gsma/joyn/chat/GroupChat$State;
.super Ljava/lang/Object;
.source "GroupChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ABORTED:I = 0x5

.field public static final CLOSED_BY_USER:I = 0x6

.field public static final FAILED:I = 0x7

.field public static final INITIATED:I = 0x2

.field public static final INVITED:I = 0x1

.field public static final STARTED:I = 0x3

.field public static final TERMINATED:I = 0x4

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method
