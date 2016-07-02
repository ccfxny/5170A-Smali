.class public Lcom/mediatek/ims/internal/DataDispatcherUtil;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;,
        Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final IMC_IPV4_ADDR_LEN:I = 0x4

.field static final IMC_IPV6_ADDR_LEN:I = 0x10

.field static final IMC_MAXIMUM_NW_IF_NAME_STRING_SIZE:I = 0x64

.field static final IMC_MAX_AUTHORIZATION_TOKEN_LEN:I = 0x10

.field static final IMC_MAX_AUTHTOKEN_FLOWID_NUM:I = 0x4

.field static final IMC_MAX_CONCATENATED_NUM:I = 0xb

.field static final IMC_MAX_FLOW_IDENTIFIER_NUM:I = 0x4

.field static final IMC_MAX_PACKET_FILTER_NUM:I = 0x10

.field static final IMC_MAX_REMOTE_ADDR_AND_MASK_LEN:I = 0x20

.field static final IMC_PCSCF_MAX_NUM:I = 0xa

.field protected static final TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static dumpPdnAckRsp(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 6
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 542
    const-string v0, "[dumpPdnAckRsp] "

    .line 544
    .local v0, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 545
    .local v2, "pdnCnt":I
    const/4 v4, 0x2

    new-array v1, v4, [B

    .line 547
    .local v1, "pad2":[B
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v3

    .line 548
    .local v3, "transactionId":I
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    .line 549
    array-length v4, v1

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactionId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pdn cnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method static dumpPdnContextProp(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 10
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v9, 0x3

    .line 555
    const/4 v3, 0x3

    .line 556
    .local v3, "nPAD3LEN":I
    new-array v5, v9, [B

    .line 557
    .local v5, "pad3":[B
    const-string v1, "[dumpPdnContextProp] "

    .line 563
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 564
    .local v0, "addrType":I
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v5

    .line 566
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v6

    .line 568
    .local v6, "property":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pdn_contexts, addrType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", defaultCid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bearerId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Qos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", signalingFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tft: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pcscf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v4

    .line 574
    .local v4, "num_of_concatenated_contexts":I
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v5

    .line 576
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "concatenated num: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 578
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0xb

    if-ge v2, v7, :cond_1

    .line 579
    if-ge v2, v4, :cond_0

    .line 580
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v6

    .line 581
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "concatenated contexts[: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], cid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", defaultCid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bearerId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Qos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", signalingFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tft: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pcscf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 578
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :cond_1
    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcherUtil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 696
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcherUtil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void
.end method

.method static readDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 11
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 87
    new-instance v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    .line 88
    .local v4, "property":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_0

    move v1, v7

    .line 93
    .local v1, "hasQos":Z
    :goto_0
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readQos(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/QosStatus;

    move-result-object v5

    .line 94
    .local v5, "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    if-eqz v1, :cond_1

    .end local v5    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_1
    iput-object v5, v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_2

    move v2, v7

    .line 99
    .local v2, "hasTft":Z
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_3

    move v0, v7

    .line 102
    .local v0, "hasPcscf":Z
    :goto_3
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readTft(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/TftStatus;

    move-result-object v6

    .line 103
    .local v6, "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readPcscf(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/PcscfInfo;

    move-result-object v3

    .line 104
    .local v3, "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    if-eqz v2, :cond_4

    .end local v6    # "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_4
    iput-object v6, v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 105
    if-eqz v0, :cond_5

    .end local v3    # "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    :goto_5
    iput-object v3, v4, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    .line 106
    return-object v4

    .end local v0    # "hasPcscf":Z
    .end local v1    # "hasQos":Z
    .end local v2    # "hasTft":Z
    :cond_0
    move v1, v8

    .line 92
    goto :goto_0

    .restart local v1    # "hasQos":Z
    .restart local v5    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    :cond_1
    move-object v5, v9

    .line 94
    goto :goto_1

    .end local v5    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    :cond_2
    move v2, v8

    .line 98
    goto :goto_2

    .restart local v2    # "hasTft":Z
    :cond_3
    move v0, v8

    .line 100
    goto :goto_3

    .restart local v0    # "hasPcscf":Z
    .restart local v3    # "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    .restart local v6    # "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    :cond_4
    move-object v6, v9

    .line 104
    goto :goto_4

    .end local v6    # "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    :cond_5
    move-object v3, v9

    .line 105
    goto :goto_5
.end method

.method static readPcscf(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/PcscfInfo;
    .locals 13
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0xa

    const/4 v10, 0x4

    const/4 v9, 0x3

    .line 429
    new-instance v4, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    .line 430
    .local v4, "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    .line 431
    .local v5, "v4AddrNum":I
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_3

    .line 433
    new-instance v3, Lcom/mediatek/internal/telephony/PcscfAddr;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>()V

    .line 439
    .local v3, "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    .line 441
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getShort()I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    .line 443
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 444
    .local v1, "ipBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v10, :cond_1

    .line 445
    if-eqz v2, :cond_0

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 450
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    .line 452
    if-ge v0, v5, :cond_2

    iget-object v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 453
    iget-object v7, v4, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "ipBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "j":I
    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 457
    .local v6, "v6AddrNum":I
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 458
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_7

    .line 459
    new-instance v3, Lcom/mediatek/internal/telephony/PcscfAddr;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>()V

    .line 465
    .restart local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    .line 466
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    .line 467
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getShort()I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    .line 469
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 470
    .restart local v1    # "ipBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v12, :cond_5

    .line 471
    if-eqz v2, :cond_4

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 474
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 476
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    .line 478
    if-ge v0, v6, :cond_6

    iget-object v7, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 479
    iget-object v7, v4, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 481
    .end local v1    # "ipBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "j":I
    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :cond_7
    return-object v4
.end method

.method static readQos(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/QosStatus;
    .locals 6
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 133
    new-instance v2, Lcom/mediatek/internal/telephony/QosStatus;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/QosStatus;-><init>()V

    .line 134
    .local v2, "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    iput v5, v2, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 136
    .local v0, "isGbrPresent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 137
    .local v1, "isMbrPresent":Z
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    .line 139
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    .line 142
    return-object v2

    .end local v0    # "isGbrPresent":Z
    .end local v1    # "isMbrPresent":Z
    :cond_0
    move v0, v4

    .line 135
    goto :goto_0

    .restart local v0    # "isGbrPresent":Z
    :cond_1
    move v1, v4

    .line 136
    goto :goto_1
.end method

.method static readTft(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/TftStatus;
    .locals 24
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 163
    new-instance v21, Lcom/mediatek/internal/telephony/TftStatus;

    invoke-direct/range {v21 .. v21}, Lcom/mediatek/internal/telephony/TftStatus;-><init>()V

    .line 164
    .local v21, "tftStatus":Lcom/mediatek/internal/telephony/TftStatus;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    .line 166
    .local v9, "ebitFlag":Z
    :goto_0
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 167
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 187
    new-instance v19, Lcom/mediatek/internal/telephony/PacketFilterInfo;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/internal/telephony/PacketFilterInfo;-><init>()V

    .line 188
    .local v19, "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->id:I

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->precedence:I

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->direction:I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->networkPfIdentifier:I

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->bitmap:I

    .line 194
    const/16 v22, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v2

    .line 195
    .local v2, "addrAndMaskArray":[B
    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/internal/telephony/PacketFilterInfo;->bitmap:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-lez v22, :cond_3

    .line 197
    const/16 v22, 0x0

    const/16 v23, 0x4

    :try_start_0
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 198
    .local v3, "address":Ljava/net/InetAddress;
    const/16 v22, 0x4

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    .line 199
    .local v18, "mask":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->address:Ljava/lang/String;

    .line 200
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->mask:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v18    # "mask":Ljava/net/InetAddress;
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->protocolNextHeader:I

    .line 220
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->localPortLow:I

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->localPortHigh:I

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->remotePortLow:I

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->remotePortHigh:I

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->spi:I

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->tos:I

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->tosMask:I

    .line 228
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->flowLabel:I

    .line 231
    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/internal/telephony/PacketFilterInfo;->id:I

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 232
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 165
    .end local v2    # "addrAndMaskArray":[B
    .end local v9    # "ebitFlag":Z
    .end local v13    # "i":I
    .end local v19    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 201
    .restart local v2    # "addrAndMaskArray":[B
    .restart local v9    # "ebitFlag":Z
    .restart local v13    # "i":I
    .restart local v19    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :catch_0
    move-exception v8

    .line 202
    .local v8, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_2

    .line 203
    .end local v8    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v8

    .line 204
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 206
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/internal/telephony/PacketFilterInfo;->bitmap:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-lez v22, :cond_0

    .line 208
    const/16 v22, 0x0

    const/16 v23, 0x10

    :try_start_1
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 209
    .restart local v3    # "address":Ljava/net/InetAddress;
    const/16 v22, 0x10

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    .line 210
    .restart local v18    # "mask":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->address:Ljava/lang/String;

    .line 211
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/mediatek/internal/telephony/PacketFilterInfo;->mask:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 212
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v18    # "mask":Ljava/net/InetAddress;
    :catch_2
    move-exception v8

    .line 213
    .local v8, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_2

    .line 214
    .end local v8    # "e":Ljava/net/UnknownHostException;
    :catch_3
    move-exception v8

    .line 215
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 243
    .end local v2    # "addrAndMaskArray":[B
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v19    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_4
    new-instance v20, Lcom/mediatek/internal/telephony/TftParameter;

    invoke-direct/range {v20 .. v20}, Lcom/mediatek/internal/telephony/TftParameter;-><init>()V

    .line 244
    .local v20, "tftParameter":Lcom/mediatek/internal/telephony/TftParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v17

    .line 245
    .local v17, "linkedPfNumber":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 246
    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v16

    .line 247
    .local v16, "linkedPfIdArray":[B
    if-eqz v16, :cond_5

    .line 248
    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 249
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mediatek/internal/telephony/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-byte v23, v16, v13

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 253
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 254
    .local v7, "authtokenFlowIdNum":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 263
    const/4 v13, 0x0

    :goto_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v13, v0, :cond_c

    .line 264
    new-instance v4, Lcom/mediatek/internal/telephony/TftAuthToken;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/TftAuthToken;-><init>()V

    .line 265
    .local v4, "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 266
    .local v6, "authTokenLength":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 267
    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v5

    .line 268
    .local v5, "authTokenArray":[B
    if-eqz v5, :cond_7

    .line 269
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v14, v0, :cond_7

    .line 270
    if-ge v14, v6, :cond_6

    .line 271
    iget-object v0, v4, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-byte v23, v5, v14

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 276
    .end local v14    # "j":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v11

    .line 277
    .local v11, "flowIdLength":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 278
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v14, v0, :cond_a

    .line 279
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v10

    .line 280
    .local v10, "flowIdArray":[B
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v12, v0, [Ljava/lang/Integer;

    .line 281
    .local v12, "flowIds":[Ljava/lang/Integer;
    if-eqz v10, :cond_8

    .line 282
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_7
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v15, v0, :cond_8

    .line 283
    aget-byte v22, v10, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v12, v15

    .line 282
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 287
    .end local v15    # "k":I
    :cond_8
    if-ge v14, v11, :cond_9

    .line 288
    iget-object v0, v4, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 291
    .end local v10    # "flowIdArray":[B
    .end local v12    # "flowIds":[Ljava/lang/Integer;
    :cond_a
    if-ge v13, v7, :cond_b

    .line 292
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mediatek/internal/telephony/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 295
    .end local v4    # "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    .end local v5    # "authTokenArray":[B
    .end local v6    # "authTokenLength":I
    .end local v11    # "flowIdLength":I
    .end local v14    # "j":I
    :cond_c
    if-eqz v9, :cond_d

    .line 296
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    .line 298
    :cond_d
    return-object v21
.end method

.method static writeAllBearersProperties(Lcom/mediatek/ims/ImsAdapter$VaEvent;IILcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 4
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .param p1, "msgType"    # I
    .param p2, "pdp_addr_type"    # I
    .param p3, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    const/4 v3, 0x3

    .line 599
    iget-object v2, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 601
    .local v1, "num_of_concatenated_contexts":I
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 602
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 604
    invoke-static {p0, p1, p3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 605
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 606
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    .line 609
    if-ge v0, v1, :cond_0

    .line 610
    iget-object v2, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-static {p0, p1, v2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 608
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    new-instance v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    goto :goto_1

    .line 615
    :cond_1
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->dumpPdnContextProp(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 616
    return-void
.end method

.method static writeDedicateBearer(Lcom/mediatek/ims/ImsAdapter$VaEvent;ILcom/mediatek/internal/telephony/DedicateBearerProperties;)V
    .locals 3
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .param p1, "type"    # I
    .param p2, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    iget v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 111
    iget v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 112
    iget v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->bearerId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 113
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 114
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mediatek/internal/telephony/QosStatus;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/QosStatus;-><init>()V

    :goto_1
    invoke-static {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeQos(Lcom/mediatek/ims/ImsAdapter$VaEvent;Lcom/mediatek/internal/telephony/QosStatus;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 116
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 117
    iget v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 118
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 119
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    if-nez v0, :cond_4

    new-instance v0, Lcom/mediatek/internal/telephony/TftStatus;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/TftStatus;-><init>()V

    :goto_4
    invoke-static {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writeTft(Lcom/mediatek/ims/ImsAdapter$VaEvent;Lcom/mediatek/internal/telephony/TftStatus;)V

    .line 120
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    if-nez v0, :cond_5

    new-instance v0, Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfInfo;-><init>()V

    :goto_5
    invoke-static {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->writePcscf(Lcom/mediatek/ims/ImsAdapter$VaEvent;Lcom/mediatek/internal/telephony/PcscfInfo;)V

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 116
    goto :goto_2

    :cond_3
    move v1, v2

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    goto :goto_4

    .line 120
    :cond_5
    iget-object v0, p2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->pcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    goto :goto_5
.end method

.method static writePcscf(Lcom/mediatek/ims/ImsAdapter$VaEvent;Lcom/mediatek/internal/telephony/PcscfInfo;)V
    .locals 11
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .param p1, "pcscfInfo"    # Lcom/mediatek/internal/telephony/PcscfInfo;

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0xa

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 485
    iget-object v6, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 486
    new-array v6, v9, [B

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_4

    .line 488
    const/4 v3, 0x0

    .line 489
    .local v3, "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    iget-object v6, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 490
    iget-object v6, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    check-cast v3, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 494
    .restart local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :goto_1
    iget v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 495
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 496
    iget v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putShort(I)I

    .line 498
    iget-object v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    if-nez v6, :cond_1

    move-object v4, v5

    .line 499
    .local v4, "pcscfSplitArray":[Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    const/4 v6, 0x4

    if-ge v2, v6, :cond_3

    .line 500
    if-eqz v4, :cond_2

    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 502
    :try_start_0
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 492
    .end local v2    # "j":I
    .end local v4    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/mediatek/internal/telephony/PcscfAddr;

    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-direct {v3}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>()V

    .restart local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    goto :goto_1

    .line 498
    :cond_1
    iget-object v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 503
    .restart local v2    # "j":I
    .restart local v4    # "pcscfSplitArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 504
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IPV4: Inavlid int: pcscfSplitArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->loge(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_4

    .line 509
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_4

    .line 487
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v2    # "j":I
    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    .end local v4    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_4
    iget-object v6, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 514
    new-array v6, v9, [B

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 515
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v10, :cond_9

    .line 516
    const/4 v3, 0x0

    .line 517
    .restart local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    iget-object v6, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 518
    iget-object v6, p1, Lcom/mediatek/internal/telephony/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    check-cast v3, Lcom/mediatek/internal/telephony/PcscfAddr;

    .line 522
    .restart local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    :goto_6
    iget v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->protocol:I

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 523
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 524
    iget v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->port:I

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putShort(I)I

    .line 526
    iget-object v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    if-nez v6, :cond_6

    move-object v4, v5

    .line 527
    .restart local v4    # "pcscfSplitArray":[Ljava/lang/String;
    :goto_7
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_8
    const/16 v6, 0x10

    if-ge v2, v6, :cond_8

    .line 528
    if-eqz v4, :cond_7

    array-length v6, v4

    if-ge v2, v6, :cond_7

    .line 530
    :try_start_1
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 527
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 520
    .end local v2    # "j":I
    .end local v4    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/mediatek/internal/telephony/PcscfAddr;

    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-direct {v3}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>()V

    .restart local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    goto :goto_6

    .line 526
    :cond_6
    iget-object v6, v3, Lcom/mediatek/internal/telephony/PcscfAddr;->address:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 531
    .restart local v2    # "j":I
    .restart local v4    # "pcscfSplitArray":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 532
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IPV6: Inavlid int: pcscfSplitArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->loge(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_9

    .line 537
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_9

    .line 515
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 540
    .end local v2    # "j":I
    .end local v3    # "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    .end local v4    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_9
    return-void
.end method

.method static writeQos(Lcom/mediatek/ims/ImsAdapter$VaEvent;Lcom/mediatek/internal/telephony/QosStatus;)V
    .locals 3
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .param p1, "qosStatus"    # Lcom/mediatek/internal/telephony/QosStatus;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 147
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 148
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    if-lez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 149
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 150
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->dlGbr:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 151
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->ulGbr:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 152
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->dlMbr:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 153
    iget v0, p1, Lcom/mediatek/internal/telephony/QosStatus;->ulMbr:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 154
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v1, v2

    .line 148
    goto :goto_1
.end method

.method static writeTft(Lcom/mediatek/ims/ImsAdapter$VaEvent;Lcom/mediatek/internal/telephony/TftStatus;)V
    .locals 13
    .param p0, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .param p1, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;

    .prologue
    .line 302
    iget v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->operation:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 303
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/TftParameter;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 304
    const/4 v11, 0x2

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 305
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v11, 0x10

    if-ge v3, v11, :cond_e

    .line 306
    const/4 v8, 0x0

    .line 307
    .local v8, "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/PacketFilterInfo;

    .line 308
    .local v9, "pkt":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    iget v11, v9, Lcom/mediatek/internal/telephony/PacketFilterInfo;->id:I

    add-int/lit8 v12, v3, 0x1

    if-ne v11, v12, :cond_0

    .line 309
    move-object v8, v9

    .line 314
    .end local v9    # "pkt":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_1
    if-nez v8, :cond_2

    .line 315
    new-instance v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;

    .end local v8    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    invoke-direct {v8}, Lcom/mediatek/internal/telephony/PacketFilterInfo;-><init>()V

    .line 317
    .restart local v8    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_2
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->id:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 318
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->precedence:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 319
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->direction:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 320
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->networkPfIdentifier:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 321
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->bitmap:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 323
    const/16 v11, 0x20

    new-array v0, v11, [B

    .line 324
    .local v0, "addrAndMaskArray":[B
    const/4 v1, 0x0

    .line 325
    .local v1, "addressByteArray":[B
    const/4 v7, 0x0

    .line 326
    .local v7, "maskByteArray":[B
    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->address:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->address:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 327
    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->address:Ljava/lang/String;

    if-nez v11, :cond_4

    const/4 v10, 0x0

    .line 328
    .local v10, "splitArray":[Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_7

    .line 329
    array-length v11, v10

    new-array v1, v11, [B

    .line 330
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v11, v10

    if-ge v5, v11, :cond_6

    .line 331
    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 332
    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v1, v5

    .line 330
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 303
    .end local v0    # "addrAndMaskArray":[B
    .end local v1    # "addressByteArray":[B
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v7    # "maskByteArray":[B
    .end local v8    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    .end local v10    # "splitArray":[Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    goto :goto_0

    .line 327
    .restart local v0    # "addrAndMaskArray":[B
    .restart local v1    # "addressByteArray":[B
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "maskByteArray":[B
    .restart local v8    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_4
    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->address:Ljava/lang/String;

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 334
    .restart local v5    # "j":I
    .restart local v10    # "splitArray":[Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    aput-byte v11, v1, v5

    goto :goto_4

    .line 337
    :cond_6
    const/4 v5, 0x0

    :goto_5
    array-length v11, v1

    if-ge v5, v11, :cond_7

    .line 338
    aget-byte v11, v1, v5

    aput-byte v11, v0, v5

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 342
    .end local v5    # "j":I
    .end local v10    # "splitArray":[Ljava/lang/String;
    :cond_7
    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->mask:Ljava/lang/String;

    if-eqz v11, :cond_d

    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->address:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_d

    .line 343
    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->mask:Ljava/lang/String;

    if-nez v11, :cond_9

    const/4 v10, 0x0

    .line 344
    .restart local v10    # "splitArray":[Ljava/lang/String;
    :goto_6
    if-eqz v10, :cond_d

    .line 345
    array-length v11, v10

    new-array v7, v11, [B

    .line 346
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    array-length v11, v10

    if-ge v5, v11, :cond_b

    .line 347
    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 348
    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 346
    :cond_8
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 343
    .end local v5    # "j":I
    .end local v10    # "splitArray":[Ljava/lang/String;
    :cond_9
    iget-object v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->mask:Ljava/lang/String;

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 349
    .restart local v5    # "j":I
    .restart local v10    # "splitArray":[Ljava/lang/String;
    :cond_a
    if-eqz v1, :cond_8

    .line 350
    const/4 v11, 0x0

    aput-byte v11, v1, v5

    goto :goto_8

    .line 354
    :cond_b
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->bitmap:I

    and-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_c

    .line 355
    const/4 v5, 0x0

    :goto_9
    array-length v11, v7

    if-ge v5, v11, :cond_d

    .line 356
    add-int/lit8 v11, v5, 0x4

    aget-byte v12, v7, v5

    aput-byte v12, v0, v11

    .line 355
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 357
    :cond_c
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->bitmap:I

    and-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_d

    .line 358
    const/4 v5, 0x0

    :goto_a
    array-length v11, v7

    if-ge v5, v11, :cond_d

    .line 359
    add-int/lit8 v11, v5, 0x10

    aget-byte v12, v7, v5

    aput-byte v12, v0, v11

    .line 358
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 363
    .end local v5    # "j":I
    .end local v10    # "splitArray":[Ljava/lang/String;
    :cond_d
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 365
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->protocolNextHeader:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 366
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 367
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->localPortLow:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putShort(I)I

    .line 368
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->localPortHigh:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putShort(I)I

    .line 369
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->remotePortLow:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putShort(I)I

    .line 370
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->remotePortHigh:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putShort(I)I

    .line 371
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->spi:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 372
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->tos:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 373
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->tosMask:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 374
    const/4 v11, 0x2

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 375
    iget v11, v8, Lcom/mediatek/internal/telephony/PacketFilterInfo;->flowLabel:I

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 378
    .end local v0    # "addrAndMaskArray":[B
    .end local v1    # "addressByteArray":[B
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "maskByteArray":[B
    .end local v8    # "pkFilterInfo":Lcom/mediatek/internal/telephony/PacketFilterInfo;
    :cond_e
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 379
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 380
    const/4 v3, 0x0

    :goto_b
    const/16 v11, 0x10

    if-ge v3, v11, :cond_10

    .line 381
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_f

    .line 382
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->byteValue()B

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 380
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 384
    :cond_f
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_c

    .line 387
    :cond_10
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 388
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 390
    const/4 v3, 0x0

    :goto_d
    const/4 v11, 0x4

    if-ge v3, v11, :cond_17

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_11

    .line 393
    iget-object v11, p1, Lcom/mediatek/internal/telephony/TftStatus;->tftParameter:Lcom/mediatek/internal/telephony/TftParameter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    check-cast v2, Lcom/mediatek/internal/telephony/TftAuthToken;

    .line 397
    .restart local v2    # "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    :goto_e
    iget-object v11, v2, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 398
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 399
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_f
    const/16 v11, 0x10

    if-ge v5, v11, :cond_13

    .line 400
    iget-object v11, v2, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_12

    .line 401
    iget-object v11, v2, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 399
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 395
    .end local v5    # "j":I
    :cond_11
    new-instance v2, Lcom/mediatek/internal/telephony/TftAuthToken;

    .end local v2    # "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    invoke-direct {v2}, Lcom/mediatek/internal/telephony/TftAuthToken;-><init>()V

    .restart local v2    # "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    goto :goto_e

    .line 403
    .restart local v5    # "j":I
    :cond_12
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_10

    .line 406
    :cond_13
    iget-object v11, v2, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 407
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 408
    const/4 v5, 0x0

    :goto_11
    const/4 v11, 0x4

    if-ge v5, v11, :cond_16

    .line 409
    iget-object v11, v2, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_14

    .line 410
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_12
    const/4 v11, 0x4

    if-ge v6, v11, :cond_15

    .line 411
    iget-object v11, v2, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Integer;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 410
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 413
    .end local v6    # "k":I
    :cond_14
    const/4 v11, 0x4

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 408
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 390
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 418
    .end local v2    # "authToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    .end local v5    # "j":I
    :cond_17
    return-void
.end method


# virtual methods
.method composeGlobalIPAddrVaEvent(III[BLjava/lang/String;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "cid"    # I
    .param p3, "networkId"    # I
    .param p4, "addr"    # [B
    .param p5, "intfName"    # Ljava/lang/String;
    .param p6, "phoneId"    # I

    .prologue
    .line 656
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-direct {v0, p6, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 657
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    const/16 v1, 0x64

    .line 658
    .local v1, "intfNamMaxLen":I
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 659
    const/4 v2, 0x3

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 660
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 661
    invoke-virtual {v0, p4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 662
    const/16 v2, 0x64

    invoke-virtual {v0, p5, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 664
    return-object v0
.end method

.method extractDefaultPdnActInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 619
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;-><init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;)V

    .line 621
    .local v0, "defaultPdnActInd":Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->transactionId:I

    .line 622
    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pad:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pad:[B

    .line 623
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->readQos(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/internal/telephony/QosStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 624
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->emergency_ind:I

    .line 625
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pcscf_discovery:I

    .line 626
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->signalingFlag:I

    .line 627
    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pad2:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$DefaultPdnActInd;->pad2:[B

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractDefaultPdnActInd DefaultPdnActInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 630
    return-object v0

    .line 626
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method extractPdnDeactInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v1, 0x1

    .line 634
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;-><init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;)V

    .line 640
    .local v0, "pdnDeactInd":Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    .line 641
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    .line 642
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    .line 643
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactInd;->cid:I

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractDefaultPdnActInd PdnDeactInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 646
    return-object v0

    .line 642
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
