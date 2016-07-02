.class public Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;,
        Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;,
        Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ACCEPT_RESULT:I = 0xca

.field private static final EVENT_ADD_CONFERENCE_RESULT:I = 0xce

.field private static final EVENT_CALL_INFO_INDICATION:I = 0x66

.field private static final EVENT_DIAL_CONFERENCE_RESULT:I = 0xd1

.field private static final EVENT_DIAL_RESULT:I = 0xc9

.field private static final EVENT_ECONF_RESULT_INDICATION:I = 0x68

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x69

.field private static final EVENT_HOLD_RESULT:I = 0xcb

.field private static final EVENT_MERGE_RESULT:I = 0xcd

.field private static final EVENT_POLL_CALLS_RESULT:I = 0x65

.field private static final EVENT_REMOVE_CONFERENCE_RESULT:I = 0xcf

.field private static final EVENT_RESUME_RESULT:I = 0xcc

.field private static final EVENT_RETRIEVE_MERGE_FAIL_RESULT:I = 0xd3

.field private static final EVENT_RINGBACK_TONE:I = 0x67

.field private static final EVENT_SIP_CODE_INDICATION:I = 0xd0

.field private static final EVENT_SWAP_BEFORE_MERGE_RESULT:I = 0xd2

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionProxy"

.field private static final VDBG:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

.field private mCallId:Ljava/lang/String;

.field private mCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingMo:Z

.field private mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

.field private mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

.field private mIsAddRemoveParticipantsCommandOK:Z

.field private mIsConferenceCallInBackgroundNecessarry:Z

.field private mIsHideHoldEventDuringMerging:Z

.field private mIsMerging:Z

.field private mIsOnTerminated:Z

.field private mListener:Lcom/android/ims/internal/IImsCallSessionListener;

.field private mMergeCallId:Ljava/lang/String;

.field private mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

.field private mMergedCallId:Ljava/lang/String;

.field private mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

