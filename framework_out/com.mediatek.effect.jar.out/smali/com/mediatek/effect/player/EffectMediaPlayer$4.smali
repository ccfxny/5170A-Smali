.class Lcom/mediatek/effect/player/EffectMediaPlayer$4;
.super Ljava/lang/Object;
.source "EffectMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/effect/player/EffectMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

.field final synthetic val$listener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method constructor <init>(Lcom/mediatek/effect/player/EffectMediaPlayer;Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$4;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iput-object p2, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$4;->val$listener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$4;->this$0:Lcom/mediatek/effect/player/EffectMediaPlayer;

    iget-object v0, v0, Lcom/mediatek/effect/player/EffectMediaPlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$4;->val$listener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectMediaPlayer$4;->val$listener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
