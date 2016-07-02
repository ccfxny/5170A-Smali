.class Lcom/android/server/InputMethodManagerService$Injector;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Injector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsGoogleVoice(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4210
    .local p0, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4211
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 4212
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isGoogleVoiceInput(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4213
    const/4 v2, 0x1

    .line 4216
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v2

    .line 4210
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4216
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static finishInputExt(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    .locals 5
    .param p0, "imms"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 4129
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUserWrapper()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4145
    :goto_0
    return-void

    .line 4132
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4134
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getMethodMap()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4135
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCurClient()Lcom/android/server/InputMethodManagerService$ClientState;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCurClient()Lcom/android/server/InputMethodManagerService$ClientState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 4137
    sget-boolean v2, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 4138
    const-string v2, "InputMethodManagerService"

    const-string v4, "Client requesting finishInput"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCaller()Lcom/android/internal/os/HandlerCaller;

    move-result-object v2

    const/16 v4, 0x1392

    invoke-virtual {v2, v4, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4141
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4141
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4143
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static finishInputInternal(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    .locals 3
    .param p0, "imms"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 4167
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getMethodMap()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 4168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCurClient()Lcom/android/server/InputMethodManagerService$ClientState;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCurClient()Lcom/android/server/InputMethodManagerService$ClientState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 4170
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 4172
    :cond_0
    monitor-exit v1

    .line 4173
    return-void

    .line 4172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static handleMessageMz(Lcom/android/server/InputMethodManagerService;Landroid/os/Message;)Z
    .locals 6
    .param p0, "imms"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4148
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v2, v3

    .line 4163
    :goto_0
    return v2

    .line 4151
    :sswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Lcom/android/internal/view/IInputMethodClient;->onInputShownChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4152
    :catch_0
    move-exception v0

    .line 4153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got RemoteException sending onInputShownChanged("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") notification to pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    move v1, v3

    .line 4151
    goto :goto_1

    .restart local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    move v1, v3

    .line 4153
    goto :goto_2

    .line 4160
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    invoke-static {p0, v1}, Lcom/android/server/InputMethodManagerService$Injector;->finishInputInternal(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V

    goto :goto_0

    .line 4148
    nop

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_0
        0x1392 -> :sswitch_1
    .end sparse-switch
.end method

.method static selectDefaultIMELocked(Lcom/android/server/InputMethodManagerService;)V
    .locals 5
    .param p0, "imms"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 4176
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getMethodMap()Ljava/util/HashMap;

    move-result-object v1

    .line 4178
    .local v1, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v2, "com.syntellia.fleksy.keyboard/.Fleksy"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4179
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4180
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4207
    :cond_0
    :goto_0
    return-void

    .line 4186
    :cond_1
    const-string v2, "com.cootek.smartinputv5/com.cootek.smartinput5.TouchPalIME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4187
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4188
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto :goto_0

    .line 4194
    :cond_2
    const-string v2, "com.iflytek.inputmethod/.FlyIME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4195
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4196
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto :goto_0

    .line 4202
    :cond_3
    const-string v2, "com.meizu.flyme.input/com.meizu.input.MzInputService"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4203
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 4204
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto :goto_0
.end method

.method static setInputShownLocked(Lcom/android/server/InputMethodManagerService;)V
    .locals 5
    .param p0, "imms"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 4119
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getLastInputShown()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getInputShown()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4120
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getInputShown()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->setLastInputShown(Z)V

    .line 4121
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCurClient()Lcom/android/server/InputMethodManagerService$ClientState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4122
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCurClient()Lcom/android/server/InputMethodManagerService$ClientState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCaller()Lcom/android/internal/os/HandlerCaller;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getInputShown()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getCurClient()Lcom/android/server/InputMethodManagerService$ClientState;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4126
    :cond_0
    return-void
.end method
