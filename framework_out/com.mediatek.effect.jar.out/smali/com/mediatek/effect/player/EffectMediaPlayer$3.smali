.class Lcom/mediatek/effect/player/EffectMediaPlayer$3;
.super Ljava/lang/Object;
.source "EffectMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

.field final synthetic val$listener:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$3;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iput-object p2, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$3;->val$listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$3;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$3;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mEffectGraphCore:Lcom/mediatek/effect/player/EffectCore;

    invoke-virtual {v0}, Lcom/mediatek/effect/player/EffectCore;->graphClose()V

    .line 176
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$3;->val$listener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$3;->val$listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 178
    :cond_0
    return-void
.end method
