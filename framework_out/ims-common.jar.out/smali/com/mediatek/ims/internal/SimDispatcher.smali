.class public Lcom/mediatek/ims/internal/SimDispatcher;
.super Landroid/os/Handler;
.source "SimDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final READ_ISIM_COMMAND_DATA_LENGTH:I = 0x100

.field private static final READ_ISIM_COMMAND_DATA_NUM:I = 0x5

.field private static final READ_ISIM_COMMAND_DOMAIN_NAME:I = 0x2

.field private static final READ_ISIM_COMMAND_IMPI:I = 0x0

.field private static final READ_ISIM_COMMAND_IMPU:I = 0x1

.field private static final READ_ISIM_COMMAND_PSISMSC:I = 0x3

.field private static final READ_ISIM_SERVICE_TABLE:I = 0x4

.field private static final READ_USIM_COMMAND_DATA_LENGTH:I = 0x100

.field private static final READ_USIM_COMMAND_IMSI:I = 0x0

.field private static final READ_USIM_COMMAND_PSISMSC:I = 0x1

.field private static final READ_USIM_COMMAND_SMSP:I = 0x2

.field private static final STATE_ISIM_TYPE_INVALID:I = 0x3

.field private static final STATE_ISIM_TYPE_UNKNOWN:I = 0x2

.field private static final STATE_ISIM_TYPE_VALID:I = 0x4

.field private static final STATE_USIM_TYPE_INVALID:I = 0x0

.field private static final STATE_USIM_TYPE_VALID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[SimDispatcher]"

