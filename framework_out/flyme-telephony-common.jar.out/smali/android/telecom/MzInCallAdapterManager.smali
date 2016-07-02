.class public final Landroid/telecom/MzInCallAdapterManager;
.super Ljava/lang/Object;
.source "MzInCallAdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/MzInCallAdapterManager$MzInCallUiState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MzInCallAdapterManager"

.field private static sInstance:Landroid/telecom/MzInCallAdapterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/telecom/MzInCallAdapterManager;

    invoke-direct {v0}, Landroid/telecom/MzInCallAdapterManager;-><init>()V

    sput-object v0, Landroid/telecom/MzInCallAdapterManager;->sInstance:Landroid/telecom/MzInCallAdapterManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getDefault()Landroid/telecom/MzInCallAdapterManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/telecom/MzInCallAdapterManager;->sInstance:Landroid/telecom/MzInCallAdapterManager;

    return-object v0
.end method

.method private static getIMzInCallAdapter()Lcom/android/internal/telecom/IMzInCallAdapter;
    .locals 1

    .prologue
    .line 27
    const-string v0, "call_adapter"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IMzInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IMzInCallAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isHeadsetPluggedOrBluetoothAudioOnMz()Z
    .locals 3

    .prologue
    .line 73
    const-string v1, "MzInCallAdapterManager"

    const-string v2, "IS BLUETOOTH AUDIO ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    invoke-static {}, Landroid/telecom/MzInCallAdapterManager;->getIMzInCallAdapter()Lcom/android/internal/telecom/IMzInCallAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IMzInCallAdapter;->isHeadsetPluggedOrBluetoothAudioOnMz()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecorder(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "recordType"    # I

    .prologue
    .line 46
    const-string v0, "MzInCallAdapterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start recorder callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recordType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_0
    invoke-static {}, Landroid/telecom/MzInCallAdapterManager;->getIMzInCallAdapter()Lcom/android/internal/telecom/IMzInCallAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IMzInCallAdapter;->startRecorder(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopRecorder(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "MzInCallAdapterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop recorder callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    invoke-static {}, Landroid/telecom/MzInCallAdapterManager;->getIMzInCallAdapter()Lcom/android/internal/telecom/IMzInCallAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IMzInCallAdapter;->stopRecorder(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateTelecomForIncallUi(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 90
    const-string v1, "MzInCallAdapterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTelecomForIncallUi state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    invoke-static {}, Landroid/telecom/MzInCallAdapterManager;->getIMzInCallAdapter()Lcom/android/internal/telecom/IMzInCallAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IMzInCallAdapter;->updateTelecomForIncallUi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
