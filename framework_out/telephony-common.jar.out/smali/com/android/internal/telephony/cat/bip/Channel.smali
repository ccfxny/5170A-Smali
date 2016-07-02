.class abstract Lcom/android/internal/telephony/cat/bip/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;,
        Lcom/android/internal/telephony/cat/bip/Channel$TcpReceiverThread;,
        Lcom/android/internal/telephony/cat/bip/Channel$UdpReceiverThread;
    }
.end annotation


# static fields
.field protected static final DEFAULT_IOTTEST_VALUE:I

.field protected static final DISABLE_IOTTEST_CONFIG:Ljava/lang/String; = "0"

.field protected static final ENABLE_IOTTEST_CONFIG:Ljava/lang/String; = "1"

.field protected static final PROPERTY_IOT_TEST:Ljava/lang/String; = "persist.service.bip.iot.test"

.field protected static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field protected isChannelOpened:Z

.field protected isReceiveDataTRSent:Z

.field protected mAddress:Ljava/net/InetAddress;

.field protected mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

.field protected mBipManger:Lcom/android/internal/telephony/cat/bip/BipManager;

.field protected mBufferSize:I

.field protected mChannelId:I

.field protected mChannelStatus:I

.field protected mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

.field private mHandler:Lcom/android/internal/telephony/cat/CatService;

.field protected mIOTTest:I

.field protected mLinkMode:I

.field protected mLock:Ljava/lang/Object;

.field protected mPort:I

.field protected mProtocolType:I

.field protected mRecvDataRet:Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

.field protected mRxBuffer:[B

.field protected mRxBufferCacheCount:I

.field protected mRxBufferCount:I

.field protected mRxBufferOffset:I

.field private volatile mStop:Z

.field protected mTxBuffer:[B

.field protected mTxBufferCount:I

.field protected needCopy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cat/bip/Channel;->DEFAULT_IOTTEST_VALUE:I

    return-void
.end method

.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p8, "bipManager"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    .line 80
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    .line 81
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mLinkMode:I

    .line 82
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    .line 84
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mAddress:Ljava/net/InetAddress;

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mPort:I

    .line 86
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 87
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBipManger:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 88
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    .line 90
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mTxBuffer:[B

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mTxBufferCount:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRecvDataRet:Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .line 97
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->needCopy:I

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->isChannelOpened:Z

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 102
    sget v0, Lcom/android/internal/telephony/cat/bip/Channel;->DEFAULT_IOTTEST_VALUE:I

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mIOTTest:I

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->isReceiveDataTRSent:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z

    .line 106
    iput p1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    .line 107
    iput p2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mLinkMode:I

    .line 108
    iput p3, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    .line 109
    iput-object p4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mAddress:Ljava/net/InetAddress;

    .line 110
    iput p5, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mPort:I

    .line 111
    iput p6, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    .line 113
    iput-object p7, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 114
    iput-object p8, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBipManger:Lcom/android/internal/telephony/cat/bip/BipManager;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBipManger:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/bip/BipManager;->getBipChannelManager()Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/internal/telephony/cat/bip/ChannelStatus;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/bip/Channel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/Channel;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z

    return v0
.end method


# virtual methods
.method public changeChannelStatus(B)V
    .locals 7
    .param p1, "status"    # B

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 158
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 160
    .local v1, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Channel]:changeChannelStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 163
    .local v0, "additionalInfo":[B
    const/16 v2, -0x48

    aput-byte v2, v0, v5

    .line 164
    const/4 v2, 0x1

    aput-byte v6, v0, v2

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/Channel;->getChannelId()I

    move-result v2

    or-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 166
    const/4 v2, 0x3

    aput-byte v5, v0, v2

    .line 168
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 169
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 170
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 171
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 173
    return-void
.end method

.method protected checkBufferSize()I
    .locals 8

    .prologue
    const/16 v7, 0xed

    const/4 v3, 0x3

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "minBufferSize":I
    const/4 v1, 0x0

    .line 198
    .local v1, "maxBufferSize":I
    const/4 v0, 0x0

    .line 200
    .local v0, "defaultBufferSize":I
    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v4, v3, :cond_3

    .line 202
    :cond_0
    const/16 v2, 0xff

    .line 203
    const/16 v1, 0x578

    .line 204
    const/16 v0, 0x400

    .line 211
    :cond_1
    :goto_0
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBufferSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minBufferSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxBufferSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    if-lt v4, v2, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    if-gt v4, v1, :cond_5

    .line 214
    const-string v3, "[BIP]"

    const-string v4, "buffer size is normal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v3, 0x0

    .line 231
    :cond_2
    :goto_1
    return v3

    .line 205
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 206
    :cond_4
    const/16 v2, 0xff

    .line 207
    const/16 v1, 0x578

    .line 208
    const/16 v0, 0x400

    goto :goto_0

    .line 217
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    if-le v4, v1, :cond_6

    .line 218
    const-string v4, "[BIP]"

    const-string v5, "buffer size is too large, change it to maximum value"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    .line 226
    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    if-ge v4, v7, :cond_2

    .line 227
    const-string v4, "[BIP]"

    const-string v5, "buffer size is smaller than 255, change it to MAX_APDU_SIZE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput v7, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    goto :goto_1

    .line 221
    :cond_6
    const-string v4, "[BIP]"

    const-string v5, "buffer size is too small, change it to default value"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    goto :goto_2
.end method

.method public clearChannelBuffer(Z)V
    .locals 3
    .param p1, "resetBuffer"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mTxBuffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 191
    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 192
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    .line 193
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mTxBufferCount:I

    .line 194
    return-void

    .line 188
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    .line 189
    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mTxBuffer:[B

    goto :goto_0
.end method

.method public abstract closeChannel()I
.end method

.method public dataAvailable(I)V
    .locals 8
    .param p1, "bufferSize"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 134
    .local v1, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 135
    .local v0, "additionalInfo":[B
    const/16 v2, -0x48

    aput-byte v2, v0, v4

    .line 136
    aput-byte v6, v0, v5

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/Channel;->getChannelId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 138
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 140
    const/4 v2, 0x4

    const/16 v3, -0x49

    aput-byte v3, v0, v2

    .line 141
    const/4 v2, 0x5

    aput-byte v5, v0, v2

    .line 143
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 144
    const/4 v2, -0x1

    aput-byte v2, v0, v7

    .line 149
    :goto_0
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 150
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 151
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 152
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 153
    const-string v2, "onEventDownload for dataAvailable"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 155
    return-void

    .line 146
    :cond_0
    int-to-byte v2, p1

    aput-byte v2, v0, v7

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    return v0
.end method

.method public getChannelStatus()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    return v0
.end method

.method public abstract getTxAvailBufferSize()I
.end method

.method public abstract openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
.end method

.method public abstract receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I
.end method

.method public abstract receiveData(I)Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
.end method

.method protected declared-synchronized requestStop()V
    .locals 3

    .prologue
    .line 238
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z

    .line 239
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendData([BI)I
.end method
