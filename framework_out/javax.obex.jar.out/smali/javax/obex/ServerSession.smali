.class public final Ljavax/obex/ServerSession;
.super Ljavax/obex/ObexSession;
.source "ServerSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ServerSession"


# instance fields
.field private mClosed:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mOutput:Ljava/io/OutputStream;

.field private mProcessThread:Ljava/lang/Thread;

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method public constructor <init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V
    .locals 1
    .param p1, "trans"    # Ljavax/obex/ObexTransport;
    .param p2, "handler"    # Ljavax/obex/ServerRequestHandler;
    .param p3, "auth"    # Ljavax/obex/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    .line 73
    iput-object p3, p0, Ljavax/obex/ServerSession;->mAuthenticator:Ljavax/obex/Authenticator;

    .line 74
    iput-object p1, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 75
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    .line 76
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    .line 77
    iput-object p2, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    .line 78
    const/16 v0, 0x100

    iput v0, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ServerSession;->mClosed:Z

    .line 81
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    .line 82
    iget-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method private handleAbortRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v0, 0xa0

    .line 161
    .local v0, "code":I
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    .line 162
    .local v4, "request":Ljavax/obex/HeaderSet;
    new-instance v3, Ljavax/obex/HeaderSet;

    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    .line 164
    .local v3, "reply":Ljavax/obex/HeaderSet;
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 165
    .local v2, "length":I
    shl-int/lit8 v5, v2, 0x8

    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v2, v5, v6

    .line 166
    const v5, 0xfffe

    if-le v2, v5, :cond_0

    .line 167
    const/16 v0, 0xce

    .line 176
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 177
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 170
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v5, v4, v3}, Ljavax/obex/ServerRequestHandler;->onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v0

    .line 173
    const-string v5, "Obex ServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAbort request handler return value- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, v0}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v0

    goto :goto_0
.end method

