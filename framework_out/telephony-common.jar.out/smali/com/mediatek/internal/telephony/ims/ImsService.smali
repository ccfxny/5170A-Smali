.class public Lcom/mediatek/internal/telephony/ims/ImsService;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x8

.field protected static final EVENT_CALL_RING:I = 0x9

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x5

.field protected static final EVENT_IMS_DISABLING_URC:I = 0xc

.field protected static final EVENT_IMS_ENABLED_URC:I = 0xb

.field protected static final EVENT_IMS_ENABLING_URC:I = 0xa

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x7

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x4

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x3

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x6

.field private static final IMS_ALLOW_INCOMING_CALL_INDICATION:I = 0x0

.field private static final IMS_DISALLOW_INCOMING_CALL_INDICATION:I = 0x1

.field private static final IMS_MAX_FEATURE_SUPPORT_SIZE:I = 0x4

.field private static final IMS_RCS_OVER_LTE:I = 0x2

.field private static final IMS_SMS_OVER_LTE:I = 0x4

.field private static final IMS_VIDEO_OVER_LTE:I = 0x8

.field private static final IMS_VOICE_OVER_LTE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final VDBG:Z

.field private static sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

.field private static sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;


# instance fields
.field private mActivePhoneId:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

.field private mImsExtInfo:I

.field private mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

.field private mImsRegInfo:I

.field private mImsRegistry:Z

.field private mImsState:I

