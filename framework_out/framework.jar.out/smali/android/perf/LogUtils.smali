.class public Landroid/perf/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "IntelligentEngine"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "debug.intelligentengine.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/perf/LogUtils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logBoostError(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-boolean v0, Landroid/perf/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "IntelligentEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static logBoostInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-boolean v0, Landroid/perf/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "IntelligentEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static logBoostWarn(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v0, Landroid/perf/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "IntelligentEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method
