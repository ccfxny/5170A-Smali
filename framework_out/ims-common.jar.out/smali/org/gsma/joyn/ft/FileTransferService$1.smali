.class Lorg/gsma/joyn/ft/FileTransferService$1;
.super Ljava/lang/Object;
.source "FileTransferService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ft/FileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gsma/joyn/ft/FileTransferService;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/ft/FileTransferService;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/gsma/joyn/ft/FileTransferService$1;->this$0:Lorg/gsma/joyn/ft/FileTransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 115
    const-string v3, "TAPI-FileTransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p2}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ICoreServiceWrapper;

    move-result-object v2

    .line 117
    .local v2, "mCoreServiceWrapperBinder":Lorg/gsma/joyn/ICoreServiceWrapper;
    const/4 v0, 0x0

    .line 119
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-interface {v2}, Lorg/gsma/joyn/ICoreServiceWrapper;->getFileTransferServiceBinder()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    iget-object v3, p0, Lorg/gsma/joyn/ft/FileTransferService$1;->this$0:Lorg/gsma/joyn/ft/FileTransferService;

    invoke-static {v0}, Lorg/gsma/joyn/ft/IFileTransferService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ft/IFileTransferService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gsma/joyn/ft/FileTransferService;->setApi(Landroid/os/IInterface;)V

    .line 124
    iget-object v3, p0, Lorg/gsma/joyn/ft/FileTransferService$1;->this$0:Lorg/gsma/joyn/ft/FileTransferService;

    # getter for: Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/ft/FileTransferService;->access$000(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lorg/gsma/joyn/ft/FileTransferService$1;->this$0:Lorg/gsma/joyn/ft/FileTransferService;

    # getter for: Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/ft/FileTransferService;->access$100(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/gsma/joyn/JoynServiceListener;->onServiceConnected()V

    .line 127
    :cond_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 130
    const-string v0, "TAPI-FileTransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService$1;->this$0:Lorg/gsma/joyn/ft/FileTransferService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gsma/joyn/ft/FileTransferService;->setApi(Landroid/os/IInterface;)V

    .line 132
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService$1;->this$0:Lorg/gsma/joyn/ft/FileTransferService;

    # getter for: Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/ft/FileTransferService;->access$200(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/gsma/joyn/ft/FileTransferService$1;->this$0:Lorg/gsma/joyn/ft/FileTransferService;

    # getter for: Lorg/gsma/joyn/ft/FileTransferService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/ft/FileTransferService;->access$300(Lorg/gsma/joyn/ft/FileTransferService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/gsma/joyn/JoynServiceListener;->onServiceDisconnected(I)V

    .line 135
    :cond_0
    return-void
.end method
