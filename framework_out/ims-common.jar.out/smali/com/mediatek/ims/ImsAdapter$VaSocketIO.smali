.class public Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
.super Ljava/lang/Thread;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VaSocketIO"
.end annotation


# instance fields
.field private IS_ENG_BUILD:Z

.field private IS_USERDEBUG_BUILD:Z

.field private IS_USER_BUILD:Z

.field VaSocketIOThreadLock:Ljava/lang/Object;

.field private buf:[B

.field private mDin:Ljava/io/DataInputStream;

.field private mId:I

.field private mOut:Ljava/io/OutputStream;

.field private mPhoneId:I

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;

.field private mTyp:I

.field final synthetic this$0:Lcom/mediatek/ims/ImsAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsAdapter;Ljava/lang/String;)V
    .locals 3
    .param p2, "socket_name"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 271
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 257
    iput v2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mTyp:I

    .line 258
    iput v2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mId:I

    .line 259
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    .line 260
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 261
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 262
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 263
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->IS_USER_BUILD:Z

    .line 264
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->IS_USERDEBUG_BUILD:Z

    .line 265
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->IS_ENG_BUILD:Z

    .line 267
    iput v2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 269
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    .line 272
    iput-object p2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    .line 274
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    .line 275
    const-string v0, "ImsAdapter"

    const-string v1, "VaSocketIO(): Enter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 469
    const-string v0, "ImsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpEvent: phone_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",reqiest_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data_len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method private readEvent()Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    const-string v5, "ImsAdapter"

    const-string v6, "readEvent Enter"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readInt()I

    move-result v4

    .line 456
    .local v4, "request_id":I
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readInt()I

    move-result v1

    .line 457
    .local v1, "data_len":I
    new-array v0, v1, [B

    .line 458
    .local v0, "buf":[B
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readFully([BII)V

    .line 460
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v3

    .line 461
    .local v3, "phoneId":I
    new-instance v2, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-direct {v2, v3, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 462
    .local v2, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 464
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 465
    return-object v2
.end method

.method private readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 446
    return-void
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private writeBytes([BI)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 396
    return-void
.end method

.method private writeInt(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method


# virtual methods
.method public connectSocket()Z
    .locals 6

    .prologue
    .line 340
    const-string v3, "ImsAdapter"

    const-string v4, "connectSocket() Enter"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 343
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 347
    :cond_0
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 348
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 350
    .local v0, "addr":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 352
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 353
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "sendBufferSize":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getSendBufferSize()I

    move-result v2

    .line 357
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 358
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getSendBufferSize()I

    move-result v2

    .line 360
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 361
    const-string v3, "ImsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectSocket() update socket phone Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    const/4 v3, 0x1

    .end local v0    # "addr":Landroid/net/LocalSocketAddress;
    .end local v2    # "sendBufferSize":I
    :goto_0
    return v3

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 366
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public disconnectSocket()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 372
    const-string v1, "ImsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectSocket() Enter, mOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_2
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 387
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 388
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 389
    iput v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 390
    const-string v1, "ImsAdapter"

    const-string v2, "disconnectSocket() reset socket phone Id"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 387
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 388
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 389
    iput v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 390
    const-string v1, "ImsAdapter"

    const-string v2, "disconnectSocket() reset socket phone Id"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 387
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 388
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 389
    iput v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 390
    const-string v2, "ImsAdapter"

    const-string v3, "disconnectSocket() reset socket phone Id"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 279
    const-string v8, "ImsAdapter"

    const-string v9, "VaSocketIO(): Run"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    # getter for: Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$000()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "doTrm":Z
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v8, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readEvent()Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    .line 289
    .local v2, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    if-eqz v2, :cond_1

    .line 290
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 291
    .local v4, "msg":Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    # getter for: Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$100()Lcom/mediatek/ims/ImsEventDispatcher;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/mediatek/ims/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 311
    .end local v2    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    if-ne v0, v14, :cond_0

    .line 312
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v7

    .line 313
    .local v7, "trmPhoneId":I
    const-string v8, "ImsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VaSocketIO(): recover Phone (trmPhoneId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->this$0:Lcom/mediatek/ims/ImsAdapter;

    # invokes: Lcom/mediatek/ims/ImsAdapter;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-static {v8}, Lcom/mediatek/ims/ImsAdapter;->access$200(Lcom/mediatek/ims/ImsAdapter;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v7, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setTrmForPhone(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 317
    :catch_0
    move-exception v6

    .line 318
    .local v6, "re":Landroid/os/RemoteException;
    const-string v8, "ImsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VaSocketIO: phone trm exception (re: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v6    # "re":Landroid/os/RemoteException;
    .end local v7    # "trmPhoneId":I
    :catch_1
    move-exception v1

    .line 296
    .local v1, "e":Ljava/io/InterruptedIOException;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 297
    # getter for: Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$000()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->IS_USER_BUILD:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->IS_USERDEBUG_BUILD:Z

    if-eqz v8, :cond_3

    .line 298
    :cond_2
    const/4 v0, 0x1

    .line 300
    :cond_3
    invoke-virtual {v1}, Ljava/io/InterruptedIOException;->printStackTrace()V

    .line 301
    const-string v9, "ImsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VaSocketIO(): InterruptedIOException ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ne v0, v14, :cond_4

    const-string v8, "1"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string v8, "0"

    goto :goto_2

    .line 302
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 304
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    # getter for: Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->access$000()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->IS_USER_BUILD:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->IS_USERDEBUG_BUILD:Z

    if-eqz v8, :cond_6

    .line 306
    :cond_5
    const/4 v0, 0x1

    .line 308
    :cond_6
    const-string v9, "ImsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VaSocketIO(): Exception ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ne v0, v14, :cond_7

    const-string v8, "1"

    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const-string v8, "0"

    goto :goto_3

    .line 319
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "trmPhoneId":I
    :catch_3
    move-exception v5

    .line 321
    .local v5, "npex":Ljava/lang/NullPointerException;
    const-string v8, "ImsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VaSocketIO: phone trm exception (npex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    .end local v0    # "doTrm":Z
    .end local v5    # "npex":Ljava/lang/NullPointerException;
    .end local v7    # "trmPhoneId":I
    :cond_8
    iget-object v9, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    monitor-enter v9

    .line 328
    :try_start_2
    const-string v8, "ImsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VaSocketIO(): thread \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" enter wait state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v8, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 330
    const-string v8, "ImsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VaSocketIO(): thread \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" leave wait state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :goto_4
    :try_start_3
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 331
    :catch_4
    move-exception v3

    .line 332
    .local v3, "ie":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v8, "ImsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VaSocketIO(): waiting thread \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" interrupted ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I
    .locals 6
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v2, -0x1

    .line 405
    const-string v3, "ImsAdapter"

    const-string v4, "writeEvent Enter"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v1, -0x1

    .line 408
    .local v1, "ret":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    if-eqz v3, :cond_2

    .line 410
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v3

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    if-eq v3, v4, :cond_1

    .line 412
    :cond_0
    const-string v3, "ImsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeEvent event phoneId mismatch, event skipped. (event requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", socket phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_0
    monitor-exit p0

    move v2, v1

    .line 436
    :goto_1
    return v2

    .line 419
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 421
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeInt(I)V

    .line 422
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeInt(I)V

    .line 423
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeBytes([BI)V

    .line 424
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 425
    const/4 v1, 0x0

    goto :goto_0

    .line 428
    :cond_2
    const-string v3, "ImsAdapter"

    const-string v4, "mOut is null, socket is not setup"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
