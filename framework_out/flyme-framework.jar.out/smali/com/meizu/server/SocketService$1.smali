.class Lcom/meizu/server/SocketService$1;
.super Ljava/lang/Thread;
.source "SocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/SocketService;->connect2Sdcard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/SocketService;

.field final synthetic val$szCmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/server/SocketService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    iput-object p2, p0, Lcom/meizu/server/SocketService$1;->val$szCmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 26
    const/4 v14, 0x0

    .line 27
    .local v14, "try_count":I
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V

    .line 28
    .local v13, "socket":Landroid/net/LocalSocket;
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v16, "sdcard"

    sget-object v17, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v2, "address":Landroid/net/LocalSocketAddress;
    move v15, v14

    .line 30
    .end local v14    # "try_count":I
    .local v15, "try_count":I
    :goto_0
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "try_count":I
    .restart local v14    # "try_count":I
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {v13, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/server/SocketService$1;->val$szCmd:Ljava/lang/String;

    .line 43
    .local v6, "cmd":Ljava/lang/String;
    const/4 v10, 0x0

    .line 46
    .local v10, "ret":Ljava/lang/String;
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 47
    const/16 v16, 0x1f4

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 48
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 49
    .local v9, "out":Ljava/io/OutputStream;
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 51
    .local v8, "in":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 52
    const-string v6, "close_prot_box"

    .line 56
    :cond_1
    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 57
    .local v5, "bytes":[B
    const/16 v16, 0x200

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 58
    .local v4, "buf":[B
    invoke-virtual {v9, v5}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 60
    const-string v16, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    .line 61
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 62
    .local v12, "size":I
    new-instance v11, Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "UTF-8"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v4, v0, v12, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v10    # "ret":Ljava/lang/String;
    .local v11, "ret":Ljava/lang/String;
    move-object v10, v11

    .line 65
    .end local v4    # "buf":[B
    .end local v5    # "bytes":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v11    # "ret":Ljava/lang/String;
    .end local v12    # "size":I
    .restart local v10    # "ret":Ljava/lang/String;
    :cond_2
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 69
    :goto_1
    const-string v16, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_3

    .line 70
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v3, "b":Landroid/os/Bundle;
    const-string v16, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 75
    :try_start_2
    const-string v16, "SecurityCenter"

    const-string v17, "send back!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_3
    :goto_2
    return-void

    .line 34
    .end local v6    # "cmd":Ljava/lang/String;
    .end local v10    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 37
    const-wide/16 v16, 0x3e8

    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    move v15, v14

    .line 39
    .end local v14    # "try_count":I
    .restart local v15    # "try_count":I
    goto/16 :goto_0

    .line 38
    .end local v15    # "try_count":I
    .restart local v14    # "try_count":I
    :catch_1
    move-exception v16

    move v15, v14

    .line 39
    .end local v14    # "try_count":I
    .restart local v15    # "try_count":I
    goto/16 :goto_0

    .line 77
    .end local v15    # "try_count":I
    .restart local v3    # "b":Landroid/os/Bundle;
    .restart local v6    # "cmd":Ljava/lang/String;
    .restart local v10    # "ret":Ljava/lang/String;
    .restart local v14    # "try_count":I
    :catch_2
    move-exception v7

    .line 78
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v16

    goto :goto_1
.end method
