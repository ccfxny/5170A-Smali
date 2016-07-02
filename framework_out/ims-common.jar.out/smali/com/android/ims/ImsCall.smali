.class public Lcom/android/ims/ImsCall;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Lcom/android/ims/internal/ICall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCall$1;,
        Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;,
        Lcom/android/ims/ImsCall$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsCall"

.field private static final UPDATE_EXTEND_TO_CONFERENCE:I = 0x5

.field private static final UPDATE_HOLD:I = 0x1

.field private static final UPDATE_HOLD_MERGE:I = 0x2

.field private static final UPDATE_MERGE:I = 0x4

.field private static final UPDATE_NONE:I = 0x0

.field private static final UPDATE_RESUME:I = 0x3

.field private static final UPDATE_UNSPECIFIED:I = 0x6

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1

.field private static final VDBG:Z


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mCallSessionMergePending:Z

.field private mContext:Landroid/content/Context;

.field private mHold:Z

.field private mInCall:Z

.field private mIsConferenceMerging:Z

.field private mIsMerged:Z

.field private mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field private mListener:Lcom/android/ims/ImsCall$Listener;

.field private mLockObj:Ljava/lang/Object;

.field private mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

.field private mMergeHost:Lcom/android/ims/ImsCall;

.field private mMergePeer:Lcom/android/ims/ImsCall;

.field private mMute:Z

.field private mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mSession:Lcom/android/ims/internal/ImsCallSession;

.field private mSessionEndDuringMerge:Z

.field private mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field private mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

.field private mUpdateRequest:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    .line 56
    sput-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    .line 397
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 401
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mMute:Z

    .line 405
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 407
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 410
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 412
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 415
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    .line 418
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 422
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 423
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 426
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 430
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    .line 436
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 440
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 444
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 450
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 453
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mIsConferenceMerging:Z

    .line 456
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mAddress:Ljava/lang/String;

    .line 466
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    .line 467
    iput-object p2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 468
    return-void
.end method

.method static synthetic access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ims/ImsCall;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/ims/ImsCall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->mergeInternal()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/ims/ImsCall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    return p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "x2"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsConferenceMerging:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/ims/ImsCall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsConferenceMerging:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/ims/ImsCall;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->tryProcessConferenceResult()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    return-object p1
.end method

.method private clear(Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "lastReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v0, 0x0

    .line 1468
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1469
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1470
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1471
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 1472
    return-void
.end method

.method private clearMergeInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2909
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 2910
    const-string v0, "clearMergeInfo :: clearing all merge info"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 2914
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_1

    .line 2915
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-object v2, v0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2916
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v1, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2917
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 2919
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_2

    .line 2920
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-object v2, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 2921
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v1, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2922
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 2924
    :cond_2
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 2925
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2926
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2927
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 2928
    return-void
.end method

.method private clearSessionTerminationFlags()V
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 1913
    return-void
.end method

.method private createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 2

    .prologue
    .line 1478
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall$1;)V

    return-object v0
.end method

.method private createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1499
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 1501
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-nez v1, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return-object v0

    .line 1505
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1506
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1507
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1509
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v1, :cond_0

    .line 1510
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0
.end method

.method private createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1482
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    .line 1485
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :cond_0
    :goto_0
    return-object v0

    .line 1486
    :catch_0
    move-exception v1

    .line 1487
    .local v1, "e":Lcom/android/ims/ImsException;
    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 1489
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createResumeMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1517
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 1519
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-nez v1, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-object v0

    .line 1523
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1524
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1525
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1527
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v1, :cond_0

    .line 1528
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0
.end method

.method private enforceConversationMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1535
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_0

    .line 1536
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1537
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1539
    :cond_0
    return-void
.end method

.method private isCallSessionMergePending()Z
    .locals 1

    .prologue
    .line 2991
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    return v0
.end method

.method private isMergeHost()Z
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMergePeer()Z
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMerging()Z
    .locals 1

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p0, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 548
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1680
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-ne p1, v0, :cond_0

    .line 1681
    const/4 v0, 0x1

    .line 1683
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1989
    const-string v0, "ImsCall"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2006
    const-string v0, "ImsCall"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2010
    const-string v0, "ImsCall"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2011
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1999
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const-string v1, " imsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2002
    const-string v1, "ImsCall"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return-void
