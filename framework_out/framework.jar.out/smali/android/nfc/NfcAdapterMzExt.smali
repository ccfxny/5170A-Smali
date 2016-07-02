.class public Landroid/nfc/NfcAdapterMzExt;
.super Ljava/lang/Object;
.source "NfcAdapterMzExt.java"


# static fields
.field public static final EXTRA_NDEF_URI:Ljava/lang/String; = "android.nfc.extra.NDEF_URI"

.field public static final MZ_ACTION_MZ_NFC_P2P_STATE_CHANGED:Ljava/lang/String; = "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

.field public static final MZ_ACTION_NFC_SHARE_STATE_CHANGED:Ljava/lang/String; = "mz.android.nfc.action.MZ_ACTION_NFC_SHARE_STATE_CHANGED"

.field public static final MZ_EXTRA_MZ_NFC_P2P_STATE:Ljava/lang/String; = "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

.field public static final MZ_EXTRA_MZ_NFC_SHARE_STATE:Ljava/lang/String; = "mz.android.nfc.extra.MZ_EXTRA_MZ_NFC_SHARE_STATE"

.field public static final MZ_NFC_P2P_STATE_OFF:I = 0x0

.field public static final MZ_NFC_P2P_STATE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Landroid/nfc/NfcAdapterMzExt;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Landroid/nfc/NfcAdapterMzExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static declared-synchronized getNfcAdapterMzExt(Landroid/content/Context;)Landroid/nfc/NfcAdapterMzExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Landroid/nfc/NfcAdapterMzExt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/nfc/NfcAdapterMzExt;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapterMzExt;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    .line 32
    :cond_0
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasHceFeature()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 110
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 111
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return v2

    .line 115
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc.hce"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public connectMzNfcP2p()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set MZ_NFCP2P_ON to DB, the value is 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_nfcp2p_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string/jumbo v1, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendBroadcast: mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public disconnectMzNfcP2p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set MZ_NFCP2P_ON to DB, the value is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_nfcp2p_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendBroadcast: mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public isMzNfcP2pConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_nfcp2p_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
