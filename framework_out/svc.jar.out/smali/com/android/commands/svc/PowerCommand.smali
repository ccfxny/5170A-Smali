.class public Lcom/android/commands/svc/PowerCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "PowerCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "power"

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

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "usage: svc power stayon [true|false|usb|ac|wireless]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         Set the \'keep awake while plugged in\' setting.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       svc power reboot [reason]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         Perform a runtime shutdown and reboot device with specified reason.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       svc power shutdown\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         Perform a runtime shutdown and power off the device.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 48
    array-length v4, p1

    if-lt v4, v6, :cond_8

    .line 49
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 51
    .local v2, "pm":Landroid/os/IPowerManager;
    const-string v4, "stayon"

    aget-object v5, p1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    array-length v4, p1

    if-ne v4, v8, :cond_5

    .line 53
    const-string v4, "true"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    const/4 v3, 0x7

    .line 70
    .local v3, "val":I
    :goto_0
    if-eqz v3, :cond_0

    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Landroid/os/IPowerManager;->wakeUp(J)V

    .line 75
    :cond_0
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setStayOnSetting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2    # "pm":Landroid/os/IPowerManager;
    .end local v3    # "val":I
    :goto_1
    return-void

    .line 58
    .restart local v2    # "pm":Landroid/os/IPowerManager;
    :cond_1
    const-string v4, "false"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    const/4 v3, 0x0

    .restart local v3    # "val":I
    goto :goto_0

    .line 60
    .end local v3    # "val":I
    :cond_2
    const-string v4, "usb"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    const/4 v3, 0x2

    .restart local v3    # "val":I
    goto :goto_0

    .line 62
    .end local v3    # "val":I
    :cond_3
    const-string v4, "ac"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 63
    const/4 v3, 0x1

    .restart local v3    # "val":I
    goto :goto_0

    .line 64
    .end local v3    # "val":I
    :cond_4
    const-string v4, "wireless"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 65
    const/4 v3, 0x4

    .restart local v3    # "val":I
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Faild to set setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "val":I
    :cond_5
    const-string v4, "reboot"

    aget-object v5, p1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "mode":Ljava/lang/String;
    array-length v4, p1

    if-ne v4, v8, :cond_6

    .line 84
    aget-object v1, p1, v6

    .line 88
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_1
    invoke-interface {v2, v4, v1, v5}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Failed to reboot."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "mode":Ljava/lang/String;
    :cond_7
    const-string v4, "shutdown"

    aget-object v5, p1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 96
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_2
    invoke-interface {v2, v4, v5}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 97
    :catch_2
    move-exception v0

    .line 98
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Failed to shutdown."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pm":Landroid/os/IPowerManager;
    :cond_8
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->longHelp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "Control the power manager"

    return-object v0
.end method
