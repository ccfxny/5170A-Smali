.class public Landroid/net/sip/SipAudioCall;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipAudioCall$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DONT_RELEASE_SOCKET:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RELEASE_SOCKET:Z = true

.field private static final SESSION_TIMEOUT:I = 0x5

.field private static final TRANSFER_TIMEOUT:I = 0xf


# instance fields
.field private mAudioGroup:Landroid/net/rtp/AudioGroup;

.field private mAudioStream:Landroid/net/rtp/AudioStream;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHold:Z

.field private mInCall:Z

.field private mListener:Landroid/net/sip/SipAudioCall$Listener;

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMuted:Z

.field private mPeerSd:Ljava/lang/String;

.field private mSessionId:J

.field private mSipSession:Landroid/net/sip/SipSession;

.field private mTransferringSession:Landroid/net/sip/SipSession;

.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 185
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 186
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 187
    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 192
    iput v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 201
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 203
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    .line 204
    return-void
.end method

.method static synthetic access$000(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/sip/SipAudioCall;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->close(Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/sip/SipAudioCall;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    iget v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return v0
.end method

.method static synthetic access$1102(Landroid/net/sip/SipAudioCall;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return p1
.end method

.method static synthetic access$1202(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    return v0
.end method

.method static synthetic access$500(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;
    .param p1, "x1"    # Landroid/net/sip/SipSession;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->transferToNewSession()V

    return-void
.end method

.method static synthetic access$900(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    return v0
.end method

.method private declared-synchronized close(Z)V
    .locals 2
    .param p1, "closeRtp"    # Z

    .prologue
    .line 292
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 294
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_1
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 22
    .param p1, "offerSd"    # Ljava/lang/String;

    .prologue
    .line 750
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v4

    .line 808
    :goto_0
    return-object v4

    .line 751
    :cond_0
    new-instance v14, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 753
    .local v14, "offer":Landroid/net/sip/SimpleSessionDescription;
    new-instance v4, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    move-wide/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 755
    .local v4, "answer":Landroid/net/sip/SimpleSessionDescription;
    const/4 v7, 0x0

    .line 756
    .local v7, "codec":Landroid/net/rtp/AudioCodec;
    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .local v5, "arr$":[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v5    # "arr$":[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_a

    aget-object v13, v5, v10

    .line 757
    .local v13, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v7, :cond_9

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v18

    if-lez v18, :cond_9

    const-string v18, "audio"

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "RTP/AVP"

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 761
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    .local v6, "arr$":[I
    array-length v12, v6

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_1

    aget v17, v6, v9

    .line 762
    .local v17, "type":I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v7

    .line 764
    if-eqz v7, :cond_3

    .line 768
    .end local v17    # "type":I
    :cond_1
    if-eqz v7, :cond_9

    .line 769
    const-string v18, "audio"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v19

    const/16 v20, 0x1

    const-string v21, "RTP/AVP"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 771
    .local v15, "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    iget v0, v7, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v18, v0

    iget-object v0, v7, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    array-length v12, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_4

    aget v17, v6, v9

    .line 775
    .restart local v17    # "type":I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v16

    .line 776
    .local v16, "rtpmap":Ljava/lang/String;
    iget v0, v7, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    if-eqz v16, :cond_2

    const-string v18, "telephone-event"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 778
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 761
    .end local v15    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v16    # "rtpmap":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 784
    .end local v17    # "type":I
    .restart local v15    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_4
    const-string v18, "recvonly"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 785
    const-string v18, "sendonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .end local v6    # "arr$":[I
    :cond_5
    :goto_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_1

    .line 786
    .end local v10    # "i$":I
    .restart local v6    # "arr$":[I
    .restart local v9    # "i$":I
    :cond_6
    const-string v18, "sendonly"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 787
    const-string v18, "recvonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 788
    :cond_7
    const-string v18, "recvonly"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 789
    const-string v18, "sendonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 790
    :cond_8
    const-string v18, "sendonly"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 791
    const-string v18, "recvonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 797
    .end local v6    # "arr$":[I
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_9
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 799
    .restart local v15    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/String;
    array-length v12, v6

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5
    if-ge v9, v12, :cond_5

    aget-object v8, v6, v9

    .line 800
    .local v8, "format":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v8, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 803
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "format":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v15    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    .restart local v10    # "i$":I
    :cond_a
    if-nez v7, :cond_b

    .line 804
    const-string v18, "createAnswer: no suitable codes"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    .line 805
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "Reject SDP: no suitable codecs"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 807
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "createAnswer: answer="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private createContinueOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 8

    .prologue
    .line 819
    const-string v4, "createContinueOffer"

    invoke-direct {p0, v4}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 820
    new-instance v3, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v4, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 822
    .local v3, "offer":Landroid/net/sip/SimpleSessionDescription;
    const-string v4, "audio"

    iget-object v5, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v5}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "RTP/AVP"

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .line 824
    .local v2, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .line 825
    .local v0, "codec":Landroid/net/rtp/AudioCodec;
    iget v4, v0, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v5, v0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    move-result v1

    .line 827
    .local v1, "dtmfType":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 828
    const-string v4, "telephone-event/8000"

    const-string v5, "0-15"

    invoke-virtual {v2, v1, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    return-object v3
.end method

.method private createHoldOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 3

    .prologue
    .line 812
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    .line 813
    .local v0, "offer":Landroid/net/sip/SimpleSessionDescription;
    const-string v1, "sendonly"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createHoldOffer: offer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 815
    return-object v0
.end method

.method private createListener()Landroid/net/sip/SipSession$Listener;
    .locals 1

    .prologue
    .line 376
    new-instance v0, Landroid/net/sip/SipAudioCall$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipAudioCall$1;-><init>(Landroid/net/sip/SipAudioCall;)V

    return-object v0
.end method

.method private createOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 11

    .prologue
    .line 736
    new-instance v6, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v8, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v9, v7}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 738
    .local v6, "offer":Landroid/net/sip/SimpleSessionDescription;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v2

    .line 739
    .local v2, "codecs":[Landroid/net/rtp/AudioCodec;
    const-string v7, "audio"

    iget-object v8, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v8}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v8

    const/4 v9, 0x1

    const-string v10, "RTP/AVP"

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .line 741
    .local v5, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/rtp/AudioCodec;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 742
    .local v1, "codec":Landroid/net/rtp/AudioCodec;
    iget v7, v1, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v8, v1, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v9, v1, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 741
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 744
    .end local v1    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_0
    const/16 v7, 0x7f

    const-string v8, "telephone-event/8000"

    const-string v9, "0-15"

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createOffer: offer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 746
    return-object v6
.end method

.method private getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private grabWifiHighPerfLock()V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 835
    const-string v0, "grabWifiHighPerfLock:"

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    sget-object v2, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 839
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 841
    :cond_0
    return-void
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isWifiOn()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1133
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1137
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1141
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    return-void
.end method

.method private onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 561
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 562
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 564
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 566
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    monitor-enter p0

    .line 572
    const/16 v2, -0xa

    if-eq p1, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 574
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 576
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    return-void

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onError():"

    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 576
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private releaseWifiHighPerfLock()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "releaseWifiHighPerfLock:"

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 849
    :cond_0
    return-void
.end method

.method private setAudioGroupMode()V
    .locals 3

    .prologue
    .line 1092
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 1093
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioGroupMode: audioGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 1094
    if-eqz v0, :cond_0

    .line 1095
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_1

    .line 1096
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-eqz v1, :cond_2

    .line 1098
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1099
    :cond_2
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->isSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1100
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1102
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0
.end method

.method private declared-synchronized startAudioInternal()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "startAudioInternal: mPeerSd="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    if-nez v15, :cond_0

    .line 1010
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "mPeerSd = null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1013
    :cond_0
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 1014
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 1017
    new-instance v11, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {v11, v15}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v11, "offer":Landroid/net/sip/SimpleSessionDescription;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 1020
    .local v13, "stream":Landroid/net/rtp/AudioStream;
    const/4 v5, 0x0

    .line 1021
    .local v5, "codec":Landroid/net/rtp/AudioCodec;
    invoke-virtual {v11}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .local v2, "arr$":[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v2    # "arr$":[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v10, v2, v7

    .line 1022
    .local v10, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v5, :cond_c

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v15

    if-lez v15, :cond_c

    const-string v15, "audio"

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, "RTP/AVP"

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1026
    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v3

    .local v3, "arr$":[I
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_1

    aget v14, v3, v6

    .line 1027
    .local v14, "type":I
    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v5

    .line 1029
    if-eqz v5, :cond_4

    .line 1034
    .end local v14    # "type":I
    :cond_1
    if-eqz v5, :cond_c

    .line 1036
    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "address":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1038
    invoke-virtual {v11}, Landroid/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1040
    :cond_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/net/rtp/AudioStream;->associate(Ljava/net/InetAddress;I)V

    .line 1043
    const/4 v15, -0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1044
    invoke-virtual {v13, v5}, Landroid/net/rtp/AudioStream;->setCodec(Landroid/net/rtp/AudioCodec;)V

    .line 1046
    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v2

    .end local v3    # "arr$":[I
    .local v2, "arr$":[I
    array-length v8, v2

    .end local v9    # "len$":I
    .restart local v8    # "len$":I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_5

    aget v14, v2, v6

    .line 1047
    .restart local v14    # "type":I
    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v12

    .line 1048
    .local v12, "rtpmap":Ljava/lang/String;
    iget v15, v5, Landroid/net/rtp/AudioCodec;->type:I

    if-eq v14, v15, :cond_3

    if-eqz v12, :cond_3

    const-string v15, "telephone-event"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1050
    invoke-virtual {v13, v14}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1046
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1026
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "arr$":[I
    .end local v8    # "len$":I
    .end local v12    # "rtpmap":Ljava/lang/String;
    .restart local v3    # "arr$":[I
    .restart local v9    # "len$":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1055
    .end local v3    # "arr$":[I
    .end local v9    # "len$":I
    .end local v14    # "type":I
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "arr$":[I
    .restart local v8    # "len$":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v15, :cond_7

    .line 1056
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    .line 1072
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "arr$":[I
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_6
    :goto_3
    if-nez v5, :cond_d

    .line 1073
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Reject SDP: no suitable codecs"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1057
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "arr$":[I
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_7
    const-string v15, "recvonly"

    invoke-virtual {v10, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 1058
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1059
    :cond_8
    const-string v15, "sendonly"

    invoke-virtual {v10, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 1060
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1061
    :cond_9
    const-string v15, "recvonly"

    invoke-virtual {v11, v15}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 1062
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1063
    :cond_a
    const-string v15, "sendonly"

    invoke-virtual {v11, v15}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 1064
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1066
    :cond_b
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1021
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "arr$":[I
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    :cond_c
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto/16 :goto_0

    .line 1076
    .end local v7    # "i$":I
    .end local v10    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->isWifiOn()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->grabWifiHighPerfLock()V

    .line 1079
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v4

    .line 1080
    .local v4, "audioGroup":Landroid/net/rtp/AudioGroup;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v15, :cond_f

    .line 1087
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    monitor-exit p0

    return-void

    .line 1084
    :cond_f
    if-nez v4, :cond_10

    :try_start_2
    new-instance v4, Landroid/net/rtp/AudioGroup;

    .end local v4    # "audioGroup":Landroid/net/rtp/AudioGroup;
    invoke-direct {v4}, Landroid/net/rtp/AudioGroup;-><init>()V

    .line 1085
    .restart local v4    # "audioGroup":Landroid/net/rtp/AudioGroup;
    :cond_10
    invoke-virtual {v13, v4}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private stopCall(Z)V
    .locals 3
    .param p1, "releaseSocket"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCall: releaseSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 1109
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->releaseWifiHighPerfLock()V

    .line 1110
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 1113
    if-eqz p1, :cond_0

    .line 1114
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->release()V

    .line 1115
    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 1118
    :cond_0
    return-void
.end method

.method private throwSipException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1125
    instance-of v0, p1, Landroid/net/sip/SipException;

    if-eqz v0, :cond_0

    .line 1126
    check-cast p1, Landroid/net/sip/SipException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    throw p1

    .line 1128
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized transferToNewSession()V
    .locals 4

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 373
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 357
    .local v0, "origin":Landroid/net/sip/SipSession;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 358
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    .line 361
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 371
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    .line 372
    :cond_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->startAudio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    .end local v0    # "origin":Landroid/net/sip/SipSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 365
    .restart local v0    # "origin":Landroid/net/sip/SipSession;
    :cond_2
    :try_start_2
    new-instance v2, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "transferToNewSession():"

    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public answerCall(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerCall: mSipSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 698
    monitor-enter p0

    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v1, :cond_0

    .line 700
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "No call to answer"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 703
    :cond_0
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 705
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    :try_start_2
    monitor-exit p0

    .line 711
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "answerCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "answerCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_0
    monitor-enter p0

    .line 595
    :try_start_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 596
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachCall(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :try_start_1
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 605
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "attachCall()"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->throwSipException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 604
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 289
    return-void
.end method

.method public continueCall(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continueCall: mSipSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 727
    monitor-enter p0

    .line 728
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 733
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 731
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 732
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: mSipSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 650
    monitor-enter p0

    .line 651
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 655
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    .line 656
    :cond_0
    monitor-exit p0

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 961
    monitor-enter p0

    .line 962
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    monitor-exit p0

    .line 963
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 963
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getAudioStream()Landroid/net/rtp/AudioStream;
    .locals 1

    .prologue
    .line 941
    monitor-enter p0

    .line 942
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    monitor-exit p0

    return-object v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    monitor-exit p0

    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSipSession()Landroid/net/sip/SipSession;
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    monitor-exit p0

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 337
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getState()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public holdCall(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: mSipSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 683
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_1

    .line 676
    const-string v0, "holdCall:"

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    .line 677
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "Not in a call to hold call"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 679
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createHoldOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 681
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 682
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    monitor-exit p0

    return v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 869
    monitor-enter p0

    .line 870
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    monitor-exit p0

    return v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnHold()Z
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    monitor-exit p0

    return v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V
    .locals 3
    .param p1, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "sipSession"    # Landroid/net/sip/SipSession;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_0
    monitor-enter p0

    .line 630
    :try_start_0
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 634
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 635
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p3}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :try_start_2
    monitor-exit p0

    .line 642
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "makeCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "makeCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendDtmf(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->sendDtmf(ILandroid/os/Message;)V

    .line 905
    return-void
.end method

.method public sendDtmf(ILandroid/os/Message;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 918
    monitor-enter p0

    .line 919
    :try_start_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 920
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    .line 925
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 926
    :cond_1
    monitor-exit p0

    .line 927
    return-void

    .line 926
    .end local v0    # "audioGroup":Landroid/net/rtp/AudioGroup;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioGroup(Landroid/net/rtp/AudioGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/net/rtp/AudioGroup;

    .prologue
    .line 980
    monitor-enter p0

    .line 981
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioGroup: group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 985
    :cond_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    .line 986
    monitor-exit p0

    .line 987
    return-void

    .line 986
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/sip/SipAudioCall$Listener;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V

    .line 215
    return-void
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .prologue
    .line 228
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 230
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    if-eqz v2, :cond_2

    .line 233
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "setListener()"

    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    if-eqz v2, :cond_4

    .line 235
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 242
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 244
    :pswitch_1
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onReadyToCall(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 250
    :pswitch_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 253
    :pswitch_4
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSpeakerMode(Z)V
    .locals 2
    .param p1, "speakerMode"    # Z

    .prologue
    .line 882
    monitor-enter p0

    .line 883
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 885
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 886
    monitor-exit p0

    .line 887
    return-void

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startAudio()V
    .locals 3

    .prologue
    .line 999
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->startAudioInternal()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1005
    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, -0x7

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1002
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toggleMute()V
    .locals 1

    .prologue
    .line 857
    monitor-enter p0

    .line 858
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 859
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 860
    monitor-exit p0

    .line 861
    return-void

    .line 858
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
