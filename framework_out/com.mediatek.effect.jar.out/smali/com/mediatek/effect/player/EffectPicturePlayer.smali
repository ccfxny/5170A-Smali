.class public Lcom/mediatek/effect/player/EffectPicturePlayer;
.super Lcom/mediatek/effect/player/EffectPlayer;
.source "EffectPicturePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mediatek/effect/player/EffectPlayer;-><init>(II)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/effect/player/EffectPicturePlayer;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectPicturePlayer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/effect/player/EffectPicturePlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/effect/player/EffectPicturePlayer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/mediatek/effect/player/EffectPlayer;->release()V

    .line 122
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showPicture(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "sbmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v1, 0x64

    const-string v2, "showPicture() "

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    iget-boolean v0, p0, Lcom/mediatek/effect/player/EffectPicturePlayer;->isStartThreadRunning:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;

    invoke-direct {v0, p0}, Lcom/mediatek/effect/player/EffectPicturePlayer$StartGraphThread;-><init>(Lcom/mediatek/effect/player/EffectPicturePlayer;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/player/EffectPicturePlayer;->submit(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