.end method

.method private merge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1154
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge :: ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_1

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1166
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_2

    .line 1167
    const-string v0, "merge :: no call session"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1168
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1174
    :cond_2
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1177
    :cond_3
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1185
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1186
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1189
    :cond_4
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->merge()V

    .line 1198
    :goto_0
    monitor-exit v1

    .line 1199
    return-void

    .line 1194
    :cond_5
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1196
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private mergeInternal()V
    .locals 2

    .prologue
    .line 1542
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeInternal :: ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->merge()V

    .line 1547
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1548
    return-void
.end method

.method private notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1552
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    .line 1554
    if-eqz v0, :cond_0

    .line 1556
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1557
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "notifyConferenceSessionTerminated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyConferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V
    .locals 19
    .param p1, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 1564
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    .line 1566
    .local v13, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v13, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1571
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1572
    .local v4, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1573
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1575
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1576
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1577
    .local v2, "confInfo":Landroid/os/Bundle;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1578
    .local v14, "status":Ljava/lang/String;
    const-string v17, "user"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1579
    .local v16, "user":Ljava/lang/String;
    const-string v17, "display-text"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1580
    .local v6, "displayName":Ljava/lang/String;
    const-string v17, "endpoint"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1582
    .local v7, "endpoint":Ljava/lang/String;
    sget-boolean v17, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v17, :cond_2

    .line 1583
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "notifyConferenceStateUpdated :: key="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", status="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", user="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", displayName= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", endpoint="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1590
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1591
    .local v10, "handle":Landroid/net/Uri;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1592
    .local v8, "endpointUri":Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    move-result v5

    .line 1594
    .local v5, "connectionState":I
    new-instance v3, Landroid/telecom/ConferenceParticipant;

    invoke-direct {v3, v10, v6, v8, v5}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1596
    .local v3, "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1599
    .end local v2    # "confInfo":Landroid/os/Bundle;
    .end local v3    # "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    .end local v5    # "connectionState":I
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "endpoint":Ljava/lang/String;
    .end local v8    # "endpointUri":Landroid/net/Uri;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v10    # "handle":Landroid/net/Uri;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "status":Ljava/lang/String;
    .end local v16    # "user":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1601
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1602
    :catch_0
    move-exception v15

    .line 1603
    .local v15, "t":Ljava/lang/Throwable;
    const-string v17, "notifyConferenceStateUpdated :: "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private notifyError(IILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "statusCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1978
    return-void
.end method

.method private notifySessionTerminatedDuringMerge()V
    .locals 5

    .prologue
    .line 1883
    const/4 v1, 0x0

    .line 1884
    .local v1, "notifyFailure":Z
    const/4 v2, 0x0

    .line 1886
    .local v2, "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-enter p0

    .line 1887
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1888
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-boolean v4, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v4, :cond_1

    .line 1892
    sget-boolean v4, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v4, :cond_0

    .line 1893
    const-string v4, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1895
    :cond_0
    const/4 v1, 0x1

    .line 1896
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 1898
    :cond_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 1899
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1903
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1908
    :cond_2
    :goto_0
    return-void

    .line 1899
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1904
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v3

    .line 1905
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "notifySessionTerminatedDuringMerge :: "

    invoke-direct {p0, v4, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1618
    sget-boolean v3, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v3, :cond_0

    .line 1619
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1620
    .local v1, "reasonString":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCallTerminated :: ImsCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1623
    .end local v1    # "reasonString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1625
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    .line 1633
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v3, :cond_5

    .line 1641
    :cond_1
    sget-boolean v3, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v3, :cond_2

    .line 1642
    const-string v3, "processCallTerminated :: burying termination during ongoing merge."

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1644
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1645
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 1646
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    :cond_3
    :goto_1
    return-void

    .line 1619
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_4
    const-string v1, "null"

    goto :goto_0

    .line 1650
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1651
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V

    .line 1652
    monitor-exit p0

    goto :goto_1

    .line 1657
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1654
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1655
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    .line 1657
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1659
    if-eqz v0, :cond_3

    .line 1661
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1662
    :catch_0
    move-exception v2

    .line 1663
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "processCallTerminated :: "

    invoke-direct {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processMergeComplete()V
    .locals 8

    .prologue
    .line 1732
    sget-boolean v6, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v6, :cond_0

    .line 1733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMergeComplete :: ImsCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1738
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1739
    const-string v6, "processMergeComplete :: We are not the merge host!"

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1874
    :cond_1
    :goto_0
    return-void

    .line 1744
    :cond_2
    const/4 v3, 0x0

    .line 1745
    .local v3, "swapRequired":Z
    monitor-enter p0

    .line 1746
    move-object v0, p0

    .line 1747
    .local v0, "finalHostCall":Lcom/android/ims/ImsCall;
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 1749
    .local v1, "finalPeerCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1753
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1754
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget-object v6, v6, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1757
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1855
    :goto_1
    iget-object v2, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1858
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 1862
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 1865
    invoke-direct {v0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 1866
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    if-eqz v2, :cond_1

    .line 1869
    :try_start_1
    invoke-virtual {v2, p0, v3}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1870
    :catch_0
    move-exception v4

    .line 1871
    .local v4, "t":Ljava/lang/Throwable;
    const-string v6, "processMergeComplete :: "

    invoke-direct {p0, v6, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1759
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    goto :goto_1

    .line 1866
    .end local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1767
    .restart local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v6, :cond_5

    .line 1768
    const-string v6, "processMergeComplete :: No transient session!"

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1769
    monitor-exit p0

    goto :goto_0

    .line 1771
    :cond_5
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v6, :cond_6

    .line 1772
    const-string v6, "processMergeComplete :: No merge peer!"

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1773
    monitor-exit p0

    goto :goto_0

    .line 1778
    :cond_6
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    .line 1779
    .local v5, "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    .line 1783
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 1838
    move-object v0, p0

    .line 1839
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 1840
    const/4 v3, 0x0

    .line 1841
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1842
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1843
    const-string v6, "processMergeComplete :: transient will stay with us (I\'m the host)."

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1846
    sget-boolean v6, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v6, :cond_7

    .line 1847
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMergeComplete :: call="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is the final host"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1852
    :cond_7
    invoke-direct {v0, v5}, Lcom/android/ims/ImsCall;->setTransientSessionAsPrimary(Lcom/android/ims/internal/ImsCallSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1925
    sget-boolean v2, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMergeFailed :: this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1930
    :cond_0
    monitor-enter p0

    .line 1933
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1934
    const-string v2, "processMergeFailed :: We are not the merge host!"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1935
    monitor-exit p0

    .line 1974
    :cond_1
    :goto_0
    return-void

    .line 1938
    :cond_2
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v2, :cond_3

    .line 1939
    const-string v2, "processMergeFailed :: No merge peer!"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1940
    monitor-exit p0

    goto :goto_0

    .line 1965
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1943
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1944
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v2, :cond_4

    .line 1945
    const-string v2, "processMergeFailed :: No transient session!"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1946
    monitor-exit p0

    goto :goto_0

    .line 1949
    :cond_4
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 1950
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    .line 1954
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1955
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 1957
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1960
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 1961
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v2}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 1964
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 1965
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    if-eqz v0, :cond_1

    .line 1968
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1969
    :catch_0
    move-exception v1

    .line 1970
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processMergeFailed :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setCallSessionMergePending(Z)V
    .locals 0
    .param p1, "callSessionMergePending"    # Z

    .prologue
    .line 3001
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3002
    return-void
.end method

.method private setMergePeer(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergePeer"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v0, 0x0

    .line 2937
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2938
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 2940
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 2941
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2942
    return-void
.end method

.method private setTransientSessionAsPrimary(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 2
    .param p1, "transientSession"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1687
    monitor-enter p0

    .line 1689
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 1695
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->close()V

    .line 1698
    :cond_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    .line 1701
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 1705
    :cond_1
    monitor-exit p0

    .line 1706
    return-void

    .line 1705
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldProcessConferenceResult()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3019
    const/4 v0, 0x0

    .line 3021
    .local v0, "areMergeTriggersDone":Z
    monitor-enter p0

    .line 3025
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3026
    sget-boolean v1, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v1, :cond_0

    .line 3027
    const-string v1, "shouldProcessConferenceResult :: no merge in progress"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 3029
    :cond_0
    monitor-exit p0

    .line 3079
    :goto_0
    return v2

    .line 3035
    :cond_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3036
    sget-boolean v3, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v3, :cond_2

    .line 3037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: We are a merge host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 3038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 3040
    :cond_2
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v3}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 3042
    :goto_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3044
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 3074
    :cond_3
    :goto_2
    sget-boolean v1, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v1, :cond_4

    .line 3075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessConferenceResult :: returning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_c

    const-string v1, "true"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 3078
    :cond_4
    monitor-exit p0

    move v2, v0

    .line 3079
    goto :goto_0

    :cond_5
    move v0, v2

    .line 3040
    goto :goto_1

    .line 3046
    :cond_6
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3047
    sget-boolean v3, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v3, :cond_7

    .line 3048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: We are a merge peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 3049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 3051
    :cond_7
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v3}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v3

    if-nez v3, :cond_8

    move v0, v1

    .line 3053
    :goto_4
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3055
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    .line 3051
    goto :goto_4

    .line 3067
    :cond_9
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    :goto_5
    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto :goto_5

    .line 3071
    :cond_b
    const-string v1, "shouldProcessConferenceResult : merge in progress but call is neitherhost nor peer."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3078
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3075
    :cond_c
    :try_start_1
    const-string v1, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method private throwImsException(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1981
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_0

    .line 1982
    check-cast p1, Lcom/android/ims/ImsException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1984
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private tryProcessConferenceResult()V
    .locals 1

    .prologue
    .line 1713
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->shouldProcessConferenceResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1715
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_2

    .line 1717
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    goto :goto_0

    .line 1720
    :cond_2
    const-string v0, "tryProcessConferenceResult :: No merge host for this conference!"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateRequest"    # I

    .prologue
    .line 2884
    packed-switch p1, :pswitch_data_0

    .line 2900
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 2886
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 2888
    :pswitch_1
    const-string v0, "HOLD"

    goto :goto_0

    .line 2890
    :pswitch_2
    const-string v0, "HOLD_MERGE"

    goto :goto_0

    .line 2892
    :pswitch_3
    const-string v0, "RESUME"

    goto :goto_0

    .line 2894
    :pswitch_4
    const-string v0, "MERGE"

    goto :goto_0

    .line 2896
    :pswitch_5
    const-string v0, "EXTEND_TO_CONFERENCE"

    goto :goto_0

    .line 2898
    :pswitch_6
    const-string v0, "UNSPECIFIED"

    goto :goto_0

    .line 2884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 947
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 948
    const-string v0, "accept ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 951
    :cond_0
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    .line 952
    return-void
.end method

.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 963
    sget-boolean v1, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v1, :cond_0

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept :: callType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_1

    .line 969
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call to answer"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 993
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 974
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    :try_start_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_3

    .line 981
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_2

    .line 982
    const-string v1, "accept :: call profile will be updated"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 985
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 986
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 990
    :cond_3
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    .line 991
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 993
    :cond_4
    monitor-exit v2

    .line 994
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "accept :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 977
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "accept()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public attachSession(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 865
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachSession :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 869
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 870
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 879
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "attachSession :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 876
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 878
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkIfRemoteUserIsSame(Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 500
    if-nez p1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v2

    .line 506
    :cond_1
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string v5, "oi"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mAddress:Ljava/lang/String;

    .line 511
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 512
    if-eqz v0, :cond_5

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_5

    :cond_4
    move v2, v3

    .line 514
    goto :goto_0

    .line 518
    :cond_5
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string v5, "remote_uri"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "remoteSipUri":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOTE_SIP_URI= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 520
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 524
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_0

    :cond_6
    move v2, v3

    goto/16 :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 481
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->close()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    .line 485
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 2863
    monitor-enter p0

    .line 2864
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    .line 2865
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2866
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2868
    if-eqz v0, :cond_0

    .line 2870
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsConferenceState;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2875
    :cond_0
    :goto_0
    return-void

    .line 2866
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2871
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 2872
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "callSessionConferenceStateUpdated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public equalsTo(Lcom/android/ims/internal/ICall;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    const/4 v0, 0x0

    .line 536
    if-nez p1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    instance-of v1, p1, Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    .line 1281
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1282
    const-string v0, "extendToConference ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1286
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_1

    .line 1287
    const-string v0, "extendToConference :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1289
    :cond_1
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Not in a call to extend a call to conference"

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1293
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1294
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_4

    .line 1295
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_3

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendToConference :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1299
    :cond_3
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1303
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_5

    .line 1304
    const-string v0, "extendToConference :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1305
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1309
    :cond_5
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1311
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    return-void
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_0

    .line 672
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 677
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "getCallExtra :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "getCallExtra()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .prologue
    .line 557
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    monitor-exit v1

    return-object v0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallSession()Lcom/android/ims/internal/ImsCallSession;
    .locals 2

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    monitor-exit v1

    return-object v0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastReasonInfo()Lcom/android/ims/ImsReasonInfo;
    .locals 2

    .prologue
    .line 691
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    monitor-exit v1

    return-object v0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_0

    .line 570
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 575
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "getLocalCallProfile :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "getLocalCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getMediaSession()Lcom/android/ims/internal/ImsStreamMediaSession;
    .locals 2

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    monitor-exit v1

    return-object v0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProposedCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x0

    monitor-exit v1

    .line 615
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    monitor-exit v1

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_0

    .line 591
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 601
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 596
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "getRemoteCallProfile :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "getRemoteCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_0

    .line 628
    const/4 v0, 0x0

    monitor-exit v1

    .line 631
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingUpdate()Z
    .locals 2

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1076
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hold :: ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_1

    .line 1082
    const-string v0, "hold :: call is already on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1106
    :cond_1
    :goto_0
    return-void

    .line 1087
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1088
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_3

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hold :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1091
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1095
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_4

    .line 1096
    const-string v0, "hold :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1101
    :cond_4
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1104
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public inviteParticipant(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x65

    .line 1341
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 1342
    const-string v1, "inviteParticipants for an existing call"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1345
    :cond_0
    if-nez p1, :cond_1

    .line 1346
    const-string v1, "inviteParticipants :: bgCall is null"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1347
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No background call"

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1351
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1352
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_2

    .line 1353
    const-string v1, "inviteParticipants :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1354
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1367
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1358
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1359
    const-string v1, "inviteParticipants :: bgCall is a conference call"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1360
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "conference call merge conference call"

    const/16 v4, 0x65

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1364
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceMerging:Z

    .line 1365
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string v3, "oi"

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1367
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1319
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1320
    const-string v0, "inviteParticipants ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1323
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1324
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_1

    .line 1325
    const-string v0, "inviteParticipants :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1326
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1330
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1331
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    return-void
.end method

.method public isInCall()Z
    .locals 2

    .prologue
    .line 713
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    monitor-exit v1

    return v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMerged()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_0

    .line 748
    const/4 v0, 0x0

    monitor-exit v1

    .line 751
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->isMultiparty()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mMute:Z

    monitor-exit v1

    return v0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnHold()Z
    .locals 2

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    monitor-exit v1

    return v0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public merge(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1209
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge(1) :: bgImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1213
    :cond_0
    if-nez p1, :cond_1

    .line 1214
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "No background call"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1220
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1221
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1229
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setMergePeer(Lcom/android/ims/ImsCall;)V

    .line 1234
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->merge()V

    .line 1236
    return-void

    .line 1232
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMergeHost(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reject(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1004
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->reject(I)V

    .line 1013
    :cond_1
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v0, :cond_3

    .line 1014
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_2

    .line 1015
    const-string v0, "reject :: call profile is not updated; destroy it..."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1018
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1022
    :cond_3
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 1023
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1025
    :cond_4
    monitor-exit v1

    .line 1026
    return-void

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1377
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1378
    const-string v0, "removeParticipants ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_1

    .line 1383
    const-string v0, "removeParticipants :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1384
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1388
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->removeParticipants([Ljava/lang/String;)V

    .line 1389
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    return-void
.end method

.method public resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1115
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume :: ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1120
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_1

    .line 1121
    const-string v0, "resume :: call is in conversation"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1145
    :cond_1
    :goto_0
    return-void

    .line 1126
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1127
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_3

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1130
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1134
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_4

    .line 1135
    const-string v0, "resume :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1136
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1142
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1143
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1401
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf :: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1405
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V

    .line 1409
    :cond_1
    monitor-exit v1

    .line 1410
    return-void

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1452
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssd :: ussdMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1456
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1457
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_1

    .line 1458
    const-string v0, "sendUssd :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1459
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1463
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->sendUssd(Ljava/lang/String;)V

    .line 1464
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1465
    return-void
.end method

.method public setIsMerged(Z)V
    .locals 0
    .param p1, "isMerged"    # Z

    .prologue
    .line 762
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 763
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    .line 781
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .locals 7
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .prologue
    .line 798
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v6

    .line 799
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 801
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 802
    :cond_0
    monitor-exit v6

    .line 836
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 806
    .local v0, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 807
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    move-result v3

    .line 808
    .local v3, "state":I
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 809
    .local v1, "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    if-eqz v1, :cond_2

    .line 813
    :try_start_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v4

    .line 834
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "setListener()"

    invoke-direct {p0, v5, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 809
    .end local v0    # "inCall":Z
    .end local v1    # "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v2    # "onHold":Z
    .end local v3    # "state":I
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 814
    .restart local v0    # "inCall":Z
    .restart local v1    # "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v2    # "onHold":Z
    .restart local v3    # "state":I
    :cond_2
    if-eqz v0, :cond_4

    .line 815
    if-eqz v2, :cond_3

    .line 816
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 818
    :cond_3
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 821
    :cond_4
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 823
    :sswitch_0
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 826
    :sswitch_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 821
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMergeHost(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergeHost"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v0, 0x0

    .line 2951
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 2952
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2954
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 2955
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2956
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 845
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    if-eq v1, p1, :cond_0

    .line 846
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsCallSession;->setMute(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 856
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "setMute :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 852
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 855
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 891
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(1) :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 896
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 900
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    .line 902
    iput-object p2, p0, Lcom/android/ims/ImsCall;->mAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    :try_start_2
    monitor-exit v2

    .line 909
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "start(1) :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 906
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "start(1)"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 908
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public start(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 921
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(n) :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 926
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 930
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :try_start_2
    monitor-exit v2

    .line 936
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "start(n) :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 933
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "start(n)"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 935
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1420
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1425
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->startDtmf(C)V

    .line 1428
    :cond_1
    monitor-exit v1

    .line 1429
    return-void

    .line 1428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1435
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDtmf :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1439
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->stopDtmf()V

    .line 1443
    :cond_1
    monitor-exit v1

    .line 1444
    return-void

    .line 1443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1035
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1040
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1043
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->terminate(I)V

    .line 1065
    :cond_1
    monitor-exit v1

    .line 1066
    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3091
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCall objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3093
    const-string v1, " onHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Y"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    const-string v1, " mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Y"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    const-string v1, " updateRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    const-string v1, " merging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Y"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3102
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3103
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    :cond_0
    :goto_3
    const-string v1, " merge action pending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Y"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    const-string v1, " merged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Y"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    const-string v1, " multiParty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Y"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    const-string v1, " buried term:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v1, :cond_8

    const-string v1, "Y"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    const-string v1, " session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3117
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3118
    const-string v1, " transientSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3120
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3094
    :cond_1
    const-string v1, "N"

    goto/16 :goto_0

    .line 3096
    :cond_2
    const-string v1, "N"

    goto/16 :goto_1

    .line 3100
    :cond_3
    const-string v1, "N"

    goto :goto_2

    .line 3105
    :cond_4
    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3109
    :cond_5
    const-string v1, "N"

    goto :goto_4

    .line 3111
    :cond_6
    const-string v1, "N"

    goto :goto_5

    .line 3113
    :cond_7
    const-string v1, "N"

    goto :goto_6

    .line 3115
    :cond_8
    const-string v1, "N"

    goto :goto_7
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "mediaProfile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    .line 1242
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "update ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1247
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_1

    .line 1248
    const-string v0, "update :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1250
    :cond_1
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Not in a call to update call"

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1254
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1255
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_4

    .line 1256
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_3

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1260
    :cond_3
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1264
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_5

    .line 1265
    const-string v0, "update :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1270
    :cond_5
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V

    .line 1271
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1272
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    return-void
.end method
