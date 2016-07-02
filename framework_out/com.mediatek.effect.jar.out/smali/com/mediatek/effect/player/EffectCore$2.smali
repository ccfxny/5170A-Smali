.class Lcom/mediatek/effect/player/EffectCore$2;
.super Ljava/lang/Object;
.source "EffectCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectCore;->graphRun()Landroid/graphics/SurfaceTexture;
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
    .line 908
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x65

    .line 910
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v4}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Effect Thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 911
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 912
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$000(Lcom/mediatek/effect/player/EffectCore;)Landroid/filterfw/core/GraphRunner;

    move-result-object v0

    .line 913
    .local v0, "LocalRunner":Landroid/filterfw/core/GraphRunner;
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    .line 914
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v2

    const/16 v3, 0x64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "graphRun() Start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 916
    :try_start_0
    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "graphRun() Stopped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 937
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    iput-boolean v7, v2, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    .line 938
    const/4 v0, 0x0

    .line 940
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v2

    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not run graph: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 919
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 921
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v2

    const/16 v3, 0x76

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "graphRun() mProcessDone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;
    invoke-static {v5}, Lcom/mediatek/effect/player/EffectCore;->access$200(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 922
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mProcessDone:Lcom/mediatek/effect/filterpacks/ProcessDoneListener;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$200(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/ProcessDoneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 923
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    new-instance v3, Lcom/mediatek/effect/player/EffectCore$2$1;

    invoke-direct {v3, p0}, Lcom/mediatek/effect/player/EffectCore$2$1;-><init>(Lcom/mediatek/effect/player/EffectCore$2;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/effect/player/EffectCore;->submit(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v2}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "graphRun() Stopped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 937
    iget-object v2, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    iput-boolean v7, v2, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    .line 938
    const/4 v0, 0x0

    .line 939
    goto :goto_0

    .line 936
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    # getter for: Lcom/mediatek/effect/player/EffectCore;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v3}, Lcom/mediatek/effect/player/EffectCore;->access$100(Lcom/mediatek/effect/player/EffectCore;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "graphRun() Stopped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 937
    iget-object v3, p0, Lcom/mediatek/effect/player/EffectCore$2;->this$0:Lcom/mediatek/effect/player/EffectCore;

    iput-boolean v7, v3, Lcom/mediatek/effect/player/EffectCore;->isGraphRunning:Z

    .line 938
    const/4 v0, 0x0

    throw v2
.end method
