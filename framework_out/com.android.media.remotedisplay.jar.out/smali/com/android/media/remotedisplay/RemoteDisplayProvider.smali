.class public abstract Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.super Ljava/lang/Object;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;,
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;
    }
.end annotation


# static fields
.field public static final DISCOVERY_MODE_ACTIVE:I = 0x2

.field public static final DISCOVERY_MODE_NONE:I = 0x0

.field public static final DISCOVERY_MODE_PASSIVE:I = 0x1

.field private static final MSG_ADJUST_VOLUME:I = 0x6

.field private static final MSG_CONNECT:I = 0x3

.field private static final MSG_DISCONNECT:I = 0x4

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_DISCOVERY_MODE:I = 0x2

.field private static final MSG_SET_VOLUME:I = 0x5

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.remotedisplay.RemoteDisplayProvider"


# instance fields
.field private mCallback:Landroid/media/IRemoteDisplayCallback;

.field private final mContext:Landroid/content/Context;

.field private mDiscoveryMode:I

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;

.field private final mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    .line 148
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    .line 149
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    invoke-direct {v0, p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    .line 150
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    return-object v0
.end method


# virtual methods
.method public addDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .prologue
    .line 240
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 245
    return-void
.end method

.method public findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/media/remotedisplay/RemoteDisplay;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoveryMode()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    return v0
.end method

.method public getDisplays()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "settingsIntent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 297
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method public onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "delta"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .prologue
    .line 187
    return-void
.end method

.method public onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .prologue
    .line 195
    return-void
.end method

.method public onDiscoveryModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 179
    return-void
.end method

.method public onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "volume"    # I

    .prologue
    .line 204
    return-void
.end method

.method publishState()V
    .locals 6

    .prologue
    .line 313
    iget-object v4, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    if-eqz v4, :cond_1

    .line 314
    new-instance v3, Landroid/media/RemoteDisplayState;

    invoke-direct {v3}, Landroid/media/RemoteDisplayState;-><init>()V

    .line 315
    .local v3, "state":Landroid/media/RemoteDisplayState;
    iget-object v4, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 316
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 317
    iget-object v4, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 318
    .local v1, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    iget-object v4, v3, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getInfo()Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    invoke-interface {v4, v3}, Landroid/media/IRemoteDisplayCallback;->onStateChanged(Landroid/media/RemoteDisplayState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "state":Landroid/media/RemoteDisplayState;
    :cond_1
    :goto_1
    return-void

    .line 322
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "state":Landroid/media/RemoteDisplayState;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public removeDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 271
    return-void
.end method

.method setCallback(Landroid/media/IRemoteDisplayCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/IRemoteDisplayCallback;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    .line 302
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 303
    return-void
.end method

.method setDiscoveryMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 306
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    if-eq v0, p1, :cond_0

    .line 307
    iput p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDiscoveryModeChanged(I)V

    .line 310
    :cond_0
    return-void
.end method

.method public updateDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 258
    return-void
.end method
