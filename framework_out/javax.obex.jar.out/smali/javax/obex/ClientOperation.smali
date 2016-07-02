.class public final Ljavax/obex/ClientOperation;
.super Ljava/lang/Object;
.source "ClientOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# instance fields
.field private mEndOfBodySent:Z

.field private mExceptionMessage:Ljava/lang/String;

.field private mGetFinalFlag:Z

.field private mGetOperation:Z

.field private mInputOpen:Z

.field private mMaxPacketSize:I

.field private mOperationDone:Z

.field private mParent:Ljavax/obex/ClientSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateInputOpen:Z

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mReplyHeader:Ljavax/obex/HeaderSet;

.field private mRequestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V
    .locals 7
    .param p1, "maxSize"    # I
    .param p2, "p"    # Ljavax/obex/ClientSession;
    .param p3, "header"    # Ljavax/obex/HeaderSet;
    .param p4, "type"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    .line 91
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 93
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 94
    iput p1, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    .line 95
    iput-boolean p4, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    .line 96
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mGetFinalFlag:Z

    .line 98
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 99
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 100
    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 101
    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 103
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    .line 105
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    .line 107
    invoke-virtual {p3}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 109
    .local v0, "headerList":[I
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p3, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 118
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    :cond_1
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 124
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 129
    :cond_2
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    new-array v3, v6, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 131
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 135
    :cond_3
    return-void
.end method

.method private sendRequest(I)Z
    .locals 14
    .param p1, "opCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x49

    const/16 v12, 0x48

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 418
    const/4 v5, 0x0

    .line 419
    .local v5, "returnValue":Z
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 420
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, -0x1

    .line 421
    .local v1, "bodyLength":I
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v10, v9}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v3

    .line 422
    .local v3, "headerArray":[B
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v10, :cond_0

    .line 423
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v1

    .line 434
    :cond_0
    array-length v10, v3

    add-int/lit8 v10, v10, 0x3

    iget v11, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    if-le v10, v11, :cond_7

    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, "end":I
    const/4 v7, 0x0

    .line 439
    .local v7, "start":I
    :goto_0
    array-length v10, v3

    if-eq v2, v10, :cond_6

    .line 441
    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v10, v10, -0x3

    invoke-static {v3, v7, v10}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    move-result v2

    .line 444
    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    .line 445
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 446
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->abort()V

    .line 447
    const-string v9, "Header larger then can be sent in a packet"

    iput-object v9, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 448
    iput-boolean v8, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 450
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-eqz v8, :cond_1

    .line 451
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateInputStream;->close()V

    .line 454
    :cond_1
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_2

    .line 455
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->close()V

    .line 457
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "OBEX Packet exceeds max packet size"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 460
    :cond_3
    sub-int v10, v2, v7

    new-array v6, v10, [B

    .line 461
    .local v6, "sendHeader":[B
    array-length v10, v6

    invoke-static {v3, v7, v6, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 462
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v10, p1, v6, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 549
    .end local v2    # "end":I
    .end local v6    # "sendHeader":[B
    .end local v7    # "start":I
    :cond_4
    :goto_1
    return v8

    .line 466
    .restart local v2    # "end":I
    .restart local v6    # "sendHeader":[B
    .restart local v7    # "start":I
    :cond_5
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v10, v10, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v11, 0x90

    if-ne v10, v11, :cond_4

    .line 470
    move v7, v2

    .line 471
    goto :goto_0

    .line 473
    .end local v6    # "sendHeader":[B
    :cond_6
    if-lez v1, :cond_4

    move v8, v9

    .line 474
    goto :goto_1

    .line 479
    .end local v2    # "end":I
    .end local v7    # "start":I
    :cond_7
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 482
    if-lez v1, :cond_9

    .line 488
    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x6

    if-le v1, v10, :cond_8

    .line 489
    const/4 v5, 0x1

    .line 491
    iget v10, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v11, v3

    sub-int/2addr v10, v11

    add-int/lit8 v1, v10, -0x6

    .line 494
    :cond_8
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10, v1}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    move-result-object v0

    .line 501
    .local v0, "body":[B
    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v10}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v5, :cond_b

    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v10, :cond_b

    and-int/lit16 v10, p1, 0x80

    if-eqz v10, :cond_b

    .line 503
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 504
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    .line 509
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 510
    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 511
    int-to-byte v10, v1

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 513
    if-eqz v0, :cond_9

    .line 514
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 518
    .end local v0    # "body":[B
    :cond_9
    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v10, :cond_a

    if-gtz v1, :cond_a

    iget-boolean v10, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v10, :cond_a

    .line 520
    and-int/lit16 v10, p1, 0x80

    if-nez v10, :cond_c

    .line 521
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 528
    :goto_3
    const/4 v1, 0x3

    .line 529
    int-to-byte v9, v8

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    int-to-byte v9, v1

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 533
    :cond_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-nez v9, :cond_d

    .line 534
    iget-object v9, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v10, 0x0

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v9, p1, v10, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v5

    .line 537
    goto :goto_1

    .line 506
    .restart local v0    # "body":[B
    :cond_b
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 523
    .end local v0    # "body":[B
    :cond_c
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    iput-boolean v9, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    goto :goto_3

    .line 539
    :cond_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-lez v9, :cond_e

    iget-object v9, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v12, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v9, p1, v10, v11, v12}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 546
    :cond_e
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_f

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_f

    .line 547
    const/4 v5, 0x1

    :cond_f
    move v8, v5

    .line 549
    goto/16 :goto_1
.end method

.method private declared-synchronized startProcessing()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x90

    .line 560
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v1, :cond_0

    .line 561
    new-instance v1, Ljavax/obex/PrivateInputStream;

    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 563
    :cond_0
    const/4 v0, 0x1

    .line 565
    .local v0, "more":Z
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v1, :cond_6

    .line 566
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_3

    .line 567
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mGetFinalFlag:Z

    if-nez v1, :cond_4

    .line 568
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 569
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_1

    .line 570
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_0

    .line 573
    :cond_1
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_2

    .line 574
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x83

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 576
    :cond_2
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_3

    .line 577
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 580
    :cond_4
    const/16 v1, 0x83

    :try_start_1
    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    .line 582
    if-eqz v0, :cond_5

    .line 583
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FINAL_GET forced but data did not fit into single packet!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    .end local v0    # "more":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 586
    .restart local v0    # "more":Z
    :cond_5
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_1

    .line 591
    :cond_6
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_7

    .line 592
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 593
    :goto_2
    if-eqz v0, :cond_7

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_7

    .line 594
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_2

    .line 599
    :cond_7
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_8

    .line 600
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x82

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 603
    :cond_8
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_3

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private validateConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 405
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->startProcessing()V

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x90

    .line 154
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 156
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_0
    :try_start_1
    const-string v0, "Operation aborted"

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 161
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v0, v1, :cond_2

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 167
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v1, 0xff

    const/4 v2, 0x0

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 169
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    .line 170
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response code from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 176
    :cond_2
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 325
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 326
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 327
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    .line 328
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 7
    .param p1, "sendEmpty"    # Z
    .param p2, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x90

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 620
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v2, :cond_5

    .line 621
    if-eqz p2, :cond_1

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_1

    .line 623
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x83

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 627
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_0

    .line 628
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 633
    :cond_1
    if-nez p2, :cond_4

    :try_start_1
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_4

    .line 636
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v1, :cond_2

    .line 637
    new-instance v1, Ljavax/obex/PrivateInputStream;

    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 640
    :cond_2
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mGetFinalFlag:Z

    if-nez v1, :cond_3

    .line 641
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 643
    :cond_3
    const/16 v1, 0x83

    :try_start_2
    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    .line 645
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_0

    .line 646
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_0

    .line 651
    :cond_4
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_9

    move v0, v1

    .line 652
    goto :goto_0

    .line 656
    :cond_5
    if-nez p2, :cond_7

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_7

    .line 658
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 659
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 661
    :cond_6
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    goto :goto_0

    .line 663
    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_8

    move v0, v1

    .line 665
    goto :goto_0

    .line 667
    :cond_8
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_9

    move v0, v1

    .line 668
    goto :goto_0

    :cond_9
    move v0, v1

    .line 672
    goto :goto_0
.end method

.method public ensureNotDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has completed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    return-void
.end method

.method public ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 389
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 307
    .local v0, "headerArray":[B
    array-length v1, v0

    return v1
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 231
    :try_start_0
    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 233
    .local v1, "temp":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 239
    .end local v1    # "temp":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 236
    .restart local v1    # "temp":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 238
    .end local v1    # "temp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getMaxPacketSize()I
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReceivedHeader()Ljavax/obex/HeaderSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 340
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    .line 193
    :cond_0
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    .line 196
    :cond_1
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public noBodyHeader()V
    .locals 0

    .prologue
    .line 767
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 252
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v0, :cond_2

    .line 256
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    .line 263
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 265
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    return-object v0

    .line 258
    :cond_2
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Ljavax/obex/PrivateInputStream;

    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    goto :goto_0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 285
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureNotDone()V

    .line 287
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more output streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 295
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 297
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    return-object v0
.end method

.method public sendHeaders(Ljavax/obex/HeaderSet;)V
    .locals 5
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 355
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_0

    .line 356
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Operation has already exchanged all data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_0
    if-nez p1, :cond_1

    .line 360
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_1
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 364
    .local v0, "headerList":[I
    if-eqz v0, :cond_2

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 366
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setGetFinalFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Ljavax/obex/ClientOperation;->mGetFinalFlag:Z

    .line 144
    return-void
.end method

.method public streamClosed(Z)V
    .locals 9
    .param p1, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v8, 0x83

    const/4 v7, 0x1

    const/16 v6, 0x90

    .line 682
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-nez v2, :cond_6

    .line 683
    if-nez p1, :cond_5

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_5

    .line 686
    const/4 v1, 0x1

    .line 688
    .local v1, "more":Z
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 689
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 690
    .local v0, "headerArray":[B
    array-length v2, v0

    if-gtz v2, :cond_0

    .line 691
    const/4 v1, 0x0

    .line 694
    .end local v0    # "headerArray":[B
    :cond_0
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_1

    .line 695
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 698
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_2

    .line 699
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_0

    .line 707
    :cond_2
    :goto_1
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_3

    .line 709
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    goto :goto_1

    .line 711
    :cond_3
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 764
    .end local v1    # "more":Z
    :cond_4
    :goto_2
    return-void

    .line 712
    :cond_5
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_4

    .line 714
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_2

    .line 717
    :cond_6
    if-eqz p1, :cond_a

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_a

    .line 722
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_7

    .line 723
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 726
    :cond_7
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_8

    .line 727
    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 731
    :cond_8
    :goto_3
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_9

    .line 732
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v2, v8, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    goto :goto_3

    .line 734
    :cond_9
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_2

    .line 735
    :cond_a
    if-nez p1, :cond_4

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_4

    .line 739
    const/4 v1, 0x1

    .line 741
    .restart local v1    # "more":Z
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 742
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 743
    .restart local v0    # "headerArray":[B
    array-length v2, v0

    if-gtz v2, :cond_b

    .line 744
    const/4 v1, 0x0

    .line 747
    .end local v0    # "headerArray":[B
    :cond_b
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v2, :cond_c

    .line 748
    new-instance v2, Ljavax/obex/PrivateInputStream;

    invoke-direct {v2, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 750
    :cond_c
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_d

    .line 751
    const/4 v1, 0x0

    .line 753
    :cond_d
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 754
    :goto_4
    if-eqz v1, :cond_e

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_e

    .line 755
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_4

    .line 757
    :cond_e
    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    .line 759
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v2, v6, :cond_4

    .line 760
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto/16 :goto_2
.end method
