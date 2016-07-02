.class public Lorg/gsma/joyn/Intents$Client;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# static fields
.field public static final ACTION_CLIENT_GET_STATUS:Ljava/lang/String; = ".client.action.GET_STATUS"

.field public static final ACTION_VIEW_SETTINGS:Ljava/lang/String; = "org.gsma.joyn.action.VIEW_SETTINGS"

.field public static final EXTRA_CLIENT:Ljava/lang/String; = "client"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final SERVICE_UP:Ljava/lang/String; = "org.gsma.joyn.action.SERVICE_UP"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method
