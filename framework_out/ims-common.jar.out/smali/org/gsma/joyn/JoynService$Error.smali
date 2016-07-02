.class public Lorg/gsma/joyn/JoynService$Error;
.super Ljava/lang/Object;
.source "JoynService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/JoynService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final CONNECTION_LOST:I = 0x2

.field public static final INTERNAL_ERROR:I = 0x0

.field public static final SERVICE_DISABLED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method
