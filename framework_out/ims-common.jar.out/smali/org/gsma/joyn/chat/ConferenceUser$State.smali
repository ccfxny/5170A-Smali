.class public Lorg/gsma/joyn/chat/ConferenceUser$State;
.super Ljava/lang/Object;
.source "ConferenceUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ConferenceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final FULL:Ljava/lang/String; = "full"

.field public static final PARTIAL:Ljava/lang/String; = "partial"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
