.class public Lorg/gsma/joyn/Intents$IPCall;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPCall"
.end annotation


# static fields
.field public static final ACTION_INITIATE_IPCALL:Ljava/lang/String; = "org.gsma.joyn.action.INITIATE_IPCALL"

.field public static final ACTION_VIEW_IPCALL:Ljava/lang/String; = "org.gsma.joyn.action.VIEW_IPCALL"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method
