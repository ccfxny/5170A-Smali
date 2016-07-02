.class Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeCallCommand"
.end annotation


# instance fields
.field private mSessionDescription:Ljava/lang/String;

.field private mTimeout:I

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 0
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 1796
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1797
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    .line 1798
    iput p4, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    .line 1799
    return-void
.end method


# virtual methods
.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 1810
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    return v0
.end method
