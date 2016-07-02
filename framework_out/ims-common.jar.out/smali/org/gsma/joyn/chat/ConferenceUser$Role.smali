.class public Lorg/gsma/joyn/chat/ConferenceUser$Role;
.super Ljava/lang/Object;
.source "ConferenceUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ConferenceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Role"
.end annotation


# static fields
.field public static final CHAIRMAN:Ljava/lang/String; = "chairman"

.field public static final PARTICIPANT:Ljava/lang/String; = "participant"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
