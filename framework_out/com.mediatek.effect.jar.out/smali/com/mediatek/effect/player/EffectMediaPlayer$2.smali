.class Lcom/mediatek/effect/player/EffectMediaPlayer$2;
.super Ljava/lang/Object;
.source "EffectMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

.field final synthetic val$listener:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$2;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iput-object p2, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$2;->val$listener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$2;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$2;->val$listener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$2;->val$listener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 163
    :cond_0
    return-void
.end method
