.class public Lorg/gsma/joyn/Intents$FileTransfer;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileTransfer"
.end annotation


# static fields
.field public static final ACTION_INITIATE_FT:Ljava/lang/String; = "org.gsma.joyn.action.INITIATE_FT"

.field public static final ACTION_VIEW_FT:Ljava/lang/String; = "org.gsma.joyn.action.VIEW_FT"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method
