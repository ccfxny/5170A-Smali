.class Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;
.super Ljava/lang/Object;
.source "MediaEncoderOutFilter.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->access$000(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/filterpacks/MyUtility;

    move-result-object v0

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 428
    const v0, 0x186a0

    if-le p2, v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;->this$0:Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;

    # getter for: Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->mEffectPlayer:Lcom/mediatek/effect/player/EffectPlayer;
    invoke-static {v0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;->access$100(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter;)Lcom/mediatek/effect/player/EffectPlayer;

    move-result-object v0

    new-instance v1, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1$1;

    invoke-direct {v1, p0}, Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1$1;-><init>(Lcom/mediatek/effect/filterpacks/io/MediaEncoderOutFilter$1;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/player/EffectPlayer;->submit(Ljava/lang/Runnable;)V

    .line 438
    :cond_0
    return-void
.end method
