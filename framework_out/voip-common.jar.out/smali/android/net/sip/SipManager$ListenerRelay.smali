.class Landroid/net/sip/SipManager$ListenerRelay;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRelay"
.end annotation


# instance fields
.field private mListener:Landroid/net/sip/SipRegistrationListener;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 593
    iput-object p1, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    .line 594
    iput-object p2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    .line 595
    return-void
.end method

.method private getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;
    .locals 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 599
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    .line 605
    :goto_0
    return-object v1

    .line 599
    :cond_0
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SipManager"

    const-string v2, "getUri(): "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 611
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistering(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .prologue
    .line 616
    int-to-long v0, p2

    .line 617
    .local v0, "expiryTime":J
    if-lez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 618
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 619
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .prologue
    .line 629
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    const-string v3, "registration timed out"

    invoke-interface {v0, v1, v2, v3}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 631
    return-void
.end method
