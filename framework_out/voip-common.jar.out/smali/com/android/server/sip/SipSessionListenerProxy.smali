.class Lcom/android/server/sip/SipSessionListenerProxy;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipSessionListnerProxy"


# instance fields
.field private mListener:Landroid/net/sip/ISipSessionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sip/SipSessionListenerProxy;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sip/SipSessionListenerProxy;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 249
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, p2, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v0, "SipSessionListnerProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 263
    const-string v0, "SipSessionListnerProxy"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    return-void
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SipSessionCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method


# virtual methods
.method public getListener()Landroid/net/sip/ISipSessionListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object v0
.end method

.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$7;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$8;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$5;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$4;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "newSession"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$6;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$1;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$9;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$10;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$11;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$12;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$13;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$2;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$3;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    .line 33
    return-void
.end method
