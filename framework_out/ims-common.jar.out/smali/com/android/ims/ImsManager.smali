.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$1;,
        Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;,
        Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;,
        Lcom/android/ims/ImsManager$MyServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final ACTION_IMS_INCOMING_CALL_INDICATION:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL_INDICATION"

.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"

.field public static final EXTRA_DIAL_STRING:Ljava/lang/String; = "android:imsDialString"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final EXTRA_SEQ_NUM:Ljava/lang/String; = "android:imsSeqNum"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field public static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsManager"

.field private static sImsManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapabilitiesApi:Lorg/gsma/joyn/capability/CapabilityService;

.field private mChatApi:Lorg/gsma/joyn/chat/ChatService;

.field private mConfig:Lcom/android/ims/ImsConfig;

.field private mContactsApi:Lorg/gsma/joyn/contacts/ContactsService;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

.field private mEcbm:Lcom/android/ims/ImsEcbm;

.field private mFileTransferApi:Lorg/gsma/joyn/ft/FileTransferService;

.field private mGeolocSharingApi:Lorg/gsma/joyn/gsh/GeolocSharingService;

.field private mImageSharingApi:Lorg/gsma/joyn/ish/ImageSharingService;

.field private mImsService:Lcom/android/ims/internal/IImsService;

.field private mPhoneId:I

.field private mUt:Lcom/android/ims/ImsUt;

.field private mVideoSharingApi:Lorg/gsma/joyn/vsh/VideoSharingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    .line 191
    new-instance v0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$1;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    .line 193
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 195
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    .line 198
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 330
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 331
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    .line 333
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->createTerminalApiServices()V

    .line 334
    return-void
.end method

.method static synthetic access$102(Lcom/android/ims/ImsManager;Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/internal/IImsService;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsUt;)Lcom/android/ims/ImsUt;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/ImsUt;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConfig;)Lcom/android/ims/ImsConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/ImsConfig;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsEcbm;)Lcom/android/ims/ImsEcbm;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/ImsEcbm;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/ims/ImsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ims/ImsManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkAndThrowExceptionIfServiceUnavailable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v0, :cond_0

    .line 819
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    .line 821
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v0, :cond_0

    .line 822
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Service is unavailable"

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 826
    :cond_0
    return-void
.end method

.method private createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 874
    :try_start_0
    new-instance v1, Lcom/android/ims/internal/ImsCallSession;

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, v4}, Lcom/android/ims/internal/IImsService;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-object v1

    .line 875
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move-object v1, v2

    .line 876
    goto :goto_0
.end method

.method private createImsService(Z)V
    .locals 4
    .param p1, "checkService"    # Z

    .prologue
    .line 837
    if-eqz p1, :cond_0

    .line 838
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v2}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 840
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 842
    const-string v2, "ImsManager: createImsService binder is null"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 861
    .end local v1    # "binder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 848
    :cond_0
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v2}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 850
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 852
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsManager: mImsService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    .locals 1
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;

    .prologue
    .line 882
    new-instance v0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;-><init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V

    .line 884
    .local v0, "proxy":Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    return-object v0
.end method

