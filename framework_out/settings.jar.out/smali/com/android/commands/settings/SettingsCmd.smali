.class public final Lcom/android/commands/settings/SettingsCmd;
.super Ljava/lang/Object;
.source "SettingsCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/settings/SettingsCmd$1;,
        Lcom/android/commands/settings/SettingsCmd$CommandVerb;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "settings"

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mKey:Ljava/lang/String;

.field mNextArg:I

.field mTable:Ljava/lang/String;

.field mUser:I

.field mValue:Ljava/lang/String;

.field mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    .line 44
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    .line 45
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 51
    :cond_0
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->printUsage()V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_1
    sput-object p0, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    .line 57
    :try_start_0
    new-instance v1, Lcom/android/commands/settings/SettingsCmd;

    invoke-direct {v1}, Lcom/android/commands/settings/SettingsCmd;-><init>()V

    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unable to run settings command"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 171
    :cond_0
    sget-object v1, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    aget-object v0, v1, v2

    .line 172
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    goto :goto_0
.end method

.method private static printUsage()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage:  settings [--user NUM] get namespace key"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "        settings [--user NUM] put namespace key value"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "        settings [--user NUM] delete namespace key"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\n\'namespace\' is one of {system, secure, global}, case-insensitive"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "If \'--user NUM\' is not given, the operations are performed on the owner user."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    return-void
.end method


# virtual methods
.method deleteForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v3, "system"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 233
    .local v2, "targetUri":Landroid/net/Uri;
    :goto_0
    const/4 v1, 0x0

    .line 235
    .local v1, "num":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v3, v2, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 240
    :goto_1
    return v1

    .line 226
    .end local v1    # "num":I
    .end local v2    # "targetUri":Landroid/net/Uri;
    :cond_0
    const-string v3, "secure"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "targetUri":Landroid/net/Uri;
    goto :goto_0

    .line 227
    .end local v2    # "targetUri":Landroid/net/Uri;
    :cond_1
    const-string v3, "global"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "targetUri":Landroid/net/Uri;
    goto :goto_0

    .line 229
    .end local v2    # "targetUri":Landroid/net/Uri;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Invalid table; no delete performed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    .restart local v1    # "num":I
    .restart local v2    # "targetUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t clear key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method getForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v5, "system"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "GET_system"

    .line 187
    .local v2, "callGetCommand":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 189
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "arg":Landroid/os/Bundle;
    const-string v5, "_user"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const/4 v5, 0x0

    invoke-interface {p1, v5, v2, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 192
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 198
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-object v4

    .line 180
    .end local v2    # "callGetCommand":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    const-string v5, "secure"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "GET_secure"

    .restart local v2    # "callGetCommand":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_2
    const-string v5, "global"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "GET_global"

    .restart local v2    # "callGetCommand":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Invalid table; no put performed"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    .restart local v2    # "callGetCommand":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method putForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v3, "system"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "PUT_system"

    .line 213
    .local v1, "callPutCommand":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "arg":Landroid/os/Bundle;
    const-string v3, "value"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v3, "_user"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :goto_1
    return-void

    .line 205
    :cond_0
    const-string v3, "secure"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "PUT_secure"

    .restart local v1    # "callPutCommand":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_1
    const-string v3, "global"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "PUT_global"

    .restart local v1    # "callPutCommand":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Invalid table; no put performed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 217
    .restart local v1    # "callPutCommand":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v11, 0x0

    .line 67
    .local v11, "valid":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/settings/SettingsCmd;->nextArg()Ljava/lang/String;

    move-result-object v7

    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 68
    const-string v0, "--user"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 119
    .end local v7    # "arg":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v11, :cond_12

    .line 120
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    if-gez v0, :cond_1

    .line 121
    iput v4, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    .line 125
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 126
    .local v6, "activityManager":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 127
    .local v1, "provider":Landroid/content/IContentProvider;
    new-instance v10, Landroid/os/Binder;

    invoke-direct {v10}, Landroid/os/Binder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .local v10, "token":Landroid/os/IBinder;
    :try_start_2
    const-string v0, "settings"

    const/4 v2, 0x0

    invoke-interface {v6, v0, v2, v10}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v9

    .line 131
    .local v9, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v9, :cond_11

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find settings provider"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 154
    :try_start_3
    const-string v2, "settings"

    invoke-interface {v6, v2, v10}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v10    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v8

    .line 158
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error while accessing settings provider"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 73
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/commands/settings/SettingsCmd;->nextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    goto :goto_0

    .line 115
    .end local v7    # "arg":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 116
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_1

    .line 74
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    if-ne v0, v2, :cond_9

    .line 75
    const-string v0, "get"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    goto :goto_0

    .line 77
    :cond_6
    const-string v0, "put"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    goto :goto_0

    .line 79
    :cond_7
    const-string v0, "delete"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    goto/16 :goto_0

    .line 83
    :cond_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    :cond_9
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 87
    const-string v0, "system"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "secure"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "global"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid namespace \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    goto/16 :goto_0

    .line 94
    :cond_b
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    if-eq v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    if-ne v0, v2, :cond_e

    .line 95
    :cond_c
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    .line 96
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_d

    .line 97
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 99
    :cond_d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Too many arguments"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 102
    :cond_e
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 103
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    :cond_f
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    .line 107
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_10

    .line 108
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 110
    :cond_10
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Too many arguments"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 134
    .end local v7    # "arg":Ljava/lang/String;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local v6    # "activityManager":Landroid/app/IActivityManager;
    .restart local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v10    # "token":Landroid/os/IBinder;
    :cond_11
    :try_start_5
    iget-object v1, v9, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 136
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$1;->$SwitchMap$com$android$commands$settings$SettingsCmd$CommandVerb:[I

    iget-object v2, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    invoke-virtual {v2}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unspecified command"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    :goto_3
    if-eqz v1, :cond_3

    .line 154
    :try_start_6
    const-string v0, "settings"

    invoke-interface {v6, v0, v10}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 138
    :pswitch_0
    :try_start_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/commands/settings/SettingsCmd;->getForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 141
    :pswitch_1
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/settings/SettingsCmd;->putForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 144
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/commands/settings/SettingsCmd;->deleteForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 163
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v10    # "token":Landroid/os/IBinder;
    :cond_12
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->printUsage()V

    goto/16 :goto_2

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
