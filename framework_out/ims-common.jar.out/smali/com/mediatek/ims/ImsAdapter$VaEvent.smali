.class public Lcom/mediatek/ims/ImsAdapter$VaEvent;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VaEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0xa000


# instance fields
.field private data:[B

.field private data_len:I

.field private event_max_data_len:I

.field private mPhoneId:I

.field private read_offset:I

.field private request_id:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rid"    # I

    .prologue
    .line 82
    const v0, 0xa000

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(III)V

    .line 83
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rid"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    .line 73
    const v0, 0xa000

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 93
    iput p1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    .line 94
    iput p2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->request_id:I

    .line 95
    iput p3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 96
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    .line 97
    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 98
    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 99
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "ret":I
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 221
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 222
    monitor-exit p0

    .line 223
    return v0

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 227
    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 238
    :goto_0
    return-object v1

    .line 231
    :cond_0
    new-array v1, p1, [B

    .line 233
    .local v1, "ret":[B
    monitor-enter p0

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 236
    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    return-object v0
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    return v0
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "ret":I
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 202
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 203
    monitor-exit p0

    .line 204
    return v0

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    return v0
.end method

.method public getRequestID()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->request_id:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "ret":I
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 211
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 212
    monitor-exit p0

    .line 213
    return v0

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 243
    new-array v0, p1, [B

    .line 245
    .local v0, "buf":[B
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 247
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 248
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 131
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 132
    const/4 v0, -0x1

    .line 140
    :goto_0
    return v0

    .line 135
    :cond_0
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 138
    monitor-exit p0

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBytes([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 168
    array-length v0, p1

    .line 170
    .local v0, "len":I
    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    if-le v0, v2, :cond_0

    .line 171
    const/4 v1, -0x1

    .line 179
    :goto_0
    return v1

    .line 174
    :cond_0
    monitor-enter p0

    .line 175
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 176
    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 177
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putInt(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 102
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_0

    .line 103
    const/4 v1, -0x1

    .line 112
    :goto_0
    return v1

    .line 106
    :cond_0
    monitor-enter p0

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 109
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    monitor-exit p0

    .line 112
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putShort(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 116
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 117
    const/4 v1, -0x1

    .line 127
    :goto_0
    return v1

    .line 120
    :cond_0
    monitor-enter p0

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 123
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_1
    monitor-exit p0

    .line 127
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 144
    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v5, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    sub-int/2addr v5, p2

    if-le v4, v5, :cond_0

    .line 145
    const/4 v3, -0x1

    .line 164
    :goto_0
    return v3

    .line 148
    :cond_0
    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 150
    .local v2, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 151
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v6, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-static {v2, v4, v5, v6, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 152
    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 162
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v2    # "s":[B
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 154
    .restart local v2    # "s":[B
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, p2, v4

    .line 155
    .local v1, "remain":I
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v6, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 156
    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 158
    iget-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v5, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 159
    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
