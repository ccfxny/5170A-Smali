.class Lcom/mediatek/effect/player/EffectCore$1;
.super Ljava/lang/Object;
.source "EffectCore.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectCore;->graphCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectCore;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/player/EffectCore;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    .line 766
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v1

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Graph runner done ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v4}, Lcom/mediatek/effect/player/EffectCore;->access$000(Lcom/mediatek/effect/player/EffectCore;)Landroid/filterfw/core/GraphRunner;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 767
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v1

    const/16 v2, 0x65

    const-string v3, "Error running filter graph!"

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$000(Lcom/mediatek/effect/player/EffectCore;)Landroid/filterfw/core/GraphRunner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$000(Lcom/mediatek/effect/player/EffectCore;)Landroid/filterfw/core/GraphRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 773
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v1

    const/16 v2, 0x77

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Graph runner err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 780
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$200(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    new-instance v2, Lcom/mediatek/effect/player/EffectCore$1$1;

    invoke-direct {v2, p0}, Lcom/mediatek/effect/player/EffectCore$1$1;-><init>(Lcom/mediatek/effect/player/EffectCore$1;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/effect/player/EffectCore;->submit(Ljava/lang/Runnable;)V

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v1}, Lcom/mediatek/effect/player/EffectCore;->graphCleanResource()V

    .line 793
    return-void

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$000(Lcom/mediatek/effect/player/EffectCore;)Landroid/filterfw/core/GraphRunner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 777
    iget-object v1, p0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v1}, Lcom/mediatek/effect/player/EffectCore;->access$000(Lcom/mediatek/effect/player/EffectCore;)Landroid/filterfw/core/GraphRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->close()V

    goto :goto_0
.end method
