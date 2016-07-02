.class public Lcom/android/media/remotedisplay/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# static fields
.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x2

.field public static final STATUS_CONNECTED:I = 0x4

.field public static final STATUS_CONNECTING:I = 0x3

.field public static final STATUS_IN_USE:I = 0x1

.field public static final STATUS_NOT_AVAILABLE:I


# instance fields
.field private mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field private final mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-direct {v0, p1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 77
    invoke-virtual {p0, p2}, Lcom/android/media/remotedisplay/RemoteDisplay;->setName(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method getInfo()Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-direct {v0, v1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;-><init>(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationDisplayId()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    return v0
.end method

.method public getVolumeHandling()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput-object p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 104
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput-object p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 93
    :cond_0
    return-void
.end method

.method public setPresentationDisplayId(I)V
    .locals 1
    .param p1, "presentationDisplayId"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    if-eq v0, p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 159
    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    if-eq v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 115
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    if-eq v0, p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 126
    :cond_0
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .param p1, "volumeHandling"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    if-eq v0, p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 148
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .param p1, "volumeMax"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    if-eq v0, p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 137
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteDisplay{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-virtual {v1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
