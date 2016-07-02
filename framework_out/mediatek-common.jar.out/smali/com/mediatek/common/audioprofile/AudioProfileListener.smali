.class public Lcom/mediatek/common/audioprofile/AudioProfileListener;
.super Ljava/lang/Object;
.source "AudioProfileListener.java"


# static fields
.field public static final LISTEN_PROFILE_CHANGE:I = 0x1

.field public static final LISTEN_RINGERMODE_CHANGED:I = 0x2

.field public static final LISTEN_RINGER_VOLUME_CHANGED:I = 0x4

.field public static final LISTEN_VIBRATE_SETTING_CHANGED:I = 0x8

.field public static final STOP_LISTEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioProfileListener"


# instance fields
.field callback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/mediatek/common/audioprofile/AudioProfileListener$1;

    invoke-direct {v0, p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener$1;-><init>(Lcom/mediatek/common/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener;->callback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    .line 175
    new-instance v0, Lcom/mediatek/common/audioprofile/AudioProfileListener$2;

    invoke-direct {v0, p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener$2;-><init>(Lcom/mediatek/common/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/mediatek/common/audioprofile/IAudioProfileListener;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener;->callback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    return-object v0
.end method

.method public onProfileChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 0
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public onVibrateSettingChanged(II)V
    .locals 0
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 152
    return-void
.end method
