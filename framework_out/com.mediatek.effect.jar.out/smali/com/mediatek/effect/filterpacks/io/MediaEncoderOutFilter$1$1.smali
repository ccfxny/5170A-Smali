.class Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1$1;
.super Ljava/lang/Object;
.source "MediaEncoderOutFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;->onInfo(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1$1;->this$1:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1$1;->this$1:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;

    iget-object v2, v2, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v2}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Encoder close Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1$1;->this$1:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const/16 v1, 0x77

    const-string v2, "Encoder close Thread part 2: close graph"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1$1;->this$1:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/player/EffectPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/effect/player/EffectPlayer;->graphClose()V

    .line 435
    return-void
.end method