.method private createTerminalApiServices()V
    .locals 3

    .prologue
    .line 338
    const-string v0, "ImsManager"

    const-string v1, "createTerminalApiServices entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Lorg/gsma/joyn/capability/CapabilityService;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/ims/ImsManager$MyServiceListener;

    invoke-direct {v2, p0}, Lcom/android/ims/ImsManager$MyServiceListener;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1, v2}, Lorg/gsma/joyn/capability/CapabilityService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mCapabilitiesApi:Lorg/gsma/joyn/capability/CapabilityService;

    .line 341
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mCapabilitiesApi:Lorg/gsma/joyn/capability/CapabilityService;

    invoke-virtual {v0}, Lorg/gsma/joyn/capability/CapabilityService;->connect()V

    .line 342
    new-instance v0, Lorg/gsma/joyn/chat/ChatService;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/ims/ImsManager$MyServiceListener;

    invoke-direct {v2, p0}, Lcom/android/ims/ImsManager$MyServiceListener;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1, v2}, Lorg/gsma/joyn/chat/ChatService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mChatApi:Lorg/gsma/joyn/chat/ChatService;

    .line 344
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mChatApi:Lorg/gsma/joyn/chat/ChatService;

    invoke-virtual {v0}, Lorg/gsma/joyn/chat/ChatService;->connect()V

    .line 345
    new-instance v0, Lorg/gsma/joyn/contacts/ContactsService;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/ims/ImsManager$MyServiceListener;

    invoke-direct {v2, p0}, Lcom/android/ims/ImsManager$MyServiceListener;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1, v2}, Lorg/gsma/joyn/contacts/ContactsService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mContactsApi:Lorg/gsma/joyn/contacts/ContactsService;

    .line 347
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContactsApi:Lorg/gsma/joyn/contacts/ContactsService;

    invoke-virtual {v0}, Lorg/gsma/joyn/contacts/ContactsService;->connect()V

    .line 348
    new-instance v0, Lorg/gsma/joyn/ft/FileTransferService;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/ims/ImsManager$MyServiceListener;

    invoke-direct {v2, p0}, Lcom/android/ims/ImsManager$MyServiceListener;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1, v2}, Lorg/gsma/joyn/ft/FileTransferService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mFileTransferApi:Lorg/gsma/joyn/ft/FileTransferService;

    .line 350
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mFileTransferApi:Lorg/gsma/joyn/ft/FileTransferService;

    invoke-virtual {v0}, Lorg/gsma/joyn/ft/FileTransferService;->connect()V

    .line 351
    new-instance v0, Lorg/gsma/joyn/gsh/GeolocSharingService;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/ims/ImsManager$MyServiceListener;

    invoke-direct {v2, p0}, Lcom/android/ims/ImsManager$MyServiceListener;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1, v2}, Lorg/gsma/joyn/gsh/GeolocSharingService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mGeolocSharingApi:Lorg/gsma/joyn/gsh/GeolocSharingService;

    .line 353
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mGeolocSharingApi:Lorg/gsma/joyn/gsh/GeolocSharingService;

    invoke-virtual {v0}, Lorg/gsma/joyn/gsh/GeolocSharingService;->connect()V

    .line 354
    new-instance v0, Lorg/gsma/joyn/ish/ImageSharingService;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/ims/ImsManager$MyServiceListener;

    invoke-direct {v2, p0}, Lcom/android/ims/ImsManager$MyServiceListener;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1, v2}, Lorg/gsma/joyn/ish/ImageSharingService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mImageSharingApi:Lorg/gsma/joyn/ish/ImageSharingService;

    .line 356
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImageSharingApi:Lorg/gsma/joyn/ish/ImageSharingService;

    invoke-virtual {v0}, Lorg/gsma/joyn/ish/ImageSharingService;->connect()V

    .line 357
    new-instance v0, Lorg/gsma/joyn/vsh/VideoSharingService;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/ims/ImsManager$MyServiceListener;

    invoke-direct {v2, p0}, Lcom/android/ims/ImsManager$MyServiceListener;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1, v2}, Lorg/gsma/joyn/vsh/VideoSharingService;-><init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mVideoSharingApi:Lorg/gsma/joyn/vsh/VideoSharingService;

    .line 359
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mVideoSharingApi:Lorg/gsma/joyn/vsh/VideoSharingService;

    invoke-virtual {v0}, Lorg/gsma/joyn/vsh/VideoSharingService;->connect()V

    .line 360
    return-void
.end method

.method private static getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .prologue
    .line 777
    if-nez p0, :cond_0

    .line 778
    const/4 v0, 0x0

    .line 781
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android:imsCallID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImsServiceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 830
    const-string v0, "ims"

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 208
    sget-object v2, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    monitor-enter v2

    .line 209
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager;

    monitor-exit v2

    .line 215
    :goto_0
    return-object v1

    .line 212
    :cond_0
    new-instance v0, Lcom/android/ims/ImsManager;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    .line 213
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    .line 216
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSeqNum(Landroid/content/Intent;)I
    .locals 2
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 792
    if-nez p0, :cond_0

    .line 796
    :goto_0
    return v0

    :cond_0
    const-string v1, "android:imsSeqNum"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static getServiceId(Landroid/content/Intent;)I
    .locals 2
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 806
    if-nez p0, :cond_0

    .line 810
    :goto_0
    return v0

    :cond_0
    const-string v1, "android:imsServiceId"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    const-string v3, "persist.dbg.volte_avail_ovr"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volte_feature_disabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 279
    .local v0, "disabledByGlobalSetting":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "disabledByGlobalSetting":Z
    :cond_3
    move v0, v2

    .line 275
    goto :goto_1
