.class Lcom/mediatek/effect/effects/VideoScenarioEffect$2;
.super Ljava/lang/Object;
.source "VideoScenarioEffect.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 155
    iput-object p1, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$2;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$2;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    iget-object v0, v0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer sent dimensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 158
    return-void
.end method
