.class Lcom/meizu/statsos/UsageStatsManagerServer$1;
.super Ljava/lang/Object;
.source "UsageStatsManagerServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsos/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsos/UsageStatsManagerServer;


# direct methods
.method constructor <init>(Lcom/meizu/statsos/UsageStatsManagerServer;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsManagerServer$1;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManagerServer$1;->this$0:Lcom/meizu/statsos/UsageStatsManagerServer;

    # getter for: Lcom/meizu/statsos/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsManagerServer;->access$000(Lcom/meizu/statsos/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    const-string v0, "UsageStatsManagerServer"

    const-string v1, "cleared packageSessionMap "

    invoke-static {v0, v1}, Lcom/meizu/statsos/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
