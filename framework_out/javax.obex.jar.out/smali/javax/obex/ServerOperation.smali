.class public final Ljavax/obex/ServerOperation;
.super Ljava/lang/Object;
.source "ServerOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# instance fields
.field public finalBitSet:Z

.field public isAborted:Z

.field private mClosed:Z

.field private mExceptionString:Ljava/lang/String;

.field private mGetOperation:Z

.field private mHasBody:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mParent:Ljavax/obex/ServerSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mRequestFinished:Z

.field private mResponseSize:I

.field private mSendBodyHeader:Z

.field public replyHeader:Ljavax/obex/HeaderSet;

.field public requestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V
    .locals 9
    .param p1, "p"    # Ljavax/obex/ServerSession;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "request"    # I
    .param p4, "maxSize"    # I
    .param p5, "listen"    # Ljavax/obex/ServerRequestHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    .line 106
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 107
    iput-object p1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    .line 108
    iput-object p2, p0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    .line 109
    iput p4, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    .line 110
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 111
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    .line 112
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    .line 113
    new-instance v4, Ljavax/obex/PrivateInputStream;

    invoke-direct {v4, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 114
    const/4 v4, 0x3

    iput v4, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    .line 115
    iput-object p5, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    .line 116
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    .line 117
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    .line 118
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 124
    const/4 v4, 0x2

    if-eq p3, v4, :cond_0

    const/16 v4, 0x82

    if-ne p3, v4, :cond_3

    .line 128
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    .line 133
    and-int/lit16 v4, p3, 0x80

    if-nez v4, :cond_2

    .line 134
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 155
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 156
    .local v3, "length":I
    shl-int/lit8 v4, v3, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    add-int v3, v4, v5

    .line 161
    const v4, 0xfffe

    if-le v3, v4, :cond_6

    .line 162
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    const/16 v5, 0xce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 163
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Packet received was too large"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    .end local v3    # "length":I
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 137
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_0

    .line 139
    :cond_3
    const/4 v4, 0x3

    if-eq p3, v4, :cond_4

    const/16 v4, 0x83

    if-ne p3, v4, :cond_5

    .line 143
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    .line 146
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 148
    const/16 v4, 0x83

    if-ne p3, v4, :cond_1

    .line 149
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_0

    .line 152
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ServerOperation can not handle such request"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    .restart local v3    # "length":I
    :cond_6
    const/4 v4, 0x3

    if-le v3, v4, :cond_d

    .line 170
    add-int/lit8 v4, v3, -0x3

    new-array v2, v4, [B

    .line 171
    .local v2, "data":[B
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 173
    .local v1, "bytesReceived":I
    :goto_1
    array-length v4, v2

    if-eq v1, v4, :cond_7

    .line 174
    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {p2, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 177
    :cond_7
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v4, v2}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v0

    .line 179
    .local v0, "body":[B
    if-eqz v0, :cond_8

    .line 180
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 183
    :cond_8
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v4}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v4, :cond_a

    .line 184
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v5}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 189
    :goto_2
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v4, :cond_b

    .line 190
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    invoke-virtual {v4, v5}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v4

    if-nez v4, :cond_b

    .line 191
    const-string v4, "Authentication Failed"

    iput-object v4, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 192
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    const/16 v5, 0xc1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 193
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 194
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 233
    .end local v0    # "body":[B
    .end local v1    # "bytesReceived":I
    .end local v2    # "data":[B
    :cond_9
    return-void

    .line 186
    .restart local v0    # "body":[B
    .restart local v1    # "bytesReceived":I
    .restart local v2    # "data":[B
    :cond_a
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_2

    .line 199
    :cond_b
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v4, :cond_c

    .line 200
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    invoke-virtual {v4, v5}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 202
    iget-object v4, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 203
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v5, 0x0

    iget-object v6, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v6, v6, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v7, 0x0

    iget-object v8, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v8, v8, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 205
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 206
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 210
    :cond_c
    if-eqz v0, :cond_f

    .line 211
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V

    .line 222
    .end local v0    # "body":[B
    .end local v1    # "bytesReceived":I
    .end local v2    # "data":[B
    :cond_d
    :goto_3
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v4, :cond_e

    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-nez v4, :cond_e

    .line 223
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 224
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-lez v4, :cond_d

    .line 230
    :cond_e
    :goto_4
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    if-nez v4, :cond_9

    .line 231
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    goto :goto_4

    .line 213
    .restart local v0    # "body":[B
    .restart local v1    # "bytesReceived":I
    .restart local v2    # "data":[B
    :cond_f
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v4, :cond_d

    .line 214
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 215
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-lez v4, :cond_f

    goto :goto_3
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 687
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .locals 4
    .param p1, "sendEmpty"    # Z
    .param p2, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 253
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v2, :cond_4

    .line 254
    iget-boolean v2, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v2, :cond_3

    .line 255
    if-eqz p1, :cond_0

    .line 256
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    monitor-exit p0

    return v0

    .line 259
    :cond_0
    :try_start_1
    iget v2, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 260
    :cond_1
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    .line 263
    goto :goto_0

    :cond_3
    move v0, v1

    .line 267
    goto :goto_0

    .line 270
    :cond_4
    const/16 v1, 0x90

    :try_start_2
    invoke-virtual {p0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public ensureNotDone()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
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
    .line 694
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    if-eqz v0, :cond_1

    .line 698
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_1
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .locals 6

    .prologue
    .line 617
    iget-object v1, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v1}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v2

    .line 618
    .local v2, "id":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 619
    iget-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    iput-object v4, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 624
    :goto_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 626
    .local v0, "headerArray":[B
    array-length v1, v0

    return v1

    .line 621
    .end local v0    # "headerArray":[B
    :cond_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v3}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v4

    iput-object v4, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_0
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 600
    :try_start_0
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 602
    .local v1, "temp":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 608
    .end local v1    # "temp":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 605
    .restart local v1    # "temp":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 607
    .end local v1    # "temp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getMaxPacketSize()I
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getHeaderLength()I

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
    .line 525
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 526
    iget-object v0, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidBody()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    return v0
.end method

.method public noBodyHeader()V
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    .line 728
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
    .line 645
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openInputStream()Ljava/io/InputStream;

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
    .line 677
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 636
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 656
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available, stream already opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    if-nez v0, :cond_1

    .line 661
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no  output streams available ,request not finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-nez v0, :cond_2

    .line 665
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    iput-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 667
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    .line 668
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

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
    .line 539
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_0
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 546
    .local v0, "headerList":[I
    if-eqz v0, :cond_1

    .line 547
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 548
    iget-object v2, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized sendReply(I)Z
    .locals 24
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 289
    .local v15, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v12

    .line 290
    .local v12, "id":J
    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-nez v19, :cond_3

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 296
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v9

    .line 297
    .local v9, "headerArray":[B
    const/4 v5, -0x1

    .line 298
    .local v5, "bodyLength":I
    const/4 v14, -0x1

    .line 300
    .local v14, "orginalBodyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v5

    .line 302
    move v14, v5

    .line 305
    :cond_0
    array-length v0, v9

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 307
    const/4 v8, 0x0

    .line 308
    .local v8, "end":I
    const/16 v17, 0x0

    .line 310
    .local v17, "start":I
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v8, v0, :cond_5

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    move-result v8

    .line 313
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    .line 315
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateInputStream;->close()V

    .line 321
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateOutputStream;->close()V

    .line 324
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    const/16 v20, 0xd0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 325
    new-instance v19, Ljava/io/IOException;

    const-string v20, "OBEX Packet exceeds max packet size"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v5    # "bodyLength":I
    .end local v8    # "end":I
    .end local v9    # "headerArray":[B
    .end local v12    # "id":J
    .end local v14    # "orginalBodyLength":I
    .end local v15    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "start":I
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 293
    .restart local v12    # "id":J
    .restart local v15    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    invoke-static {v12, v13}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto/16 :goto_0

    .line 327
    .restart local v5    # "bodyLength":I
    .restart local v8    # "end":I
    .restart local v9    # "headerArray":[B
    .restart local v14    # "orginalBodyLength":I
    .restart local v17    # "start":I
    :cond_4
    sub-int v19, v8, v17

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 328
    .local v16, "sendHeader":[B
    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    move/from16 v17, v8

    .line 332
    goto/16 :goto_1

    .line 334
    .end local v16    # "sendHeader":[B
    :cond_5
    if-lez v5, :cond_6

    .line 335
    const/16 v19, 0x1

    .line 502
    .end local v8    # "end":I
    .end local v17    # "start":I
    :goto_2
    monitor-exit p0

    return v19

    .line 337
    .restart local v8    # "end":I
    .restart local v17    # "start":I
    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 341
    .end local v8    # "end":I
    .end local v17    # "start":I
    :cond_7
    :try_start_2
    invoke-virtual {v15, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 346
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0xa0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 347
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 350
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    array-length v0, v9

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 351
    :cond_9
    if-lez v5, :cond_c

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v19, v0

    array-length v0, v9

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int/lit8 v19, v19, -0x6

    move/from16 v0, v19

    if-le v5, v0, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v19, v0

    array-length v0, v9

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int/lit8 v5, v19, -0x6

    .line 361
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    move-result-object v4

    .line 368
    .local v4, "body":[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 369
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 370
    const/16 v19, 0x49

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    add-int/lit8 v5, v5, 0x3

    .line 372
    shr-int/lit8 v19, v5, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 373
    int-to-byte v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    invoke-virtual {v15, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 389
    .end local v4    # "body":[B
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    const/16 v19, 0xa0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    if-gtz v14, :cond_d

    .line 390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 391
    const/16 v19, 0x49

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 392
    const/4 v14, 0x3

    .line 393
    const/16 v19, 0x0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 394
    int-to-byte v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 398
    :cond_d
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerOperation;->mResponseSize:I

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 401
    const/16 v19, 0x90

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 403
    .local v10, "headerID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 404
    .local v11, "length":I
    shl-int/lit8 v19, v11, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v20

    add-int v11, v19, v20

    .line 405
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v10, v0, :cond_11

    const/16 v19, 0x82

    move/from16 v0, v19

    if-eq v10, v0, :cond_11

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v10, v0, :cond_11

    const/16 v19, 0x83

    move/from16 v0, v19

    if-eq v10, v0, :cond_11

    .line 410
    const/16 v19, 0x3

    move/from16 v0, v19

    if-le v11, v0, :cond_f

    .line 411
    add-int/lit8 v19, v11, -0x3

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 413
    .local v18, "temp":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 415
    .local v6, "bytesReceived":I
    :goto_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v6, v0, :cond_f

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    add-int v6, v6, v19

    goto :goto_4

    .line 377
    .end local v6    # "bytesReceived":I
    .end local v10    # "headerID":I
    .end local v11    # "length":I
    .end local v18    # "temp":[B
    .restart local v4    # "body":[B
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mSendBodyHeader:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 378
    const/16 v19, 0x48

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    add-int/lit8 v5, v5, 0x3

    .line 380
    shr-int/lit8 v19, v5, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    int-to-byte v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    invoke-virtual {v15, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_3

    .line 424
    .end local v4    # "body":[B
    .restart local v10    # "headerID":I
    .restart local v11    # "length":I
    :cond_f
    const/16 v19, 0xff

    move/from16 v0, v19

    if-ne v10, v0, :cond_10

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    const/16 v20, 0xa0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 426
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 427
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 428
    const-string v19, "Abort Received"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 429
    new-instance v19, Ljava/io/IOException;

    const-string v20, "Abort Received"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 431
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    const/16 v20, 0xc0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 432
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 433
    const-string v19, "Bad Request Received"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 434
    new-instance v19, Ljava/io/IOException;

    const-string v20, "Bad Request Received"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 438
    :cond_11
    const/16 v19, 0x82

    move/from16 v0, v19

    if-ne v10, v0, :cond_13

    .line 439
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 447
    :cond_12
    :goto_5
    const v19, 0xfffe

    move/from16 v0, v19

    if-le v11, v0, :cond_14

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    const/16 v20, 0xce

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 449
    new-instance v19, Ljava/io/IOException;

    const-string v20, "Packet received was too large"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 440
    :cond_13
    const/16 v19, 0x83

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    .line 441
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_5

    .line 455
    :cond_14
    const/16 v19, 0x3

    move/from16 v0, v19

    if-le v11, v0, :cond_1b

    .line 456
    add-int/lit8 v19, v11, -0x3

    move/from16 v0, v19

    new-array v7, v0, [B

    .line 457
    .local v7, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 459
    .restart local v6    # "bytesReceived":I
    :goto_6
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v6, v0, :cond_15

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    array-length v0, v7

    move/from16 v20, v0

    sub-int v20, v20, v6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    add-int v6, v6, v19

    goto :goto_6

    .line 463
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v4

    .line 464
    .restart local v4    # "body":[B
    if-eqz v4, :cond_16

    .line 465
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 467
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_17

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 474
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v19

    if-nez v19, :cond_18

    .line 476
    const-string v19, "Authentication Failed"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    const/16 v20, 0xc1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 478
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 480
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 471
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_7

    .line 482
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 485
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 495
    :cond_1a
    if-eqz v4, :cond_1b

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    .end local v4    # "body":[B
    .end local v6    # "bytesReceived":I
    .end local v7    # "data":[B
    :cond_1b
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 502
    .end local v10    # "headerID":I
    .end local v11    # "length":I
    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method public streamClosed(Z)V
    .locals 0
    .param p1, "inStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    return-void
.end method
