.class Lorg/gsma/joyn/ipcall/IPCallService$1;
.super Ljava/lang/Object;
.source "IPCallService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ipcall/IPCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gsma/joyn/ipcall/IPCallService;


# direct methods
.method constructor <init>(Lorg/gsma/joyn/ipcall/IPCallService;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/gsma/joyn/ipcall/IPCallService$1;->this$0:Lorg/gsma/joyn/ipcall/IPCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 114
    const-string v3, "IPCallService"

    const-string v4, "onServiceConnected() entry"

    invoke-static {v3, v4}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p2}, Lorg/gsma/joyn/ICoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ICoreServiceWrapper;

    move-result-object v2

    .line 116
    .local v2, "mCoreServiceWrapperBinder":Lorg/gsma/joyn/ICoreServiceWrapper;
    const/4 v0, 0x0

    .line 118
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-interface {v2}, Lorg/gsma/joyn/ICoreServiceWrapper;->getIPCallServiceBinder()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    iget-object v3, p0, Lorg/gsma/joyn/ipcall/IPCallService$1;->this$0:Lorg/gsma/joyn/ipcall/IPCallService;

    invoke-static {v0}, Lorg/gsma/joyn/ipcall/IIPCallService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/gsma/joyn/ipcall/IIPCallService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gsma/joyn/ipcall/IPCallService;->setApi(Landroid/os/IInterface;)V

    .line 123
    iget-object v3, p0, Lorg/gsma/joyn/ipcall/IPCallService$1;->this$0:Lorg/gsma/joyn/ipcall/IPCallService;

    # getter for: Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/ipcall/IPCallService;->access$000(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lorg/gsma/joyn/ipcall/IPCallService$1;->this$0:Lorg/gsma/joyn/ipcall/IPCallService;

    # getter for: Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v3}, Lorg/gsma/joyn/ipcall/IPCallService;->access$100(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/gsma/joyn/JoynServiceListener;->onServiceConnected()V

    .line 126
    :cond_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    const-string v0, "IPCallService"

    const-string v1, "onServiceDisconnected() entry"

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService$1;->this$0:Lorg/gsma/joyn/ipcall/IPCallService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gsma/joyn/ipcall/IPCallService;->setApi(Landroid/os/IInterface;)V

    .line 131
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService$1;->this$0:Lorg/gsma/joyn/ipcall/IPCallService;

    # getter for: Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/ipcall/IPCallService;->access$200(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/gsma/joyn/ipcall/IPCallService$1;->this$0:Lorg/gsma/joyn/ipcall/IPCallService;

    # getter for: Lorg/gsma/joyn/ipcall/IPCallService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;
    invoke-static {v0}, Lorg/gsma/joyn/ipcall/IPCallService;->access$300(Lorg/gsma/joyn/ipcall/IPCallService;)Lorg/gsma/joyn/JoynServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/gsma/joyn/JoynServiceListener;->onServiceDisconnected(I)V

    .line 134
    :cond_0
    return-void
.end method
