.class public Lcom/android/commands/svc/DataCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "DataCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "data"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/DataCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "usage: svc data [enable|disable]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         Turn mobile data on or off.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "validCommand":Z
    array-length v4, p1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "flag":Z
    const-string v4, "enable"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const/4 v1, 0x1

    .line 48
    const/4 v3, 0x1

    .line 53
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 54
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 57
    .local v2, "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 58
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "flag":Z
    .end local v2    # "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    :goto_1
    return-void

    .line 49
    .restart local v1    # "flag":Z
    :cond_1
    const-string v4, "disable"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v3, 0x1

    goto :goto_0

    .line 60
    .restart local v2    # "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mobile data operation failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "flag":Z
    .end local v2    # "phoneMgr":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/DataCommand;->longHelp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "Control mobile data connectivity"

    return-object v0
.end method
