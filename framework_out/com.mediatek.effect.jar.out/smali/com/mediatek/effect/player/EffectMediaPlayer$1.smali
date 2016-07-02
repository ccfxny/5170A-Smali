.class Lcom/mediatek/effect/player/EffectMediaPlayer$1;
.super Ljava/lang/Object;
.source "EffectMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

.field final synthetic val$listener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$1;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iput-object p2, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$1;->val$listener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

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
    .line 145
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$1;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoSizeChanged(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$1;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/effect/player/EffectCore;->setInputSizeToFitOutputSize(II)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$1;->val$listener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$1;->val$listener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 149
    :cond_0
    return-void
.end method
