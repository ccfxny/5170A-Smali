.class public Lorg/gsma/joyn/chat/ConferenceUser$Status;
.super Ljava/lang/Object;
.source "ConferenceUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ConferenceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final CONNECTED:Ljava/lang/String; = "connected"

.field public static final DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final PENDING:Ljava/lang/String; = "pending"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
