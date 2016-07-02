.class public Lcom/mediatek/ims/ImsConfigStub;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigStub.java"


# static fields
.field private static final MAX_BYTE_COUNT:I = 0x100

.field private static final MAX_MO_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImsConfigService"

.field private static sTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mAtCmdResult:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImsLboPcscf:[Lcom/android/ims/mo/ImsLboPcscf;

.field private mPcscf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    .line 46
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigStub;->mAtCmdResult:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    .line 49
    new-array v1, v3, [Lcom/android/ims/mo/ImsLboPcscf;

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsLboPcscf:[Lcom/android/ims/mo/ImsLboPcscf;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 51
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsLboPcscf:[Lcom/android/ims/mo/ImsLboPcscf;

    new-instance v2, Lcom/android/ims/mo/ImsLboPcscf;

    invoke-direct {v2}, Lcom/android/ims/mo/ImsLboPcscf;-><init>()V

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigStub;->mPcscf:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private declared-synchronized executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "atCmdLine"    # Ljava/lang/String;

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 545
    .local v0, "atCmdResult":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_0

    .line 546
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    sput-object v4, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 550
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 551
    .local v2, "rawData":[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [B

    .line 552
    .local v1, "cmdByte":[B
    const/16 v4, 0x101

    new-array v3, v4, [B

    .line 553
    .local v3, "respByte":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 554
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    .line 556
    sget-object v4, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v1, v3}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v4

    if-lez v4, :cond_1

    .line 557
    new-instance v0, Ljava/lang/String;

    .end local v0    # "atCmdResult":Ljava/lang/String;
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 561
    .restart local v0    # "atCmdResult":Ljava/lang/String;
    :cond_1
    const-string v4, "+CME ERROR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 562
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_2
    monitor-exit p0

    return-object v0

    .line 543
    .end local v0    # "atCmdResult":Ljava/lang/String;
    .end local v1    # "cmdByte":[B
    .end local v2    # "rawData":[B
    .end local v3    # "respByte":[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getAtCmdLine(I)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 427
    const-string v0, ""

    .line 429
    .local v0, "atCmdString":Ljava/lang/String;
    const-string v1, "ImsConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtCmdLine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 466
    const-string v1, "ImsConfigService"

    const-string v2, "Unknown item option"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_0
    return-object v0

    .line 433
    :sswitch_0
    const-string v0, "AT+ECFGGET=\"UA_timer_T1\""

    .line 434
    goto :goto_0

    .line 436
    :sswitch_1
    const-string v0, "AT+ECFGGET=\"UA_timer_T2\""

    .line 437
    goto :goto_0

    .line 439
    :sswitch_2
    const-string v0, "AT+ECFGGET=\"UA_timer_T4\""

    .line 440
    goto :goto_0

    .line 442
    :sswitch_3
    const-string v0, "AT+ECFGGET=\"resource_allocation_mode\""

    .line 443
    goto :goto_0

    .line 445
    :sswitch_4
    const-string v0, "AT+CMMIVT?"

    .line 446
    goto :goto_0

    .line 448
    :sswitch_5
    const-string v0, "AT+ECFGGET=\"sms_over_ip\""

    .line 449
    goto :goto_0

    .line 451
    :sswitch_6
    const-string v0, "AT+ECFGGET=\"UA_keep_alive\""

    .line 452
    goto :goto_0

    .line 454
    :sswitch_7
    const-string v0, "AT+CEVDP?"

    .line 455
    goto :goto_0

    .line 457
    :sswitch_8
    const-string v0, "AT+CVDP?"

    .line 458
    goto :goto_0

    .line 460
    :sswitch_9
    const-string v0, "AT+ECFGGET=\"UA_reg_retry_base_time\""

    .line 461
    goto :goto_0

    .line 463
    :sswitch_a
    const-string v0, "AT+ECFGGET=\"UA_reg_retry_max_time\""

    .line 464
    goto :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_7
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0x6c -> :sswitch_8
        0x6d -> :sswitch_4
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
    .end sparse-switch
.end method

.method private getAtCmdSetLine(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 474
    const-string v0, ""

    .line 476
    .local v0, "atCmdString":Ljava/lang/String;
    const-string v1, "ImsConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtCmdLine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sparse-switch p1, :sswitch_data_0

    .line 513
    const-string v1, "ImsConfigService"

    const-string v2, "Unknown item option"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-object v0

    .line 480
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"UA_timer_T1\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    goto :goto_0

    .line 483
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"UA_timer_T2\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    goto :goto_0

    .line 486
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"UA_timer_T4\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    goto :goto_0

    .line 489
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"resource_allocation_mode\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    goto :goto_0

    .line 492
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CMMIVT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    goto :goto_0

    .line 495
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"sms_over_ip\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    goto/16 :goto_0

    .line 498
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"UA_keep_alive\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    goto/16 :goto_0

    .line 501
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CEVDP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    goto/16 :goto_0

    .line 504
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CVDP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    goto/16 :goto_0

    .line 507
    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"UA_reg_retry_base_time\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    goto/16 :goto_0

    .line 510
    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ECFGSET=\"UA_reg_retry_max_time\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    goto/16 :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_7
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0x6c -> :sswitch_8
        0x6d -> :sswitch_4
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
    .end sparse-switch
.end method

.method private declared-synchronized handleGetMasterValue(I)I
    .locals 5
    .param p1, "item"    # I

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    const-string v2, "ImsConfigService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetMasterValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConfigStub;->getAtCmdLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "retValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 527
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 533
    :goto_0
    monitor-exit p0

    return v2

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ne":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 521
    .end local v1    # "retValue":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized handleProvisionedValue(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    const-string v0, "ImsConfigService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProvisionedValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigStub;->getAtCmdSetLine(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    const/16 v0, 0x18

    monitor-exit p0

    return v0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    const/4 v4, 0x0

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, "value":I
    if-eqz p3, :cond_0

    .line 146
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3, p1, p2, v1, v2}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ImsConfigService"

    const-string v3, "RemoteException occurs when onGetFeatureResponse."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMasterIcsiValue()[Lcom/android/ims/mo/ImsIcsi;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v3, "icsiList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/mo/ImsIcsi;>;"
    const-string v0, ""

    .line 226
    .local v0, "atCmdString":Ljava/lang/String;
    const-string v2, ""

    .line 227
    .local v2, "icsi":Ljava/lang/String;
    const-string v4, ""

    .line 228
    .local v4, "isAllocated":Ljava/lang/String;
    const/4 v1, 0x0

    .line 230
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    .line 231
    new-instance v5, Lcom/android/ims/mo/ImsIcsi;

    const-string v7, ""

    invoke-direct {v5, v7, v6}, Lcom/android/ims/mo/ImsIcsi;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_3

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT+ECFGGET=\"icsi_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT+ECFGGET=\"icsi_resource_allocation_mode_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 241
    new-instance v7, Lcom/android/ims/mo/ImsIcsi;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-direct {v7, v2, v5}, Lcom/android/ims/mo/ImsIcsi;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    .line 241
    goto :goto_2

    .line 245
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/ims/mo/ImsIcsi;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/ims/mo/ImsIcsi;

    return-object v5
.end method

.method public getMasterImsPhoneCtxValue()[Lcom/android/ims/mo/ImsPhoneCtx;
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v6, "phoneCtxList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/mo/ImsPhoneCtx;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v5, "phoneCtxImpi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 273
    .local v0, "atCmdString":Ljava/lang/String;
    const-string v1, ""

    .line 274
    .local v1, "ctx":Ljava/lang/String;
    const-string v2, ""

    .line 275
    .local v2, "ctxImpu":Ljava/lang/String;
    const/4 v3, 0x0

    .line 276
    .local v3, "i":I
    const/4 v4, 0x0

    .line 278
    .local v4, "j":I
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 280
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_1

    .line 281
    const-string v1, ""

    .line 282
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 284
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_0

    .line 285
    const-string v7, ""

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 288
    :cond_0
    new-instance v8, Lcom/android/ims/mo/ImsPhoneCtx;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v8, v1, v7}, Lcom/android/ims/mo/ImsPhoneCtx;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_7

    .line 294
    if-nez v3, :cond_2

    .line 295
    const-string v0, "AT+ECFGGET=\"UA_phone_context\""

    .line 300
    :goto_3
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    const-string v7, "ImsConfigService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readImsPhoneCtxMo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 292
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 297
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AT+ECFGGET=\"UA_phone_context_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 307
    :cond_3
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v10, :cond_6

    .line 308
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    .line 309
    const-string v0, "AT+ECFGGET=\"UA_phone_context_associated_impu\""

    .line 315
    :goto_6
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const-string v7, "ImsConfigService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ctxImpu:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 319
    invoke-interface {v5, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 311
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AT+ECFGGET=\"UA_phone_context_associated_impu_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 323
    :cond_6
    new-instance v8, Lcom/android/ims/mo/ImsPhoneCtx;

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v8, v1, v7}, Lcom/android/ims/mo/ImsPhoneCtx;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v6, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 328
    :cond_7
    new-array v7, v10, [Lcom/android/ims/mo/ImsPhoneCtx;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/ims/mo/ImsPhoneCtx;

    return-object v7
.end method

.method public getMasterLboPcscfValue()[Lcom/android/ims/mo/ImsLboPcscf;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsLboPcscf:[Lcom/android/ims/mo/ImsLboPcscf;

    return-object v0
.end method

.method public getMasterStringArrayValue(I)[Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 202
    sget-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 207
    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    .line 208
    sget-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 78
    sget-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 84
    sget-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 86
    sget-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mPcscf:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getProvisionedValue(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConfigStub;->handleGetMasterValue(I)I

    move-result v0

    return v0
.end method

.method public getVolteProvisioned()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 172
    .line 178
    return-void
.end method

.method public setProvisionedIcsiValue([Lcom/android/ims/mo/ImsIcsi;)V
    .locals 4
    .param p1, "value"    # [Lcom/android/ims/mo/ImsIcsi;

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "i":I
    const-string v0, ""

    .line 356
    .local v0, "cmdStr":Ljava/lang/String;
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+ECFGSET=\"icsi_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/ims/mo/ImsIcsi;->getIcsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/ims/mo/ImsIcsi;->getIsAllocated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+ECFGSET=\"icsi_resource_allocation_mode_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"1\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+ECFGSET=\"icsi_resource_allocation_mode_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 368
    :cond_1
    return-void
.end method

.method public setProvisionedLboPcscfValue([Lcom/android/ims/mo/ImsLboPcscf;)V
    .locals 4
    .param p1, "values"    # [Lcom/android/ims/mo/ImsLboPcscf;

    .prologue
    const/4 v1, 0x4

    .line 379
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 381
    .local v1, "total":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 382
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsLboPcscf:[Lcom/android/ims/mo/ImsLboPcscf;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/ims/mo/ImsLboPcscf;->getLboPcscfAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/mo/ImsLboPcscf;->setLboPcscfAddress(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsLboPcscf:[Lcom/android/ims/mo/ImsLboPcscf;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/ims/mo/ImsLboPcscf;->getLboPcscfAddressType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/mo/ImsLboPcscf;->setLboPcscfAddressType(Ljava/lang/String;)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    .end local v0    # "i":I
    .end local v1    # "total":I
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 385
    .restart local v0    # "i":I
    .restart local v1    # "total":I
    :cond_1
    return-void
.end method

.method public setProvisionedPhoneCtxValue([Lcom/android/ims/mo/ImsPhoneCtx;)V
    .locals 7
    .param p1, "value"    # [Lcom/android/ims/mo/ImsPhoneCtx;

    .prologue
    const/4 v6, 0x4

    .line 396
    const-string v0, ""

    .line 397
    .local v0, "atCmdString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 398
    .local v2, "i":I
    const/4 v3, 0x0

    .line 400
    .local v3, "j":I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_3

    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 401
    if-nez v2, :cond_0

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT+ECFGSET=\"UA_phone_context\",\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/android/ims/mo/ImsPhoneCtx;->getPhoneCtx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/android/ims/mo/ImsPhoneCtx;->getPhoneCtxIpuis()[Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "ctxIpuis":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_2

    if-ge v3, v6, :cond_2

    .line 413
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT+ECFGSET=\"UA_phone_context_associated_impu\",\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 405
    .end local v1    # "ctxIpuis":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT+ECFGSET=\"UA_phone_context_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/android/ims/mo/ImsPhoneCtx;->getPhoneCtx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 417
    .restart local v1    # "ctxIpuis":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT+ECFGSET=\"UA_phone_context_associated_impu_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 422
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 424
    .end local v1    # "ctxIpuis":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setProvisionedStringArrayValue(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 342
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 119
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigStub;->mPcscf:Ljava/lang/String;

    .line 120
    const/16 v0, 0x18

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProvisionedValue(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigStub;->handleProvisionedValue(II)I

    move-result v0

    return v0
.end method
