.class public final Lcom/android/server/hips/common/LogEx;
.super Ljava/lang/Object;
.source "LogEx.java"


# static fields
.field public static final TAG_AMS:Ljava/lang/String; = "FLYME_HIPS_AMS"

.field public static final TAG_DEBUG:Ljava/lang/String; = "FLYME_HIPS_DEBUG"

.field public static final TAG_PMS:Ljava/lang/String; = "FLYME_HIPS_PMS"

.field public static volatile mDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/hips/common/LogEx;->mDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/server/hips/common/LogEx;->mDebug:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method
