.class Lcom/mediatek/effect/player/EffectCore$1$1;
.super Ljava/lang/Object;
.source "EffectCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectCore$1;->onRunnerDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/effect/player/EffectCore$1;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/player/EffectCore$1;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore$1$1;->this$1:Lcom/mediatek/effect/player/EffectCore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 784
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$1$1;->this$1:Lcom/mediatek/effect/player/EffectCore$1;

    iget-object v2, v2, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] OnProcessDone Call Back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore$1$1;->this$1:Lcom/mediatek/effect/player/EffectCore$1;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;
    invoke-static {v0}, Lcom/mediatek/effect/player/EffectCore;->access$200(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectCore$1$1;->this$1:Lcom/mediatek/effect/player/EffectCore$1;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectCore$1;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;
    invoke-static {v0}, Lcom/mediatek/effect/player/EffectCore;->access$200(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/mediatek/effect/filterpacks/ProcessDoneListener;->onProcessDone(Ljava/lang/Object;)V

    .line 788
    :cond_0
    return-void
.end method