.field private mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mPendingMT:Lcom/android/ims/internal/IImsCallSession;

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 87
    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 139
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    .line 80
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 81
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 82
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    .line 83
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 90
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 91
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    .line 92
    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    .line 93
    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mServiceId:I

    .line 94
    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 95
    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    .line 125
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z

    .line 126
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ims/ImsService$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v1, Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/ImsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 141
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    .line 142
    if-eqz p2, :cond_1

    .line 143
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    aget-object v2, p2, v2

    invoke-direct {v1, p1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 149
    :goto_0
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mImsRILAdapter= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    .line 152
    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;

    invoke-direct {v1, p0, v4}, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsService$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    .line 154
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 158
    :cond_0
    const-string v1, "ims"

    invoke-static {v1, p0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 160
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v5, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ACTION_IMS_SIMULATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void

    .line 145
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS: something wrong in ImsService constructor, ci = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/internal/telephony/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/internal/telephony/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    return p1
.end method

.method private notifyRegistrationCapabilityChange(I)V
    .locals 9
    .param p1, "imsExtInfo"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 523
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez v3, :cond_0

    .line 563
    :goto_0
    return-void

    .line 527
    :cond_0
    new-array v1, v6, [I

    .line 528
    .local v1, "enabledFeatures":[I
    new-array v0, v6, [I

    .line 530
    .local v0, "disabledFeatures":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 531
    aput v7, v1, v2

    .line 532
    aput v7, v0, v2

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    :cond_1
    and-int/lit8 v3, p1, 0x1

    if-ne v3, v5, :cond_2

    .line 536
    aput v4, v1, v4

    .line 543
    :goto_2
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 544
    aput v5, v1, v5

    .line 552
    :goto_3
    aput v8, v0, v8

    .line 554
    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v0, v3

    .line 558
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v1, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v3

    goto :goto_0

    .line 539
    :cond_2
    aput v4, v0, v4

    goto :goto_2

    .line 547
    :cond_3
    aput v5, v0, v5

    goto :goto_3
.end method

.method private notifyRegistrationStateChange(I)V
    .locals 3
    .param p1, "imsRegInfo"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 499
    :cond_0
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS: notifyRegistrationStateChange imsRegInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-nez p1, :cond_1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    goto :goto_0

    .line 510
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 511
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 425
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 426
    .local v0, "callId":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 427
    .local v1, "dialString":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v3, v5, v6

    .line 428
    .local v3, "seqNum":Ljava/lang/String;
    const/4 v4, 0x1

    .line 430
    .local v4, "serviceId":I
    const-string v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS: sendIncomingCallIndication() call_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dialString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seqNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android:imsCallID"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v5, "android:imsDialString"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v5, "android:imsSeqNum"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const-string v5, "android:imsServiceId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method private sendIncomingCallIntent()V
    .locals 8

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "callId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 449
    .local v1, "dialString":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-eqz v5, :cond_0

    .line 451
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v5}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v5}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    const-string v6, "oi"

    invoke-virtual {v5, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    const/4 v4, 0x1

    .line 460
    .local v4, "serviceId":I
    const-string v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS: sendIncomingCallIntent() call_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dialString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android:imsCallID"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v5, "android:imsDialString"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v5, "android:imsServiceId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "serviceId":I
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ImsService"

    const-string v6, "Can\'t get call information from PendingMT !!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v5, "ImsService"

    const-string v6, "PendingMT is null!!! Something wrong!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public close(I)V
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 205
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 280
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 286
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    return-object v0
.end method

.method public disableImsAdapter(Z)V
    .locals 1
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(Z)V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 183
    return-void
.end method

.method public enableImsAdapter()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter()V

    .line 178
    return-void
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 326
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 329
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    return-object v0
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 338
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsEcbmProxy;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/ImsEcbmProxy;-><init>()V

    return-object v0
.end method

.method public getImsExtInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsRILAdapter()Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    if-nez v0, :cond_0

    .line 474
    const-string v0, "ImsService"

    const-string v1, "IMS: getImsRILAdapter, mImsRILAdapter is null "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    return-object v0
.end method

.method public getImsRegInfo(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 380
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-eq p1, v1, :cond_1

    .line 381
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS: getImsRegInfo() phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mActivePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    if-nez v1, :cond_0

    .line 387
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImsServiceState()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    return v0
.end method

.method public getImsState()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    return v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 307
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 299
    .local v0, "pendingMT":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    :cond_1
    move-object v0, v1

    .line 307
    goto :goto_0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p1, "serviceId"    # I

    .prologue
    .line 315
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    .line 318
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsService;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    return-object v0
.end method

.method public hangupAllCall()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->hangupAllCall(Landroid/os/Message;)V

    .line 417
    return-void
.end method

.method public isConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public isOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public notifySrvccDone()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    if-nez v0, :cond_0

    .line 482
    const-string v0, "ImsService"

    const-string v1, "IMS: notifySrvccDone error, mImsRILAdapter is null "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->notifySrvccDone()V

    .line 486
    return-void
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    const/4 v2, 0x1

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "ImsService"

    const-string v1, "IMS: it did not close IMS servide before open() !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-virtual {p0, v2, p4}, Lcom/mediatek/internal/telephony/ims/ImsService;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 198
    return v2
.end method

.method public setCallIndication(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "seqNum"    # I
    .param p3, "isAllow"    # Z

    .prologue
    .line 355
    if-eqz p3, :cond_0

    .line 356
    new-instance v2, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v2}, Lcom/android/ims/ImsCallProfile;-><init>()V

    .line 357
    .local v2, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 359
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setCallIndication(III)V

    .line 363
    .end local v2    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setCallIndication(III)V

    goto :goto_0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 269
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 270
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 271
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V

    .line 273
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I

    if-nez v0, :cond_1

    .line 274
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V

    .line 276
    :cond_1
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 346
    return-void
.end method

.method public turnOffIms(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 246
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOffIms, mActivePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 249
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOffIms, MainCapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "isPhoneIdChanged":Z
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-eq v1, p1, :cond_0

    .line 253
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    .line 254
    const/4 v0, 0x1

    .line 257
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 259
    const-string v1, "ImsService"

    const-string v2, "IMS: updateImsRilAdapterCi !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->updateImsRilAdapterCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 264
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 265
    return-void
.end method

.method public turnOnIms(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 219
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnIms, mActivePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 222
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnIms, MainCapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "isPhoneIdChanged":Z
    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-eq v1, p1, :cond_0

    .line 226
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    .line 227
    const/4 v0, 0x1

    .line 230
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 232
    const-string v1, "ImsService"

    const-string v2, "IMS: updateImsRilAdapterCi !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mCommandsInterfaceArray:[Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->updateImsRilAdapterCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 237
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I

    .line 238
    return-void
.end method
