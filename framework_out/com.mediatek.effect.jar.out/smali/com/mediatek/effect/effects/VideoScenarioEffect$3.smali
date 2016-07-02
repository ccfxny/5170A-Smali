.class Lcom/mediatek/effect/effects/VideoScenarioEffect$3;
.super Ljava/lang/Object;
.source "VideoScenarioEffect.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 160
    iput-object p1, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$3;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/effect/effects/VideoScenarioEffect$3;->this$0:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    iget-object v0, v0, Lcom/mediatek/effect/effects/VideoScenarioEffect;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "MediaPlayer is prepared"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 163
    return-void
.end method
