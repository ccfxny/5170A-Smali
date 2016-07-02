.class public Lcom/mediatek/telephony/ExternalSimManager$ServerTask;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerTask"
.end annotation


# static fields
.field public static final HOST_NAME:Ljava/lang/String; = "vsim-adaptor"


# instance fields
.field private ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 1

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    return-void
.end method


# virtual methods
.method public listenConnection(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 8
    .param p1, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    .line 205
    const-string v5, "ExternalSimManager"

    const-string v6, "listenConnection() - start"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "serverSocket":Landroid/net/LocalServerSocket;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 212
    .local v4, "threadExecutor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v2, Landroid/net/LocalServerSocket;

    const-string v5, "vsim-adaptor"

    invoke-direct {v2, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v1    # "serverSocket":Landroid/net/LocalServerSocket;
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v3

    .line 217
    .local v3, "socket":Landroid/net/LocalSocket;
    const-string v5, "ExternalSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is a client is accpted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v5, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;

    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {v5, v6, v3, p1}, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;-><init>(Lcom/mediatek/telephony/ExternalSimManager;Landroid/net/LocalSocket;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 221
    .end local v3    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 222
    .end local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "serverSocket":Landroid/net/LocalServerSocket;
    :goto_1
    :try_start_2
    const-string v5, "ExternalSimManager"

    const-string v6, "listenConnection catch IOException"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    const-string v5, "ExternalSimManager"

    const-string v6, "listenConnection finally!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v4, :cond_0

    .line 230
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 231
    :cond_0
    if-eqz v1, :cond_1

    .line 233
    :try_start_3
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const-string v5, "ExternalSimManager"

    const-string v6, "listenConnection() - end"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 234
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v5, "ExternalSimManager"

    const-string v6, "listenConnection catch Exception"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    const-string v5, "ExternalSimManager"

    const-string v6, "listenConnection finally!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v4, :cond_2

    .line 230
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 231
    :cond_2
    if-eqz v1, :cond_1

    .line 233
    :try_start_5
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 234
    :catch_3
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    const-string v6, "ExternalSimManager"

    const-string v7, "listenConnection finally!!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v4, :cond_3

    .line 230
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 231
    :cond_3
    if-eqz v1, :cond_4

    .line 233
    :try_start_6
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 236
    :cond_4
    :goto_5
    throw v5

    .line 234
    :catch_4
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "serverSocket":Landroid/net/LocalServerSocket;
    .restart local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    .restart local v1    # "serverSocket":Landroid/net/LocalServerSocket;
    goto :goto_4

    .line 224
    .end local v1    # "serverSocket":Landroid/net/LocalServerSocket;
    .restart local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    .restart local v1    # "serverSocket":Landroid/net/LocalServerSocket;
    goto :goto_3

    .line 221
    :catch_6
    move-exception v0

    goto :goto_1
.end method