.end method

.method public static isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    const/4 v1, 0x1

    .line 290
    .local v1, "isProvisioned":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 293
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 295
    .local v2, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 298
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/android/ims/ImsConfig;->getVolteProvisioned()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    .end local v2    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_0
    return v1

    .line 301
    .restart local v2    # "mgr":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isVtEnabledByPlatform(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 317
    const-string v2, "persist.dbg.vt_avail_ovr"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 888
    const-string v0, "ImsManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 892
    const-string v0, "ImsManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 896
    const-string v0, "ImsManager"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    return-void
.end method

.method private setAdvanced4GMode(Z)V
    .locals 6
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 913
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 915
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 916
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_1

    .line 917
    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 919
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    if-eqz p1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 927
    :cond_1
    if-eqz p1, :cond_4

    .line 928
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 934
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 917
    goto :goto_0

    .line 929
    :cond_4
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 931
    const-string v1, "setAdvanced4GMode() : imsServiceAllowTurnOff -> turnOffIms"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 932
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    goto :goto_1
.end method

.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 233
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 234
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 241
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    invoke-direct {v0, p1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_1
    return-void

    .line 233
    .end local v1    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    .restart local v0    # "imsManager":Lcom/android/ims/ImsManager;
    .restart local v1    # "value":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private turnOffIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 944
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "turnOffIms() "

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method private turnOnIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 906
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "turnOnIms() "

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method


# virtual methods
.method public close(I)V
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 506
    const-string v1, "ImsManager: close"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 516
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    .line 517
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 519
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "close()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 516
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    .line 517
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    throw v1
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "createCallProfile()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getCapabilitiesService()Lorg/gsma/joyn/capability/CapabilityService;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mCapabilitiesApi:Lorg/gsma/joyn/capability/CapabilityService;

    return-object v0
.end method

.method public getChatService()Lorg/gsma/joyn/chat/ChatService;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mChatApi:Lorg/gsma/joyn/chat/ChatService;

    return-object v0
.end method

.method public getConfigInterface()Lcom/android/ims/ImsConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    if-nez v2, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 736
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 737
    .local v0, "config":Lcom/android/ims/internal/IImsConfig;
    if-nez v0, :cond_0

    .line 738
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 741
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsConfig;

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsConfig;-><init>(Lcom/android/ims/internal/IImsConfig;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 747
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigInterface(), mConfig= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    return-object v2
.end method

.method public getContactsService()Lorg/gsma/joyn/contacts/ContactsService;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContactsApi:Lorg/gsma/joyn/contacts/ContactsService;

    return-object v0
.end method

.method public getEcbmInterface(I)Lcom/android/ims/ImsEcbm;
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    if-nez v2, :cond_1

    .line 1061
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1064
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    .line 1066
    .local v1, "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-nez v1, :cond_0

    .line 1067
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getEcbmInterface()"

    const/16 v4, 0x385

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getEcbmInterface()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1070
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsEcbm;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1076
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object v2
.end method

.method public getFileTransferService()Lorg/gsma/joyn/ft/FileTransferService;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mFileTransferApi:Lorg/gsma/joyn/ft/FileTransferService;

    return-object v0
.end method

.method public getGeolocSharingService()Lorg/gsma/joyn/gsh/GeolocSharingService;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mGeolocSharingApi:Lorg/gsma/joyn/gsh/GeolocSharingService;

    return-object v0
.end method

.method public getImageSharingService()Lorg/gsma/joyn/ish/ImageSharingService;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImageSharingApi:Lorg/gsma/joyn/ish/ImageSharingService;

    return-object v0
.end method

.method public getImsExtInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1179
    const-string v1, "0"

    .line 1181
    .local v1, "imsExtInfo":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1184
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsService;->getImsExtInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1188
    return-object v1

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getImsExtInfo()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getImsRegInfo()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1159
    const/4 v1, 0x0

    .line 1161
    .local v1, "isImsReg":Z
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1164
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsService;->getImsRegInfo(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1168
    return v1

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getImsRegInfo"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getImsState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1139
    const/4 v1, 0x0

    .line 1141
    .local v1, "imsState":I
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1144
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsService;->getImsState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1148
    return v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getImsState()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    if-nez v2, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 535
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 537
    .local v1, "iUt":Lcom/android/ims/internal/IImsUt;
    if-nez v1, :cond_0

    .line 538
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getSupplementaryServiceConfiguration()"

    const/16 v4, 0x321

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getSupplementaryServiceConfiguration()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 542
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsUt;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object v2
.end method

.method public getVideoSharingService()Lorg/gsma/joyn/vsh/VideoSharingService;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mVideoSharingApi:Lorg/gsma/joyn/vsh/VideoSharingService;

    return-object v0
.end method

.method public hangupAllCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsService;->hangupAllCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "hangupAll()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public isConnected(III)Z
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "isServiceConnected()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public isOpened(I)Z
    .locals 4
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "isOpened()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "callees"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeCall :: serviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callees="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 649
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 651
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    .line 653
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p4}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 654
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;

    move-result-object v1

    .line 656
    .local v1, "session":Lcom/android/ims/internal/ImsCallSession;
    if-eqz p3, :cond_0

    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "conference"

    invoke-virtual {p2, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-object v0

    .line 662
    :cond_0
    invoke-virtual {v0, v1, p3}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(ILandroid/app/PendingIntent;Lcom/android/ims/ImsConnectionStateListener;)I
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 464
    const-string v2, "ImsManager: open"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 467
    if-nez p2, :cond_0

    .line 468
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "incomingCallPendingIntent can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_0
    if-nez p3, :cond_1

    .line 472
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "listener can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_1
    const/4 v1, 0x0

    .line 478
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-direct {p0, p1, p3}, Lcom/android/ims/ImsManager;->createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    move-result-object v4

    invoke-interface {v2, v3, p1, p2, v4}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    if-gtz v1, :cond_2

    .line 489
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "open()"

    mul-int/lit8 v4, v1, -0x1

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "open()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 492
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public setCallIndication(ILandroid/content/Intent;Z)V
    .locals 7
    .param p1, "serviceId"    # I
    .param p2, "incomingCallIndication"    # Landroid/content/Intent;
    .param p3, "isAllow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x65

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallIndication :: serviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", incomingCallIndication="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1095
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1097
    if-nez p2, :cond_0

    .line 1098
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "Can\'t retrieve session with null intent"

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 1102
    :cond_0
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getServiceId(Landroid/content/Intent;)I

    move-result v2

    .line 1104
    .local v2, "incomingServiceId":I
    if-eq p1, v2, :cond_1

    .line 1105
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "Service id is mismatched in the incoming call intent"

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 1109
    :cond_1
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, "callId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1112
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "Call ID missing in the incoming call intent"

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 1116
    :cond_2
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getSeqNum(Landroid/content/Intent;)I

    move-result v3

    .line 1118
    .local v3, "seqNum":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1119
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "seqNum missing in the incoming call intent"

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 1124
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v4, v0, v3, p3}, Lcom/android/ims/internal/IImsService;->setCallIndication(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    return-void

    .line 1125
    :catch_0
    move-exception v1

    .line 1126
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "setCallIndication()"

    const/16 v6, 0x6a

    invoke-direct {v4, v5, v1, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
.end method

.method public setUiTTYMode(Landroid/content/Context;IILandroid/os/Message;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "uiTtyMode"    # I
    .param p4, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 765
    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    .line 768
    :cond_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setTTYMode()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 8
    .param p1, "serviceId"    # I
    .param p2, "incomingCallIntent"    # Landroid/content/Intent;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x65

    .line 680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeCall :: serviceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", incomingCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 686
    if-nez p2, :cond_0

    .line 687
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "Can\'t retrieve session with null intent"

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 691
    :cond_0
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getServiceId(Landroid/content/Intent;)I

    move-result v2

    .line 693
    .local v2, "incomingServiceId":I
    if-eq p1, v2, :cond_1

    .line 694
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "Service id is mismatched in the incoming call intent"

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 698
    :cond_1
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 701
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "Call ID missing in the incoming call intent"

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 706
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v5, p1, v1}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 708
    .local v3, "session":Lcom/android/ims/internal/IImsCallSession;
    if-nez v3, :cond_3

    .line 709
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "No pending session for the call"

    const/16 v7, 0x6b

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :catch_0
    move-exception v4

    .line 720
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "takeCall()"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v5

    .line 713
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    .line 715
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v5, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v5, v3}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v5}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V

    .line 716
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    return-object v0
.end method
