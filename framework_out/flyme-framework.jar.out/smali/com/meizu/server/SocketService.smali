.class public Lcom/meizu/server/SocketService;
.super Ljava/lang/Object;
.source "SocketService.java"


# instance fields
.field obtainMsg:Landroid/os/Message;

.field replyTo:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    .line 107
    iput-object v0, p0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    return-void
.end method

.method private connect2Sdcard(Ljava/lang/String;)V
    .locals 1
    .param p1, "szCmd"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/meizu/server/SocketService$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/server/SocketService$1;-><init>(Lcom/meizu/server/SocketService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/meizu/server/SocketService$1;->start()V

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    .line 88
    iget-object v1, p0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v1, p0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const-string v1, "timestamp"

    invoke-direct {p0, v1}, Lcom/meizu/server/SocketService;->connect2Sdcard(Ljava/lang/String;)V

    .line 93
    const-string v1, "SecurityCenter"

    const-string v2, "SocketService::timestamp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "szToken":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/server/SocketService;->connect2Sdcard(Ljava/lang/String;)V

    .line 98
    const-string v1, "SecurityCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketService::token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
