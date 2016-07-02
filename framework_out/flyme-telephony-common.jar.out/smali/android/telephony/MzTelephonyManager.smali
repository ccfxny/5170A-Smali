.class public Landroid/telephony/MzTelephonyManager;
.super Ljava/lang/Object;
.source "MzTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MzTelephonyManager$CardState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final EXTRA_SIM_STATE_SLOT_ID:Ljava/lang/String; = "subscription"

.field private static final EXTRA_SLOT_ID:Ljava/lang/String; = "subscription"

.field public static final PHONE_RAT_FAMILY_2G:I = 0x1

.field public static final PHONE_RAT_FAMILY_3G:I = 0x2

.field public static final PHONE_RAT_FAMILY_4G:I = 0x4

.field public static final PHONE_RAT_FAMILY_NONE:I = 0x0

.field public static final SLOT_ID_1:I = 0x0

.field public static final SLOT_ID_2:I = 0x1

.field public static final SLOT_ID_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MzTelephonyManager"

.field public static final UNDEFINED_SLOT_ID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    return-void
.end method

.method public static answerRingingCallWithAnimate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 301
    const-string v3, "answerRingingCallWithAnimate"

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 303
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v3

    invoke-interface {v3}, Landroid/telephony/ITelephonyExt;->answerRingingCallWithAnimate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 309
    :goto_0
    return v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 308
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static changeIccLockPasswordBySlotId(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "oldPassword"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeIccLockPasswordBySlotId oldPassword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,newPassword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v3

    invoke-interface {v3, p0, p1, p2}, Landroid/telephony/ITelephonyExt;->changeIccLockPasswordBySlotId(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 173
    :goto_0
    return v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generalCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "request"    # Ljava/lang/String;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 475
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/telephony/ITelephonyExt;->generalCall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 481
    :goto_0
    return-object v2

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 481
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 478
    :catch_1
    move-exception v1

    .line 479
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public static generalCallForCallback(Landroid/telephony/ITelephonyExtCallback;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "callback"    # Landroid/telephony/ITelephonyExtCallback;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 494
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/telephony/ITelephonyExt;->generalCallForCallback(Landroid/telephony/ITelephonyExtCallback;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 500
    :goto_0
    return-object v2

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 500
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 497
    :catch_1
    move-exception v1

    .line 498
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public static get34GCapabilityPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 406
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 407
    .local v1, "phoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 408
    invoke-static {v0}, Landroid/telephony/MzTelephonyManager;->getPhoneRat(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x6

    if-lez v3, :cond_1

    .line 409
    move v1, v0

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get34GCapabilityPhone success, phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 414
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get34GCapabilityPhone, phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 415
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    return-object v3

    .line 407
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCardName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "cardName":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 381
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardName subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; cardName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 385
    return-object v0
.end method

.method public static getCardState(Landroid/content/Context;I)Landroid/telephony/MzTelephonyManager$CardState;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 352
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 353
    .local v2, "slotId":I
    sget-object v0, Landroid/telephony/MzTelephonyManager$CardState;->Unknown:Landroid/telephony/MzTelephonyManager$CardState;

    .line 354
    .local v0, "cardState":Landroid/telephony/MzTelephonyManager$CardState;
    const/4 v1, 0x0

    .line 355
    .local v1, "simState":I
    const/4 v3, 0x0

    .line 356
    .local v3, "slotState":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    .line 357
    if-eqz v3, :cond_1

    .line 358
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 359
    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 360
    sget-object v0, Landroid/telephony/MzTelephonyManager$CardState;->On:Landroid/telephony/MzTelephonyManager$CardState;

    .line 367
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/MzTelephonyManager$CardState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 368
    return-object v0

    .line 362
    :cond_0
    sget-object v0, Landroid/telephony/MzTelephonyManager$CardState;->Disable:Landroid/telephony/MzTelephonyManager$CardState;

    goto :goto_0

    .line 365
    :cond_1
    sget-object v0, Landroid/telephony/MzTelephonyManager$CardState;->Off:Landroid/telephony/MzTelephonyManager$CardState;

    goto :goto_0
.end method

.method public static getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 534
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/telephony/ITelephonyExt;->getCellLocation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 535
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 541
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 536
    :catch_0
    move-exception v1

    .line 537
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 539
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 540
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "imei":Ljava/lang/String;
    sget-object v2, Landroid/os/BuildExt;->IS_M2_NOTEC:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/BuildExt;->IS_M2C:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/BuildExt;->IS_MA01C:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId imei: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 519
    return-object v0

    .line 514
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "mImei":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImei: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 516
    const-string v2, "ril.gsm.imei"

    invoke-static {v4, v2, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getITelephonyExt()Landroid/telephony/ITelephonyExt;
    .locals 1

    .prologue
    .line 55
    const-string v0, "phone_ext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;

    move-result-object v0

    return-object v0
.end method

.method public static getIccLockEnabledBySlotId(I)Z
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccLockEnabledBySlotId slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/telephony/ITelephonyExt;->getIccLockEnabledBySlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 131
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 130
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIpPrefix(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 263
    invoke-static {p0, p1}, Landroid/telephony/MzTelephonyManager;->getIpPrefixKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    :cond_0
    const-string v1, ""

    .line 268
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getIpPrefixKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # I

    .prologue
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ip_call_prefix_sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method

.method private static getPhoneRat(I)I
    .locals 7
    .param p0, "phoneId"    # I

    .prologue
    .line 419
    const/4 v4, -0x1

    .line 420
    .local v4, "rat":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 421
    const-string v5, "gsm.phonerat1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "gsm_phonerat1":Ljava/lang/String;
    const-string v5, "gsm.phonerat2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "gsm_phonerat2":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 424
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 426
    .local v2, "phonerat1":I
    move v4, v2

    .line 444
    .end local v0    # "gsm_phonerat1":Ljava/lang/String;
    .end local v1    # "gsm_phonerat2":Ljava/lang/String;
    .end local v2    # "phonerat1":I
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneRatFamily  rat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 445
    return v4

    .line 428
    .restart local v0    # "gsm_phonerat1":Ljava/lang/String;
    .restart local v1    # "gsm_phonerat2":Ljava/lang/String;
    :cond_1
    const-string v5, "ERROR! Please set gsm.phonerat1 first!"

    invoke-static {v5}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 429
    const/4 v4, -0x1

    goto :goto_0

    .line 431
    :cond_2
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    .line 432
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 434
    .local v3, "phonerat2":I
    move v4, v3

    .line 435
    goto :goto_0

    .line 436
    .end local v3    # "phonerat2":I
    :cond_3
    const-string v5, "ERROR! Please set gsm.phonerat2 first!"

    invoke-static {v5}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 437
    const/4 v4, -0x1

    goto :goto_0

    .line 441
    .end local v0    # "gsm_phonerat1":Ljava/lang/String;
    .end local v1    # "gsm_phonerat2":Ljava/lang/String;
    :cond_4
    const-string v5, "Single Card Support!"

    invoke-static {v5}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 442
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getScAddress(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScAddress slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 86
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/telephony/ITelephonyExt;->getScAddress(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 92
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceMailNumber number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "vmNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v0, "MzTelephonyManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public static processKeyEvent(I)I
    .locals 5
    .param p0, "keyCode"    # I

    .prologue
    const/4 v2, -0x1

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processKeyEvent keyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 285
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/telephony/ITelephonyExt;->processKeyEvent(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 291
    :goto_0
    return v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 290
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveIpPrefix(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ip_call_prefix_sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    return-void
.end method

.method public static sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "slotId"    # I

    .prologue
    .line 181
    invoke-static/range {p6 .. p6}, Landroid/telephony/MzTelephonyManager;->translateSlotIdToSubId(I)J

    move-result-wide v10

    .line 183
    .local v10, "subId":J
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 185
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 186
    long-to-int v1, v10

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v8

    .line 191
    .local v8, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v8    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 193
    .local v9, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDataRoamingEnabled(ZI)V
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "slotId"    # I

    .prologue
    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataRoamingEnabled enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 457
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/telephony/ITelephonyExt;->setDataRoamingEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 460
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 461
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setIccLockEnabledBySlotId(ZLjava/lang/String;I)Z
    .locals 5
    .param p0, "enabled"    # Z
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIccLockEnabledBySlotId enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,password = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,slotId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v3

    invoke-interface {v3, p0, p1, p2}, Landroid/telephony/ITelephonyExt;->setIccLockEnabledBySlotId(ZLjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 152
    :goto_0
    return v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setPhoneRat(I)Z
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneRat subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public static setScAddress(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScAddress address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/telephony/ITelephonyExt;->setScAddress(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setVoiceMailNumber(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "num"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 321
    const-string v4, "setVoiceMailNumber"

    invoke-static {v4}, Landroid/telephony/MzTelephonyManager;->logd(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 323
    .local v2, "simState":I
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    .line 333
    :goto_0
    return v3

    .line 327
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/MzTelephonyManager;->getITelephonyExt()Landroid/telephony/ITelephonyExt;

    move-result-object v4

    invoke-interface {v4, p0, p1}, Landroid/telephony/ITelephonyExt;->setVoiceMailNumber(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0    # "ex1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 332
    .local v1, "ex2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private static translateSlotIdToSubId(I)J
    .locals 15
    .param p0, "slotId"    # I

    .prologue
    .line 199
    :try_start_0
    const-string v11, "android.telephony.SubscriptionManager"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 200
    .local v10, "subscriptionManagerClass":Ljava/lang/Class;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-le v11, v12, :cond_0

    .line 202
    const-string v11, "getSubId"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 204
    .local v4, "getSubIdMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v0, v11

    check-cast v0, [I

    move-object v7, v0

    .line 205
    .local v7, "subIdIntArray":[I
    if-eqz v7, :cond_1

    .line 206
    move-object v2, v7

    .local v2, "arr$":[I
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    if-ge v5, v6, :cond_1

    aget v8, v2, v5

    .line 207
    .local v8, "subId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->longValue()J

    move-result-wide v12

    .line 225
    .end local v2    # "arr$":[I
    .end local v4    # "getSubIdMethod":Ljava/lang/reflect/Method;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "subIdIntArray":[I
    .end local v8    # "subId":I
    .end local v10    # "subscriptionManagerClass":Ljava/lang/Class;
    :goto_0
    return-wide v12

    .line 212
    .restart local v10    # "subscriptionManagerClass":Ljava/lang/Class;
    :cond_0
    const-string v11, "getSubId"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 214
    .restart local v4    # "getSubIdMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    move-object v0, v11

    check-cast v0, [J

    move-object v7, v0

    .line 215
    .local v7, "subIdIntArray":[J
    if-eqz v7, :cond_1

    .line 216
    move-object v2, v7

    .local v2, "arr$":[J
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    if-ge v5, v6, :cond_1

    aget-wide v8, v2, v5

    .line 217
    .local v8, "subId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    goto :goto_0

    .line 221
    .end local v2    # "arr$":[J
    .end local v4    # "getSubIdMethod":Ljava/lang/reflect/Method;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "subIdIntArray":[J
    .end local v8    # "subId":J
    .end local v10    # "subscriptionManagerClass":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v12, -0x1

    goto :goto_0
.end method
