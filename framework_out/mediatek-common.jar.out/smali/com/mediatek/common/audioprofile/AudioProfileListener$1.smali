.class Lcom/mediatek/common/audioprofile/AudioProfileListener$1;
.super Lcom/mediatek/common/audioprofile/IAudioProfileListener$Stub;
.source "AudioProfileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/audioprofile/AudioProfileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;


# direct methods
.method constructor <init>(Lcom/mediatek/common/audioprofile/AudioProfileListener;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/mediatek/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/mediatek/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 2
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/mediatek/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method public onVibrateSettingChanged(II)V
    .locals 2
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/mediatek/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 172
    return-void
.end method
