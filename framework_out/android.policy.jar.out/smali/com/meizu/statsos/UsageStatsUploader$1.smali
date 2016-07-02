.class Lcom/meizu/statsos/UsageStatsUploader$1;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsos/UsageStatsUploader;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsos/UsageStatsUploader;


# direct methods
.method constructor <init>(Lcom/meizu/statsos/UsageStatsUploader;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/statsos/UsageStatsUploader$1;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/statsos/UsageStatsUploader$1;->this$0:Lcom/meizu/statsos/UsageStatsUploader;

    # getter for: Lcom/meizu/statsos/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/statsos/UsageStatsProviderHelper;
    invoke-static {v0}, Lcom/meizu/statsos/UsageStatsUploader;->access$000(Lcom/meizu/statsos/UsageStatsUploader;)Lcom/meizu/statsos/UsageStatsProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/statsos/UsageStatsProviderHelper;->clearOldData()I

    .line 134
    return-void
.end method
