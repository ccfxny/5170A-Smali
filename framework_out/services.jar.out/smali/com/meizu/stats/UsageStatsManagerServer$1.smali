.class Lcom/meizu/stats/UsageStatsManagerServer$1;
.super Ljava/lang/Object;
.source "UsageStatsManagerServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsManagerServer;


# direct methods
.method constructor <init>(Lcom/meizu/stats/UsageStatsManagerServer;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer$1;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer$1;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    const-string v0, "UsageStatsManagerServer"

    const-string v1, "cleared packageSessionMap "

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
