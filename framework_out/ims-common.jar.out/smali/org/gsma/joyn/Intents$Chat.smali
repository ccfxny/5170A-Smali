.class public Lorg/gsma/joyn/Intents$Chat;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chat"
.end annotation


# static fields
.field public static final ACTION_INITIATE_CHAT:Ljava/lang/String; = "org.gsma.joyn.action.INITIATE_CHAT"

.field public static final ACTION_INITIATE_GROUP_CHAT:Ljava/lang/String; = "org.gsma.joyn.action.INITIATE_GROUP_CHAT"

.field public static final ACTION_VIEW_CHAT:Ljava/lang/String; = "org.gsma.joyn.action.VIEW_CHAT"

.field public static final ACTION_VIEW_GROUP_CHAT:Ljava/lang/String; = "org.gsma.joyn.action.VIEW_GROUP_CHAT"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method
