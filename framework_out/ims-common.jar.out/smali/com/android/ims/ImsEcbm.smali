.class public Lcom/android/ims/ImsEcbm;
.super Ljava/lang/Object;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsEcbm"


# instance fields
.field private final miEcbm:Lcom/android/ims/internal/IImsEcbm;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsEcbm;)V
    .locals 2
    .param p1, "iEcbm"    # Lcom/android/ims/internal/IImsEcbm;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "ImsEcbm"

    const-string v1, "ImsEcbm created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    .line 61
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "exitEmergencyCallbackMode()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V
    .locals 4
    .param p1, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    new-instance v2, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;

    invoke-direct {v2, p0, p1}, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;-><init>(Lcom/android/ims/ImsEcbm;Lcom/android/ims/ImsEcbmStateListener;)V

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setEcbmStateListener()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