.method private handleConnectRequest()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    const/16 v17, 0x7

    .line 528
    .local v17, "totalLength":I
    const/4 v8, 0x0

    .line 529
    .local v8, "head":[B
    const/4 v5, -0x1

    .line 530
    .local v5, "code":I
    new-instance v15, Ljavax/obex/HeaderSet;

    invoke-direct {v15}, Ljavax/obex/HeaderSet;-><init>()V

    .line 531
    .local v15, "request":Ljavax/obex/HeaderSet;
    new-instance v14, Ljavax/obex/HeaderSet;

    invoke-direct {v14}, Ljavax/obex/HeaderSet;-><init>()V

    .line 538
    .local v14, "reply":Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 539
    .local v13, "packetLength":I
    shl-int/lit8 v19, v13, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v20

    add-int v13, v19, v20

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v18

    .line 541
    .local v18, "version":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 542
    .local v7, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v19, v0

    const v20, 0xfffe

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 547
    const v19, 0xfffe

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    .line 550
    :cond_0
    const v19, 0xfffe

    move/from16 v0, v19

    if-le v13, v0, :cond_3

    .line 551
    const/16 v5, 0xce

    .line 552
    const/16 v17, 0x7

    .line 627
    :cond_1
    :goto_0
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v12

    .line 635
    .local v12, "length":[B
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 636
    .local v16, "sendData":[B
    const/16 v19, 0x0

    int-to-byte v0, v5

    move/from16 v20, v0

    aput-byte v20, v16, v19

    .line 637
    const/16 v19, 0x1

    const/16 v20, 0x2

    aget-byte v20, v12, v20

    aput-byte v20, v16, v19

    .line 638
    const/16 v19, 0x2

    const/16 v20, 0x3

    aget-byte v20, v12, v20

    aput-byte v20, v16, v19

    .line 639
    const/16 v19, 0x3

    const/16 v20, 0x10

    aput-byte v20, v16, v19

    .line 640
    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-byte v20, v16, v19

    .line 641
    const/16 v19, 0x5

    const/16 v20, -0x1

    aput-byte v20, v16, v19

    .line 642
    const/16 v19, 0x6

    const/16 v20, -0x2

    aput-byte v20, v16, v19

    .line 644
    if-eqz v8, :cond_2

    .line 645
    const/16 v19, 0x0

    const/16 v20, 0x7

    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 648
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 650
    return-void

    .line 554
    .end local v12    # "length":[B
    .end local v16    # "sendData":[B
    :cond_3
    const/16 v19, 0x7

    move/from16 v0, v19

    if-le v13, v0, :cond_5

    .line 555
    add-int/lit8 v19, v13, -0x7

    move/from16 v0, v19

    new-array v9, v0, [B

    .line 556
    .local v9, "headers":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 558
    .local v4, "bytesReceived":I
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v4, v0, :cond_4

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    array-length v0, v9

    move/from16 v20, v0

    sub-int v20, v20, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    add-int v4, v4, v19

    goto :goto_1

    .line 563
    :cond_4
    invoke-static {v15, v9}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    .line 566
    .end local v4    # "bytesReceived":I
    .end local v9    # "headers":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-eqz v19, :cond_9

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 572
    :goto_2
    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 573
    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v19

    if-nez v19, :cond_6

    .line 574
    const/16 v5, 0xc1

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 578
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 581
    :cond_7
    const/16 v19, 0xc1

    move/from16 v0, v19

    if-eq v5, v0, :cond_1

    .line 582
    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 583
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 584
    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 585
    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 587
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v15, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 588
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 592
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v14}, Ljavax/obex/ServerRequestHandler;->onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v5

    .line 593
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v5

    .line 595
    iget-object v0, v14, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 596
    const/16 v19, 0x10

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    .line 597
    iget-object v0, v14, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x10

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 601
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v10

    .line 602
    .local v10, "id":J
    const-wide/16 v20, -0x1

    cmp-long v19, v10, v20

    if-nez v19, :cond_b

    .line 603
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 608
    :goto_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v14, v0}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v8

    .line 609
    array-length v0, v8

    move/from16 v19, v0

    add-int v17, v17, v19

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 612
    const/16 v17, 0x7

    .line 613
    const/4 v8, 0x0

    .line 614
    const/16 v5, 0xd0

    goto/16 :goto_0

    .line 569
    .end local v10    # "id":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_2

    .line 599
    :cond_a
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 616
    :catch_0
    move-exception v6

    .line 617
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    const/16 v17, 0x7

    .line 619
    const/4 v8, 0x0

    .line 620
    const/16 v5, 0xd0

    goto/16 :goto_0

    .line 605
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "id":J
    :cond_b
    :try_start_2
    invoke-static {v10, v11}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mConnectionID:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method private handleDisconnectRequest()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    const/16 v3, 0xa0

    .line 419
    .local v3, "code":I
    const/4 v13, 0x3

    .line 420
    .local v13, "totalLength":I
    const/4 v5, 0x0

    .line 422
    .local v5, "head":[B
    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    .line 423
    .local v12, "request":Ljavax/obex/HeaderSet;
    new-instance v10, Ljavax/obex/HeaderSet;

    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    .line 425
    .local v10, "reply":Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 426
    .local v7, "length":I
    shl-int/lit8 v14, v7, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v15

    add-int v7, v14, v15

    .line 428
    const v14, 0xfffe

    if-le v7, v14, :cond_2

    .line 429
    const/16 v3, 0xce

    .line 430
    const/4 v13, 0x3

    .line 493
    :cond_0
    :goto_0
    if-eqz v5, :cond_a

    .line 494
    array-length v14, v5

    add-int/lit8 v14, v14, 0x3

    new-array v11, v14, [B

    .line 498
    .local v11, "replyData":[B
    :goto_1
    const/4 v14, 0x0

    int-to-byte v15, v3

    aput-byte v15, v11, v14

    .line 499
    const/4 v14, 0x1

    shr-int/lit8 v15, v13, 0x8

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    .line 500
    const/4 v14, 0x2

    int-to-byte v15, v13

    aput-byte v15, v11, v14

    .line 501
    if-eqz v5, :cond_1

    .line 502
    const/4 v14, 0x0

    const/4 v15, 0x3

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v5, v14, v11, v15, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 508
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v14, v11}, Ljava/io/OutputStream;->write([B)V

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 510
    .end local v11    # "replyData":[B
    :goto_2
    return-void

    .line 432
    :cond_2
    const/4 v14, 0x3

    if-le v7, v14, :cond_4

    .line 433
    add-int/lit8 v14, v7, -0x3

    new-array v6, v14, [B

    .line 434
    .local v6, "headers":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 436
    .local v2, "bytesReceived":I
    :goto_3
    array-length v14, v6

    if-eq v2, v14, :cond_3

    .line 437
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    array-length v15, v6

    sub-int/2addr v15, v2

    invoke-virtual {v14, v6, v2, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    add-int/2addr v2, v14

    goto :goto_3

    .line 441
    :cond_3
    invoke-static {v12, v6}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    .line 444
    .end local v2    # "bytesReceived":I
    .end local v6    # "headers":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v14}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_8

    iget-object v14, v12, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v14, :cond_8

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v15, v12, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v15}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 450
    :goto_4
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v14, :cond_6

    .line 451
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v14

    if-nez v14, :cond_5

    .line 452
    const/16 v3, 0xc1

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    const/4 v15, 0x1

    iget-object v0, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 456
    :cond_5
    const/4 v14, 0x0

    iput-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 459
    :cond_6
    const/16 v14, 0xc1

    if-eq v3, v14, :cond_0

    .line 461
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v14, :cond_7

    .line 462
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 463
    const/4 v14, 0x0

    iput-object v14, v12, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 467
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v14, v12, v10}, Ljavax/obex/ServerRequestHandler;->onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v14}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v8

    .line 474
    .local v8, "id":J
    const-wide/16 v14, -0x1

    cmp-long v14, v8, v14

    if-nez v14, :cond_9

    .line 475
    const/4 v14, 0x0

    iput-object v14, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 480
    :goto_5
    const/4 v14, 0x0

    invoke-static {v10, v14}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v5

    .line 481
    array-length v14, v5

    add-int/2addr v13, v14

    .line 483
    move-object/from16 v0, p0

    iget v14, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    if-le v13, v14, :cond_0

    .line 484
    const/4 v13, 0x3

    .line 485
    const/4 v5, 0x0

    .line 486
    const/16 v3, 0xd0

    goto/16 :goto_0

    .line 447
    .end local v8    # "id":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_4

    .line 468
    :catch_0
    move-exception v4

    .line 469
    .local v4, "e":Ljava/lang/Exception;
    const/16 v14, 0xd0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_2

    .line 477
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "id":J
    :cond_9
    invoke-static {v8, v9}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v14

    iput-object v14, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_5

    .line 496
    .end local v8    # "id":J
    :cond_a
    const/4 v14, 0x3

    new-array v11, v14, [B

    .restart local v11    # "replyData":[B
    goto/16 :goto_1
.end method

.method private handleGetRequest(I)V
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljavax/obex/ServerOperation;

    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    .line 240
    .local v0, "op":Ljavax/obex/ServerOperation;
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onGet(Ljavax/obex/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    .line 242
    .local v7, "response":I
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v7    # "response":I
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v6

    .line 246
    .local v6, "e":Ljava/lang/Exception;
    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto :goto_0
.end method

.method private handlePutRequest(I)V
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljavax/obex/ServerOperation;

    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    .line 195
    .local v0, "op":Ljavax/obex/ServerOperation;
    const/4 v7, -0x1

    .line 197
    .local v7, "response":I
    :try_start_0
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljavax/obex/ServerOperation;->isValidBody()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v2, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v2, v3}, Ljavax/obex/ServerRequestHandler;->onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    .line 203
    :goto_0
    const/16 v1, 0xa0

    if-eq v7, v1, :cond_2

    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_2

    .line 204
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 222
    :cond_0
    :goto_1
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onPut(Ljavax/obex/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    goto :goto_0

    .line 205
    :cond_2
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_0

    .line 207
    :goto_2
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v1, :cond_3

    .line 208
    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 212
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Ljava/lang/Exception;
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_0

    .line 219
    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto :goto_1

    .line 210
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleSetPathRequest()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/16 v19, 0x3

    .line 296
    .local v19, "totalLength":I
    const/4 v11, 0x0

    .line 297
    .local v11, "head":[B
    const/4 v6, -0x1

    .line 299
    .local v6, "code":I
    new-instance v18, Ljavax/obex/HeaderSet;

    invoke-direct/range {v18 .. v18}, Ljavax/obex/HeaderSet;-><init>()V

    .line 300
    .local v18, "request":Ljavax/obex/HeaderSet;
    new-instance v16, Ljavax/obex/HeaderSet;

    invoke-direct/range {v16 .. v16}, Ljavax/obex/HeaderSet;-><init>()V

    .line 302
    .local v16, "reply":Ljavax/obex/HeaderSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 303
    .local v13, "length":I
    shl-int/lit8 v20, v13, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v21

    add-int v13, v20, v21

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 305
    .local v10, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 307
    .local v7, "constants":I
    const v20, 0xfffe

    move/from16 v0, v20

    if-le v13, v0, :cond_2

    .line 308
    const/16 v6, 0xce

    .line 309
    const/16 v19, 0x3

    .line 393
    :cond_0
    :goto_0
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 394
    .local v17, "replyData":[B
    const/16 v20, 0x0

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 395
    const/16 v20, 0x1

    shr-int/lit8 v21, v19, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 396
    const/16 v20, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    .line 397
    if-eqz v11, :cond_1

    .line 398
    const/16 v20, 0x0

    const/16 v21, 0x3

    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 404
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 406
    .end local v17    # "replyData":[B
    :goto_1
    return-void

    .line 311
    :cond_2
    const/16 v20, 0x5

    move/from16 v0, v20

    if-le v13, v0, :cond_5

    .line 312
    add-int/lit8 v20, v13, -0x5

    move/from16 v0, v20

    new-array v12, v0, [B

    .line 313
    .local v12, "headers":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 315
    .local v5, "bytesReceived":I
    :goto_2
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    array-length v0, v12

    move/from16 v21, v0

    sub-int v21, v21, v5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    add-int v5, v5, v20

    goto :goto_2

    .line 320
    :cond_3
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_9

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 328
    :goto_3
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 329
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v20

    if-nez v20, :cond_4

    .line 330
    const/16 v6, 0xc1

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    .line 334
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 338
    .end local v5    # "bytesReceived":I
    .end local v12    # "headers":[B
    :cond_5
    const/16 v20, 0xc1

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    .line 341
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 343
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 344
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 346
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 347
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 349
    :cond_6
    const/4 v4, 0x0

    .line 350
    .local v4, "backup":Z
    const/4 v8, 0x1

    .line 351
    .local v8, "create":Z
    and-int/lit8 v20, v10, 0x1

    if-eqz v20, :cond_7

    .line 352
    const/4 v4, 0x1

    .line 354
    :cond_7
    and-int/lit8 v20, v10, 0x2

    if-eqz v20, :cond_8

    .line 355
    const/4 v8, 0x0

    .line 359
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4, v8}, Ljavax/obex/ServerRequestHandler;->onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v6

    .line 367
    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 368
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    .line 369
    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 374
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v14

    .line 375
    .local v14, "id":J
    const-wide/16 v20, -0x1

    cmp-long v20, v14, v20

    if-nez v20, :cond_b

    .line 376
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 381
    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v11

    .line 382
    array-length v0, v11

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 385
    const/16 v19, 0x3

    .line 386
    const/4 v11, 0x0

    .line 387
    const/16 v6, 0xd0

    goto/16 :goto_0

    .line 325
    .end local v4    # "backup":Z
    .end local v8    # "create":Z
    .end local v14    # "id":J
    .restart local v5    # "bytesReceived":I
    .restart local v12    # "headers":[B
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_3

    .line 360
    .end local v5    # "bytesReceived":I
    .end local v12    # "headers":[B
    .restart local v4    # "backup":Z
    .restart local v8    # "create":Z
    :catch_0
    move-exception v9

    .line 361
    .local v9, "e":Ljava/lang/Exception;
    const/16 v20, 0xd0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_1

    .line 371
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    goto :goto_4

    .line 378
    .restart local v14    # "id":J
    :cond_b
    invoke-static {v14, v15}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_5
.end method

.method private validateResponseCode(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/16 v0, 0xd0

    .line 683
    const/16 v1, 0xa0

    if-lt p1, v1, :cond_1

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_1

    .line 702
    .end local p1    # "code":I
    :cond_0
    :goto_0
    return p1

    .line 686
    .restart local p1    # "code":I
    :cond_1
    const/16 v1, 0xb0

    if-lt p1, v1, :cond_2

    const/16 v1, 0xb5

    if-le p1, v1, :cond_0

    .line 690
    :cond_2
    const/16 v1, 0xc0

    if-lt p1, v1, :cond_3

    const/16 v1, 0xcf

    if-le p1, v1, :cond_0

    .line 694
    :cond_3
    if-lt p1, v0, :cond_4

    const/16 v1, 0xd5

    if-le p1, v1, :cond_0

    .line 698
    :cond_4
    const/16 v1, 0xe0

    if-lt p1, v1, :cond_5

    const/16 v1, 0xe1

    if-le p1, v1, :cond_0

    :cond_5
    move p1, v0

    .line 702
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v0}, Ljavax/obex/ServerRequestHandler;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 663
    iget-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 664
    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->close()V

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerSession;->mClosed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    monitor-exit p0

    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 666
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v5, p0, Ljavax/obex/ServerSession;->mClosed:Z

    if-nez v5, :cond_0

    .line 94
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 95
    .local v4, "requestType":I
    sparse-switch v4, :sswitch_data_0

    .line 133
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 134
    .local v3, "length":I
    shl-int/lit8 v5, v3, 0x8

    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v3, v5, v6

    .line 135
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 136
    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "i":I
    .end local v3    # "length":I
    :sswitch_0
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleConnectRequest()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 142
    .end local v4    # "requestType":I
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    invoke-virtual {p0}, Ljavax/obex/ServerSession;->close()V

    .line 148
    return-void

    .line 101
    .restart local v4    # "requestType":I
    :sswitch_1
    :try_start_1
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleDisconnectRequest()V

    .line 102
    const/4 v0, 0x1

    .line 103
    goto :goto_0

    .line 107
    :sswitch_2
    invoke-direct {p0, v4}, Ljavax/obex/ServerSession;->handleGetRequest(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 144
    .end local v4    # "requestType":I
    :catch_1
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "requestType":I
    :sswitch_3
    :try_start_2
    invoke-direct {p0, v4}, Ljavax/obex/ServerSession;->handlePutRequest(I)V

    goto :goto_0

    .line 116
    :sswitch_4
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleSetPathRequest()V

    goto :goto_0

    .line 119
    :sswitch_5
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleAbortRequest()V

    goto :goto_0

    .line 123
    :sswitch_6
    const/4 v0, 0x1

    .line 124
    goto :goto_0

    .line 138
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_1
    const/16 v5, 0xd1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_6
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_3
        0x83 -> :sswitch_2
        0x85 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method public sendResponse(I[B)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 257
    const/4 v2, 0x3

    .line 258
    .local v2, "totalLength":I
    const/4 v0, 0x0

    .line 259
    .local v0, "data":[B
    iget-object v1, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    .line 260
    .local v1, "op":Ljava/io/OutputStream;
    if-nez v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 264
    :cond_0
    if-eqz p2, :cond_1

    .line 265
    array-length v3, p2

    add-int/2addr v2, v3

    .line 266
    new-array v0, v2, [B

    .line 267
    int-to-byte v3, p1

    aput-byte v3, v0, v5

    .line 268
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 269
    int-to-byte v3, v2

    aput-byte v3, v0, v6

    .line 270
    const/4 v3, 0x3

    array-length v4, p2

    invoke-static {p2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 277
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 278
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 272
    :cond_1
    new-array v0, v2, [B

    .line 273
    int-to-byte v3, p1

    aput-byte v3, v0, v5

    .line 274
    aput-byte v5, v0, v4

    .line 275
    int-to-byte v3, v2

    aput-byte v3, v0, v6

    goto :goto_1
.end method
