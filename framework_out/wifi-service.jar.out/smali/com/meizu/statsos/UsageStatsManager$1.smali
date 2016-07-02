.class Lcom/meizu/statsos/UsageStatsManager$1;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsos/UsageStatsManager;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsos/UsageStatsManager;


# direct methods
.method constructor <init>(Lcom/meizu/statsos/UsageStatsManager;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsManager$1;->this$0:Lcom/meizu/statsos/UsageStatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsManager$1;->this$0:Lcom/meizu/statsos/UsageStatsManager;

    # invokes: Lcom/meizu/statsos/UsageStatsManager;->init()V
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsManager;->access$000(Lcom/meizu/statsos/UsageStatsManager;)V

    .line 60
    return-void
.end method
