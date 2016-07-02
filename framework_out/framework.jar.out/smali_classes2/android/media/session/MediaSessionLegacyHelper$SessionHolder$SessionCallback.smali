.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    .param p2, "x1"    # Landroid/media/session/MediaSessionLegacyHelper$1;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V

    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onFastForward()V

    .line 538
    :cond_0
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 499
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 502
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPause()V

    .line 517
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPlay()V

    .line 510
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onRewind()V

    .line 545
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 556
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    .line 559
    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 563
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    .line 566
    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToNext()V

    .line 524
    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToPrevious()V

    .line 531
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onStop()V

    .line 552
    :cond_0
    return-void
.end method
