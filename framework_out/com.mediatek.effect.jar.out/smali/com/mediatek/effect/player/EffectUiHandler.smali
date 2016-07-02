.class public Lcom/mediatek/effect/player/EffectUiHandler;
.super Landroid/os/Handler;
.source "EffectUiHandler.java"


# instance fields
.field private mTextMsg:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/effect/player/EffectUiHandler;->mTextMsg:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectUiHandler;->mTextView:Landroid/widget/TextView;

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/effect/player/EffectUiHandler;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/effect/player/EffectUiHandler;->mTextMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/effect/player/EffectUiHandler;->mTextMsg:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/effect/player/EffectUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    return-void
.end method
