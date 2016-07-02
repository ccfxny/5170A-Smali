.class public Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RilClientTask"
.end annotation


# static fields
.field public static final SERVER_NAME:Ljava/lang/String; = "rild-vsim"


# instance fields
.field private ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field mSocket:Landroid/net/LocalSocket;

.field private retryCount:I

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    .line 251
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    return-void
.end method


# virtual methods
.method public connectToServer()V
    .locals 5

    .prologue
    .line 256
    const-string v2, "ExternalSimManager"

    const-string v3, "connectToServer() - start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 259
    :try_start_0
    const-string v2, "ExternalSimManager"

    const-string v3, "connectToServer() - before"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    .line 262
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "rild-vsim"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 265
    .local v0, "addr":Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 267
    const-string v2, "ExternalSimManager"

    const-string v3, "connectToServer() - after"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "addr":Landroid/net/LocalSocketAddress;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "ExternalSimManager"

    const-string v3, "connectToServer connected!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_2
    const-string v2, "ExternalSimManager"

    const-string v3, "connectToServer() - end"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ExternalSimManager"

    const-string v3, "connectToServer catch IOException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    .line 275
    const-wide/16 v2, 0xfa0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :goto_1
    const-string v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToServer retry later, retry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getIoThread(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .locals 7
    .param p1, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    if-nez v0, :cond_0

    .line 293
    :try_start_0
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    const-string v2, "rild-vsim"

    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;-><init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 298
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    return-object v0

    .line 299
    :catch_0
    move-exception v6

    .line 300
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "ExternalSimManager"

    const-string v1, "getIoThread catch IOException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
