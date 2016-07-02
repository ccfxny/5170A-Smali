.class public Lorg/gsma/joyn/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/Build$GSMA_CODES;,
        Lorg/gsma/joyn/Build$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final API_CODENAME:Ljava/lang/String; = "GSMA"

.field public static final API_INCREMENTAL:I = 0x0

.field public static final API_VERSION:I = 0x1

.field public static final GSMA_VERSION:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method
