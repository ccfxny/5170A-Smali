.class public Landroid/net/sip/SipAudioCall$Listener;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipAudioCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 138
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 128
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 118
    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 148
    return-void
.end method

.method public onCalling(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 87
    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 170
    return-void
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public onReadyToCall(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 77
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 98
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 108
    return-void
.end method
