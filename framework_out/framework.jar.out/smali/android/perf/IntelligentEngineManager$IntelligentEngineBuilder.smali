.class final Landroid/perf/IntelligentEngineManager$IntelligentEngineBuilder;
.super Ljava/lang/Object;
.source "IntelligentEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/perf/IntelligentEngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntelligentEngineBuilder"
.end annotation


# static fields
.field static sIntelligentEngineManager:Landroid/perf/IntelligentEngineManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/perf/IntelligentEngineManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/perf/IntelligentEngineManager;-><init>(Landroid/perf/IntelligentEngineManager$1;)V

    sput-object v0, Landroid/perf/IntelligentEngineManager$IntelligentEngineBuilder;->sIntelligentEngineManager:Landroid/perf/IntelligentEngineManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