.field private static final USIM_AUTH_IMS_AKA_COMMAND_RES_LENGTH:I = 0x100

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsimState:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimState:[Ljava/lang/String;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/SimDispatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "io"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;

    .line 114
    new-instance v1, Lcom/mediatek/ims/internal/SimDispatcher$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/SimDispatcher$1;-><init>(Lcom/mediatek/ims/internal/SimDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 79
    const-string v1, "creating SimDispatcher..."

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "mediatek.intent.action.ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/SimDispatcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/SimDispatcher;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/SimDispatcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/SimDispatcher;)Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/SimDispatcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 898
    if-nez p0, :cond_0

    const-string v3, ""

    .line 914
    :goto_0
    return-object v3

    .line 900
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 902
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 905
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 907
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 911
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 914
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 838
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 844
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private hexCharToInt(C)I
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 848
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 849
    add-int/lit8 v0, p1, -0x30

    .line 855
    :goto_0
    return v0

    .line 851
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    .line 852
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 854
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    .line 855
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 858
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 874
    if-nez p1, :cond_1

    .line 875
    const/4 v1, 0x0

    .line 887
    :cond_0
    return-object v1

    .line 878
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 880
    .local v2, "sz":I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 882
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 883
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/SimDispatcher;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/SimDispatcher;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 882
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private readIsimData(III)V
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "transactionId"    # I

    .prologue
    .line 534
    new-instance v3, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v14, 0x187d9

    move/from16 v0, p1

    invoke-direct {v3, v0, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 535
    .local v3, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/16 v14, 0x100

    new-array v12, v14, [B

    .line 536
    .local v12, "resData":[B
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v13

    .line 537
    .local v13, "subId":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]transaction_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", phoneId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", subId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", type = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 542
    packed-switch p2, :pswitch_data_0

    .line 793
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]readIsimData unknown type = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 798
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v14, v3}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 799
    :goto_0
    return-void

    .line 544
    :pswitch_0
    const-string v6, ""

    .line 547
    .local v6, "impi":Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v14

    invoke-interface {v14, v13}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpiForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 555
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]impi = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 557
    if-nez v6, :cond_1

    .line 558
    invoke-direct/range {p0 .. p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readIsimDataFail(III)V

    goto :goto_0

    .line 548
    :catch_0
    move-exception v4

    .line 549
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 550
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 552
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 563
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 566
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 569
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 572
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 576
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]impi.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x100

    if-le v14, v15, :cond_2

    const/16 v14, 0x100

    :goto_2
    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 580
    const/16 v14, 0x100

    invoke-virtual {v3, v6, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 582
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    const/4 v14, 0x4

    if-ge v5, v14, :cond_0

    .line 585
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 587
    const/16 v14, 0x100

    new-array v14, v14, [B

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 582
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 577
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_2

    .line 593
    .end local v6    # "impi":Ljava/lang/String;
    :pswitch_1
    const/4 v7, 0x0

    .line 596
    .local v7, "impu":[Ljava/lang/String;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v14

    invoke-interface {v14, v13}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v7

    .line 597
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]impu = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 605
    :goto_4
    if-nez v7, :cond_3

    .line 606
    invoke-direct/range {p0 .. p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readIsimDataFail(III)V

    goto/16 :goto_0

    .line 598
    :catch_2
    move-exception v4

    .line 599
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 600
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 602
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 611
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_3
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 614
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 617
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 620
    array-length v14, v7

    const/4 v15, 0x5

    if-le v14, v15, :cond_4

    const/4 v14, 0x5

    :goto_5
    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 623
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    const/4 v14, 0x5

    if-ge v5, v14, :cond_0

    .line 624
    array-length v14, v7

    if-ge v5, v14, :cond_6

    aget-object v14, v7, v5

    if-eqz v14, :cond_6

    .line 626
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]impu["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "].length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 627
    aget-object v14, v7, v5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x100

    if-le v14, v15, :cond_5

    const/16 v14, 0x100

    :goto_7
    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 630
    aget-object v14, v7, v5

    const/16 v15, 0x100

    invoke-virtual {v3, v14, v15}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 623
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 620
    .end local v5    # "i":I
    :cond_4
    array-length v14, v7

    goto :goto_5

    .line 627
    .restart local v5    # "i":I
    :cond_5
    aget-object v14, v7, v5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_7

    .line 633
    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 635
    const/16 v14, 0x100

    new-array v14, v14, [B

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    goto :goto_8

    .line 642
    .end local v5    # "i":I
    .end local v7    # "impu":[Ljava/lang/String;
    :pswitch_2
    const-string v1, ""

    .line 645
    .local v1, "domain":Ljava/lang/String;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v14

    invoke-interface {v14, v13}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 646
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]domain = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    .line 654
    :goto_9
    if-nez v1, :cond_7

    .line 655
    invoke-direct/range {p0 .. p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readIsimDataFail(III)V

    goto/16 :goto_0

    .line 647
    :catch_4
    move-exception v4

    .line 648
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 649
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 651
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9

    .line 660
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_7
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 663
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 666
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 669
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 673
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]domain.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x100

    if-le v14, v15, :cond_8

    const/16 v14, 0x100

    :goto_a
    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 677
    const/16 v14, 0x100

    invoke-virtual {v3, v1, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 679
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_b
    const/4 v14, 0x4

    if-ge v5, v14, :cond_0

    .line 682
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 684
    const/16 v14, 0x100

    new-array v14, v14, [B

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 679
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 674
    .end local v5    # "i":I
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_a

    .line 690
    .end local v1    # "domain":Ljava/lang/String;
    :pswitch_3
    const/4 v2, 0x0

    .line 693
    .local v2, "efPsismsc":[B
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v14

    invoke-interface {v14, v13}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPsismscForSubscriber(I)[B
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v2

    .line 701
    :goto_c
    if-nez v2, :cond_9

    .line 702
    invoke-direct/range {p0 .. p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readIsimDataFail(III)V

    goto/16 :goto_0

    .line 694
    :catch_6
    move-exception v4

    .line 695
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    .line 696
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_7
    move-exception v4

    .line 698
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c

    .line 706
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]EF_PSISMSC = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2}, Lcom/mediatek/ims/internal/SimDispatcher;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 709
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 712
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 715
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 718
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 722
    array-length v14, v2

    const/16 v15, 0x100

    if-le v14, v15, :cond_a

    const/16 v11, 0x100

    .line 724
    .local v11, "psismscLen":I
    :goto_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]efPsismsc.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", max len = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x100

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v3, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 728
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v14, v12, v15, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 729
    invoke-virtual {v3, v12}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 731
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e
    const/4 v14, 0x4

    if-ge v5, v14, :cond_0

    .line 734
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 736
    const/16 v14, 0x100

    new-array v14, v14, [B

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 731
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 722
    .end local v5    # "i":I
    .end local v11    # "psismscLen":I
    :cond_a
    array-length v11, v2

    goto :goto_d

    .line 741
    .end local v2    # "efPsismsc":[B
    :pswitch_4
    const-string v8, ""

    .line 744
    .local v8, "ist":Ljava/lang/String;
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v14

    invoke-interface {v14, v13}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v8

    .line 745
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]ist = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9

    .line 753
    :goto_f
    if-nez v8, :cond_b

    .line 754
    invoke-direct/range {p0 .. p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readIsimDataFail(III)V

    goto/16 :goto_0

    .line 746
    :catch_8
    move-exception v4

    .line 747
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f

    .line 748
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_9
    move-exception v4

    .line 750
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f

    .line 758
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/SimDispatcher;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 761
    .local v9, "istBytes":[B
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 764
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 767
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 770
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 774
    array-length v14, v9

    const/16 v15, 0x100

    if-le v14, v15, :cond_c

    const/16 v10, 0x100

    .line 776
    .local v10, "istLen":I
    :goto_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readIsimData]istBytes.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", max len = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x100

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v3, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 780
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v9, v14, v12, v15, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 781
    invoke-virtual {v3, v12}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 783
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_11
    const/4 v14, 0x4

    if-ge v5, v14, :cond_0

    .line 786
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 788
    const/16 v14, 0x100

    new-array v14, v14, [B

    invoke-virtual {v3, v14}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 783
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 774
    .end local v5    # "i":I
    .end local v10    # "istLen":I
    :cond_c
    array-length v10, v9

    goto :goto_10

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private readIsimDataFail(III)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "transactionId"    # I

    .prologue
    const/4 v4, 0x0

    .line 802
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v3, 0x187d9

    invoke-direct {v0, p1, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 803
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/16 v3, 0x100

    new-array v2, v3, [B

    .line 806
    .local v2, "pad":[B
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 809
    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 812
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 815
    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 818
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 820
    invoke-virtual {v0, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 822
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[readIsimDataFail]transactionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method private readUsimData(III)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "transactionId"    # I

    .prologue
    .line 327
    new-instance v2, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v10, 0x187d7

    invoke-direct {v2, p1, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 328
    .local v2, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/16 v10, 0x100

    new-array v7, v10, [B

    .line 329
    .local v7, "resData":[B
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v9

    .line 330
    .local v9, "subId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]transaction_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", phoneId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 335
    packed-switch p2, :pswitch_data_0

    .line 488
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]unknown type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 493
    :goto_0
    iget-object v10, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v10, v2}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 494
    :goto_1
    return-void

    .line 338
    :pswitch_0
    const/4 v5, 0x0

    .line 339
    .local v5, "mncLength":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "imsi":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]imsi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMncLengthForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 351
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]MNC length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 353
    if-eqz v4, :cond_0

    if-lez v5, :cond_0

    const/16 v10, 0xf

    if-le v5, v10, :cond_1

    .line 354
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readUsimDataFail(III)V

    goto :goto_1

    .line 344
    :catch_0
    move-exception v3

    .line 345
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 346
    .end local v3    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 348
    .local v3, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 359
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    invoke-virtual {v2, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 362
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 365
    invoke-virtual {v2, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 368
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 371
    int-to-byte v10, v5

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 374
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 375
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 376
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 380
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]imsi.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 383
    const/16 v10, 0x100

    invoke-virtual {v2, v4, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 387
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "mncLength":I
    :pswitch_1
    const/4 v0, 0x0

    .line 390
    .local v0, "efPsismsc":[B
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimPsismscForSubscriber(I)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 398
    :goto_3
    if-nez v0, :cond_2

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readUsimDataFail(III)V

    goto/16 :goto_1

    .line 391
    :catch_2
    move-exception v3

    .line 392
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 393
    .end local v3    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    .line 395
    .local v3, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 403
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]EF_PSISMSC = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/mediatek/ims/internal/SimDispatcher;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 409
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 412
    invoke-virtual {v2, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 415
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 418
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 421
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 422
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 423
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 427
    array-length v10, v0

    const/16 v11, 0x100

    if-le v10, v11, :cond_3

    const/16 v6, 0x100

    .line 429
    .local v6, "psismscLen":I
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]efPsismsc.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", max len = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x100

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v2, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 433
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v7, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 434
    invoke-virtual {v2, v7}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    goto/16 :goto_0

    .line 427
    .end local v6    # "psismscLen":I
    :cond_3
    array-length v6, v0

    goto :goto_4

    .line 438
    .end local v0    # "efPsismsc":[B
    :pswitch_2
    const/4 v1, 0x0

    .line 441
    .local v1, "efSmsp":[B
    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimSmspForSubscriber(I)[B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v1

    .line 449
    :goto_5
    if-nez v1, :cond_4

    .line 450
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/SimDispatcher;->readUsimDataFail(III)V

    goto/16 :goto_1

    .line 442
    :catch_4
    move-exception v3

    .line 443
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 444
    .end local v3    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v3

    .line 446
    .local v3, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 454
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]EF_SMSP = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Lcom/mediatek/ims/internal/SimDispatcher;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v2, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 460
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 463
    invoke-virtual {v2, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 466
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 469
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 472
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 473
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 474
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 478
    array-length v10, v1

    const/16 v11, 0x100

    if-le v10, v11, :cond_5

    const/16 v8, 0x100

    .line 480
    .local v8, "smspLen":I
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readUsimData]efSmsp.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", max len = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x100

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v2, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 484
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v10, v7, v11, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 485
    invoke-virtual {v2, v7}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    goto/16 :goto_0

    .line 478
    .end local v8    # "smspLen":I
    :cond_5
    array-length v8, v1

    goto :goto_6

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readUsimDataFail(III)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "transactionId"    # I

    .prologue
    const/4 v3, 0x0

    .line 497
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v2, 0x187d7

    invoke-direct {v0, p1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 498
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/16 v2, 0x100

    new-array v1, v2, [B

    .line 499
    .local v1, "pad":[B
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 502
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 505
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 508
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 511
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 514
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 515
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 516
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 520
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 522
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 525
    iget-object v2, p0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[readUsimDataFail]transactionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 530
    return-void
.end method


# virtual methods
.method public disableRequest()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "disableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public enableRequest()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "enableRequest()"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    sget-object v2, Lcom/mediatek/ims/internal/SimDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 107
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Unknown Event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 111
    monitor-exit v2

    .line 112
    return-void

    .line 111
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 834
    const-string v0, "[SimDispatcher]"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 24
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 190
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v14

    .line 191
    .local v14, "requestId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v11

    .line 193
    .local v11, "phoneId":I
    move/from16 v19, v11

    .line 194
    .local v19, "slotId":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]requestId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", phoneId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 196
    packed-switch v14, :pswitch_data_0

    .line 318
    :pswitch_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown request: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 324
    .end local v11    # "phoneId":I
    .end local v14    # "requestId":I
    .end local v19    # "slotId":I
    :goto_0
    return-void

    .line 198
    .restart local v11    # "phoneId":I
    .restart local v14    # "requestId":I
    .restart local v19    # "slotId":I
    :pswitch_1
    const/4 v13, 0x0

    .line 199
    .local v13, "randLen":I
    const/4 v5, 0x0

    .line 200
    .local v5, "autnLen":I
    const/4 v10, 0x0

    .line 202
    .local v10, "family":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 203
    .local v20, "transactionId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v13

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/4 v10, 0x3

    .line 211
    :goto_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]transaction_id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 212
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]Rand Len =  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Autn Len = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 214
    const/16 v21, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v7

    .line 215
    .local v7, "byteRand":[B
    const/16 v21, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v6

    .line 217
    .local v6, "byteAutn":[B
    new-array v12, v13, [B

    .line 218
    .local v12, "rand":[B
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v13, v0, :cond_1

    .end local v13    # "randLen":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v7, v0, v12, v1, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 219
    new-array v4, v5, [B

    .line 220
    .local v4, "autn":[B
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v5, v0, :cond_2

    .end local v5    # "autnLen":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v6, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]SIM auth:RAND = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", AUTN = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/16 v17, 0x0

    .line 231
    .local v17, "response":[B
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/SimDispatcher;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1, v10, v12, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx;->simAkaAuthentication(II[B[B)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 241
    :goto_4
    :try_start_2
    new-instance v16, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v21, 0x187db

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 245
    .local v16, "resEvent":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 248
    if-nez v17, :cond_3

    const/16 v21, 0x0

    :goto_5
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 251
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 252
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 255
    const/16 v21, 0x100

    move/from16 v0, v21

    new-array v15, v0, [B

    .line 256
    .local v15, "resData":[B
    if-eqz v17, :cond_4

    .line 257
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 258
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 259
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]AKA resData = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v15}, Lcom/mediatek/ims/internal/SimDispatcher;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 264
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 266
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]DO_AKA_AUTHENTICATION response is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 321
    .end local v4    # "autn":[B
    .end local v6    # "byteAutn":[B
    .end local v7    # "byteRand":[B
    .end local v10    # "family":I
    .end local v11    # "phoneId":I
    .end local v12    # "rand":[B
    .end local v14    # "requestId":I
    .end local v15    # "resData":[B
    .end local v16    # "resEvent":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v17    # "response":[B
    .end local v19    # "slotId":I
    .end local v20    # "transactionId":I
    :catch_0
    move-exception v8

    .line 322
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 209
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "autnLen":I
    .restart local v10    # "family":I
    .restart local v11    # "phoneId":I
    .restart local v13    # "randLen":I
    .restart local v14    # "requestId":I
    .restart local v19    # "slotId":I
    .restart local v20    # "transactionId":I
    :cond_0
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 218
    .restart local v6    # "byteAutn":[B
    .restart local v7    # "byteRand":[B
    .restart local v12    # "rand":[B
    :cond_1
    const/16 v13, 0x20

    goto/16 :goto_2

    .line 220
    .end local v13    # "randLen":I
    .restart local v4    # "autn":[B
    :cond_2
    const/16 v5, 0x20

    goto/16 :goto_3

    .line 233
    .end local v5    # "autnLen":I
    .restart local v17    # "response":[B
    :catch_1
    move-exception v9

    .line 234
    .local v9, "ex":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_4

    .line 235
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    .line 237
    .local v9, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4

    .line 248
    .end local v9    # "ex":Ljava/lang/NullPointerException;
    .restart local v16    # "resEvent":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_3
    const/16 v21, 0x1

    goto/16 :goto_5

    .line 261
    .restart local v15    # "resData":[B
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    goto :goto_6

    .line 270
    .end local v4    # "autn":[B
    .end local v6    # "byteAutn":[B
    .end local v7    # "byteRand":[B
    .end local v10    # "family":I
    .end local v12    # "rand":[B
    .end local v15    # "resData":[B
    .end local v16    # "resEvent":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v17    # "response":[B
    .end local v20    # "transactionId":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 271
    .restart local v20    # "transactionId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v11, v1, v2}, Lcom/mediatek/ims/internal/SimDispatcher;->readUsimData(III)V

    goto/16 :goto_0

    .line 275
    .end local v20    # "transactionId":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 276
    .restart local v20    # "transactionId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v11, v1, v2}, Lcom/mediatek/ims/internal/SimDispatcher;->readIsimData(III)V

    goto/16 :goto_0

    .line 280
    .end local v20    # "transactionId":I
    :pswitch_4
    new-instance v18, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v21, 0x187d5

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 283
    .local v18, "responseEvent":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 284
    .restart local v20    # "transactionId":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]transaction_id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 289
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[vaEventCallback]SimState: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ISIMState: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/SimDispatcher;->log(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mSimState:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    const-string v22, "LOADED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 293
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 299
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    const-string v22, "LOADED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 300
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 308
    :goto_8
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 311
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    goto/16 :goto_0

    .line 295
    :cond_5
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_7

    .line 301
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/SimDispatcher;->mIsimState:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    const-string v22, "ABSENT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 302
    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_8

    .line 304
    :cond_7
    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    .line 196
    :pswitch_data_0
    .packed-switch 0x187d4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
