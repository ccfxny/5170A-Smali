.class Lorg/gsma/joyn/chat/ChatService$1;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/chat/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gsma/joyn/chat/ChatService;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/chat/ChatService;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lorg/gsma/joyn/chat/ChatService$1;->this$0:Lorg/gsma/joyn/chat/ChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 120
    const-string v3, "TAPI-ChatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected entry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p2}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ICoreServiceWrapper;

    move-result-object v2

    .line 122
    .local v2, "mCoreServiceWrapperBinder":Lorg/gsma/joyn/ICoreServiceWrapper;
    const/4 v0, 0x0

    .line 124
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-interface {v2}, Lorg/gsma/joyn/ICoreServiceWrapper;->getChatServiceBinder()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    iget-object v3, p0, Lorg/gsma/joyn/chat/ChatService$1;->this$0:Lorg/gsma/joyn/chat/ChatService;

    invoke-static {v0}, Lorg/gsma/joyn/chat/IChatService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/chat/IChatService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gsma/joyn/chat/ChatService;->setApi(Landroid/os/IInterface;)V

    .line 130
    iget-object v3, p0, Lorg/gsma/joyn/chat/ChatService$1;->this$0:Lorg/gsma/joyn/chat/ChatService;

    # getter for: Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/chat/ChatService;->access$000(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lorg/gsma/joyn/chat/ChatService$1;->this$0:Lorg/gsma/joyn/chat/ChatService;

    # getter for: Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/chat/ChatService;->access$100(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/gsma/joyn/JoynServiceListener;->onServiceConnected()V

    .line 133
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService$1;->this$0:Lorg/gsma/joyn/chat/ChatService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gsma/joyn/chat/ChatService;->setApi(Landroid/os/IInterface;)V

    .line 137
    const-string v0, "TAPI-ChatService"

    const-string v1, "onServiceDisconnected entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService$1;->this$0:Lorg/gsma/joyn/chat/ChatService;

    # getter for: Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/chat/ChatService;->access$200(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/gsma/joyn/chat/ChatService$1;->this$0:Lorg/gsma/joyn/chat/ChatService;

    # getter for: Lorg/gsma/joyn/chat/ChatService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/chat/ChatService;->access$300(Lorg/gsma/joyn/chat/ChatService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/gsma/joyn/JoynServiceListener;->onServiceDisconnected(I)V

    .line 141
    :cond_0
    return-void
.end method
