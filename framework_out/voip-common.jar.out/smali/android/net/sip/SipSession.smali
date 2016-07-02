.class public final Landroid/net/sip/SipSession;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipSession$Listener;,
        Landroid/net/sip/SipSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipSession"


# instance fields
.field private mListener:Landroid/net/sip/SipSession$Listener;

.field private final mSession:Landroid/net/sip/ISipSession;


# direct methods
.method constructor <init>(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "realSession"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    .line 241
    if-eqz p1, :cond_0

    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipSession;->createListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/net/sip/ISipSession;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SipSession.setListener:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V
    .locals 0
    .param p1, "realSession"    # Landroid/net/sip/ISipSession;
    .param p2, "listener"    # Landroid/net/sip/SipSession$Listener;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    .line 252
    invoke-virtual {p0, p2}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 253
    return-void
.end method

.method static synthetic access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipSession;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    return-object v0
.end method

.method private createListener()Landroid/net/sip/ISipSessionListener;
    .locals 1

    .prologue
    .line 465
    new-instance v0, Landroid/net/sip/SipSession$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipSession$1;-><init>(Landroid/net/sip/SipSession;)V

    return-object v0
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 572
    const-string v0, "SipSession"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    return-void
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1, p2}, Landroid/net/sip/ISipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "answerCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1, p2}, Landroid/net/sip/ISipSession;->changeCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "changeCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endCall()V
    .locals 2

    .prologue
    .line 437
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->endCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "endCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getCallId:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getLocalIp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getLocalIp:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    const-string v1, "127.0.0.1"

    goto :goto_0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 2

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getLocalProfile:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 2

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getPeerProfile()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getPeerProfile:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRealSession()Landroid/net/sip/ISipSession;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    return-object v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getState:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    const/16 v1, 0x65

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 2

    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    :goto_0
    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "isInCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callee"    # Landroid/net/sip/SipProfile;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/sip/ISipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "makeCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public register(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1, p1}, Landroid/net/sip/ISipSession;->register(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "register:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setListener(Landroid/net/sip/SipSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/sip/SipSession$Listener;

    .prologue
    .line 350
    iput-object p1, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    .line 351
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v1}, Landroid/net/sip/ISipSession;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "unregister:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
