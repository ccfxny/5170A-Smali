.class Lorg/simalliance/openmobileapi/SEService$2;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/simalliance/openmobileapi/SEService;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-static {p2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    move-result-object v1

    # setter for: Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v0, v1}, Lorg/simalliance/openmobileapi/SEService;->access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 122
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    # getter for: Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    # getter for: Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;

    move-result-object v0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-interface {v0, v1}, Lorg/simalliance/openmobileapi/SEService$CallBack;->serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V

    .line 125
    :cond_0
    const-string v0, "SEService"

    const-string v1, "Service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    const/4 v1, 0x0

    # setter for: Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v0, v1}, Lorg/simalliance/openmobileapi/SEService;->access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 130
    const-string v0, "SEService"

    const-string v1, "Service onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
