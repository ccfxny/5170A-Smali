.class public final Lcom/android/commands/dpm/Dpm;
.super Lcom/android/internal/os/BaseCommand;
.source "Dpm.java"


# static fields
.field private static final COMMAND_SET_ACTIVE_ADMIN:Ljava/lang/String; = "set-active-admin"

.field private static final COMMAND_SET_DEVICE_OWNER:Ljava/lang/String; = "set-device-owner"

.field private static final COMMAND_SET_PROFILE_OWNER:Ljava/lang/String; = "set-profile-owner"


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lcom/android/commands/dpm/Dpm;

    invoke-direct {v0}, Lcom/android/commands/dpm/Dpm;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/dpm/Dpm;->run([Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private parseArgs(Z)V
    .locals 2
    .param p1, "canHaveUser"    # Z

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "nextArg":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/commands/dpm/Dpm;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    .line 96
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/commands/dpm/Dpm;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    .line 99
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 149
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    return-object v0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer argument \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runSetActiveAdmin()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 102
    invoke-direct {p0, v3}, Lcom/android/commands/dpm/Dpm;->parseArgs(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    invoke-interface {v0, v1, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success: Active admin set to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private runSetDeviceOwner()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/dpm/Dpm;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 110
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4, v6}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 112
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as device owner."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 121
    throw v1

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success: Device owner set to package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Active admin set to component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private runSetProfileOwner()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/dpm/Dpm;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/dpm/Dpm;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const-string v4, ""

    invoke-interface {v3, v0, v4, v2}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as profile owner for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 141
    throw v1

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success: Active admin and profile owner set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    const-string v1, "device_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 71
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v1, :cond_0

    .line 72
    const-string v1, "Error: Could not access the Device Policy Manager. Is the system running?"

    invoke-virtual {p0, v1}, Lcom/android/commands/dpm/Dpm;->showError(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "command":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :sswitch_0
    const-string v2, "set-active-admin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "set-device-owner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "set-profile-owner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 79
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetActiveAdmin()V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetDeviceOwner()V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetProfileOwner()V

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        -0x6ace5bf9 -> :sswitch_1
        0x20a8d153 -> :sswitch_0
        0x2622c764 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 51
    const-string v0, "usage: dpm [subcommand] [options]\nusage: dpm set-active-admin [ --user <USER_ID> ] <COMPONENT>\nusage: dpm set-device-owner <COMPONENT>\nusage: dpm set-profile-owner <COMPONENT> <USER_ID>\n\ndpm set-active-admin: Sets the given component as active admin for an existing user.\n\ndpm set-device-owner: Sets the given component as active admin, and its\n  package as device owner.\n\ndpm set-profile-owner: Sets the given component as active admin and profile  owner for an existing user.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    return-void
.end method
