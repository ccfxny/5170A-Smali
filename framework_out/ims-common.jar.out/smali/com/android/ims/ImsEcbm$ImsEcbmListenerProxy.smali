.class Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;
.super Lcom/android/ims/internal/IImsEcbmListener$Stub;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsEcbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsEcbmListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsEcbmStateListener;

.field final synthetic this$0:Lcom/android/ims/ImsEcbm;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsEcbm;Lcom/android/ims/ImsEcbmStateListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/android/ims/ImsEcbmStateListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->this$0:Lcom/android/ims/ImsEcbm;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbmListener$Stub;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    .line 89
    return-void
.end method


# virtual methods
.method public enteredECBM()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "ImsEcbm"

    const-string v1, "enteredECBM ::"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMEntered()V

    .line 98
    :cond_0
    return-void
.end method

.method public exitedECBM()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "ImsEcbm"

    const-string v1, "exitedECBM ::"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMExited()V

    .line 107
    :cond_0
    return-void
.end method