.field private mPendingParticipantInfo:[Ljava/lang/String;

.field private mPendingParticipantInfoIndex:I

.field private mPendingParticipantStatistics:I

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p5, "imsRILAdapter"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .prologue
    .line 175
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 177
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSessionProxy RILAdapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p5, "imsRILAdapter"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p6, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 91
    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I

    .line 98
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 99
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 100
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 101
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    .line 103
    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 104
    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 105
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsConferenceCallInBackgroundNecessarry:Z

    .line 106
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 107
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 108
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 109
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 110
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 116
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 507
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    const-string v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsSessionProxy RILAdapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;

    invoke-direct {v1, p0, v4}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 155
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 156
    iput-object p4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    .line 157
    iput-object p5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 158
    iput-object p6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.ims.conference"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsConferenceCallInBackgroundNecessarry:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return v0
.end method

.method static synthetic access$2008(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    return-object p1
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->accept()V

    .line 274
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "ImsCallSessionProxy is closed!!! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I

    .line 187
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unregisterForEconfResult(Landroid/os/Handler;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unregisterForCallProgressIndicator(Landroid/os/Handler;)V

    .line 191
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 428
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    .line 298
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 6
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 432
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xce

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 433
    .local v1, "result":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 434
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 435
    array-length v2, p1

    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 436
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-nez v2, :cond_2

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    const-string v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inviteParticipants fail since no call ID or participants is null CallID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Participant number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v2, :cond_1

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v2, p0, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ImsCallSessionProxy"

    const-string v3, "RemoteException occurs when InviteParticipantsRequestFailed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiparty()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 504
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string v3, "mpty"

    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public merge()V
    .locals 14

    .prologue
    const/16 v13, 0xd2

    const/16 v12, 0xce

    const/4 v11, 0x1

    .line 309
    const-string v8, "ImsCallSessionProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Merge callId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v4

    .line 311
    .local v4, "myCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const/4 v0, 0x0

    .line 312
    .local v0, "beMergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    .line 313
    .local v5, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "mccMnc":Ljava/lang/String;
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "46000"

    aput-object v10, v8, v9

    const-string v9, "46002"

    aput-object v9, v8, v11

    const/4 v9, 0x2

    const-string v10, "46007"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "46008"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "46011"

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 319
    .local v7, "voLteMergeConferenceInBackGroundMccMncList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 323
    .local v2, "mIsConferenceCallInBackgroundNecessarry":Z
    if-nez v4, :cond_1

    .line 324
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "can\'t find this call callInfo"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v8, :cond_0

    .line 327
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v9}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v8, p0, v9}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "RemoteException callSessionMergeFailed()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_3

    .line 337
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v0

    .line 342
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 343
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "can\'t find another call\'s callInfo"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v8, :cond_0

    .line 346
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v9}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v8, p0, v9}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 348
    :catch_1
    move-exception v1

    .line 349
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "RemoteException callSessionMergeFailed()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_2

    .line 339
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v0

    goto :goto_1

    .line 355
    :cond_4
    const-string v8, "ImsCallSessionProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "merge command- my call: conference type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " call status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "beMergedCall: conference type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " call status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "isConferenceCallInBackgroundNecessarry="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 362
    iget-object v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    iput-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 363
    iget-object v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 364
    iget-object v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    iput-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 366
    iget-boolean v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-nez v8, :cond_5

    iget-boolean v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-nez v8, :cond_5

    .line 368
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xcd

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 369
    .local v6, "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v8, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->merge(Landroid/os/Message;)V

    .line 370
    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 417
    :goto_2
    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z

    goto/16 :goto_0

    .line 371
    .end local v6    # "result":Landroid/os/Message;
    :cond_5
    iget-boolean v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-ne v8, v11, :cond_6

    iget-boolean v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-ne v8, v11, :cond_6

    .line 373
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "conference call merge conference call"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 375
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 378
    .end local v6    # "result":Landroid/os/Message;
    :cond_6
    if-eqz v2, :cond_9

    .line 379
    iget-boolean v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v8, :cond_7

    iget-object v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_7

    .line 381
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "beMergedCall in foreground merge conference call"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 383
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 385
    .end local v6    # "result":Landroid/os/Message;
    :cond_7
    iget-boolean v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_8

    .line 388
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "myCall call in foreground merge conference call"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 390
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 393
    .end local v6    # "result":Landroid/os/Message;
    :cond_8
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "swapping before merge"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 395
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v8, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->swap(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 398
    .end local v6    # "result":Landroid/os/Message;
    :cond_9
    iget-boolean v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v8, :cond_a

    iget-object v8, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_a

    .line 400
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "myCall in foreground merge normal call"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 402
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 404
    .end local v6    # "result":Landroid/os/Message;
    :cond_a
    iget-boolean v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v9, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v8, v9, :cond_b

    .line 407
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "beMergedCall in foreground merge normal call"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 409
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v4, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 412
    .end local v6    # "result":Landroid/os/Message;
    :cond_b
    const-string v8, "ImsCallSessionProxy"

    const-string v9, "swapping before merge"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 414
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v8, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->swap(Landroid/os/Message;)V

    goto/16 :goto_2
.end method

.method public reject(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->reject(I)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "Reject Call fail since there is no call ID. Abnormal Case"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 6
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 455
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 456
    .local v1, "result":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 457
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 458
    array-length v2, p1

    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 459
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-nez v2, :cond_2

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    const-string v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeParticipants fail since no call ID or participants is null CallID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Participant number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v2, :cond_1

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v2, p0, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ImsCallSessionProxy"

    const-string v3, "RemoteException occurs when RemoveParticipantsRequestFailed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 303
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    .line 304
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->sendDtmf(CLandroid/os/Message;)V

    .line 479
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 493
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 231
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setMute(Z)V

    .line 236
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 240
    const-string v0, "oir"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    .line 241
    .local v2, "clirMode":I
    const/4 v4, 0x0

    .line 242
    .local v4, "isVideoCall":Z
    const/4 v3, 0x0

    .line 243
    .local v3, "isEmergencyNumber":Z
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 245
    .local v5, "result":Landroid/os/Message;
    iget v0, p2, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 246
    const/4 v3, 0x1

    .line 249
    :cond_0
    iget v0, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v4, 0x1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->start(Ljava/lang/String;IZZLandroid/os/Message;)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 255
    return-void
.end method

.method public startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 259
    const-string v3, "oir"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, "clirMode":I
    const/4 v1, 0x0

    .line 261
    .local v1, "isVideoCall":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 263
    .local v2, "result":Landroid/os/Message;
    iget v3, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 268
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 269
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->startDtmf(CLandroid/os/Message;)V

    .line 484
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->stopDtmf(Landroid/os/Message;)V

    .line 489
    return-void
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->terminate(I)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "Terminate Call fail since there is no call ID. Abnormal Case"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 423
    return-void
.end method
