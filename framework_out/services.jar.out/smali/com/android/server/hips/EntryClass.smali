.class public final Lcom/android/server/hips/EntryClass;
.super Ljava/lang/Object;
.source "EntryClass.java"


# static fields
.field private static volatile mbInitOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/hips/EntryClass;->mbInitOk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/android/server/hips/EntryClass;->mbInitOk:Z

    if-eqz v0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/hips/EntryClass;->mbInitOk:Z

    .line 15
    invoke-static {}, Lcom/android/server/hips/core/InterceptFactory;->getInstance()Lcom/android/server/hips/core/InterceptFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/core/InterceptFactory;->getInterceptDebugStatus()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hips/common/LogEx;->mDebug:Z

    goto :goto_0
.end method
