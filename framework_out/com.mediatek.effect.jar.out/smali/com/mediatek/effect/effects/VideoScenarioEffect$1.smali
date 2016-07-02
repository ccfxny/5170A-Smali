.class Lcom/mediatek/effect/effects/VideoScenarioEffect$1;
.super Ljava/lang/Object;
.source "VideoScenarioEffect.java"

# interfaces
.implements Lcom/mediatek/effect/filterpacks/ProcessDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/effects/VideoScenarioEffect;->playVideoSetup(Lcom/mediatek/effect/player/EffectMediaPlayer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/effects/VideoScenarioEffect;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$1;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessDone(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$1;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$1;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    iget-object v0, v0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v2, 0x64

    const-string v3, "Process done !"

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$1;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/mediatek/effect/effects/VideoScenarioEffect;->processResult:Z
    invoke-static {v2, v0}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->access$002(Lcom/mediatek/effect/effects/VideoScenarioEffect;Z)Z

    .line 150
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$1;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
