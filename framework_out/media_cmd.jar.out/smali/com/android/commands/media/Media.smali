.class public Lcom/android/commands/media/Media;
.super Lcom/android/internal/os/BaseCommand;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/media/Media$ControllerMonitor;
    }
.end annotation


# instance fields
.field private mSessionService:Landroid/media/session/ISessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    .line 175
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/android/commands/media/Media;

    invoke-direct {v0}, Lcom/android/commands/media/Media;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/media/Media;->run([Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private runDispatch()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/commands/media/Media;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/16 v7, 0x7e

    .line 168
    .local v7, "keycode":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 169
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v1}, Lcom/android/commands/media/Media;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 171
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v1}, Lcom/android/commands/media/Media;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 173
    .end local v2    # "now":J
    .end local v7    # "keycode":I
    :goto_1
    return-void

    .line 143
    :cond_0
    const-string v1, "pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const/16 v7, 0x7f

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 145
    .end local v7    # "keycode":I
    :cond_1
    const-string v1, "play-pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const/16 v7, 0x55

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 147
    .end local v7    # "keycode":I
    :cond_2
    const-string v1, "mute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    const/16 v7, 0x5b

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 149
    .end local v7    # "keycode":I
    :cond_3
    const-string v1, "headsethook"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    const/16 v7, 0x4f

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 151
    .end local v7    # "keycode":I
    :cond_4
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    const/16 v7, 0x56

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 153
    .end local v7    # "keycode":I
    :cond_5
    const-string v1, "next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    const/16 v7, 0x57

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 155
    .end local v7    # "keycode":I
    :cond_6
    const-string v1, "previous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    const/16 v7, 0x58

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 157
    .end local v7    # "keycode":I
    :cond_7
    const-string v1, "rewind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    const/16 v7, 0x59

    .restart local v7    # "keycode":I
    goto :goto_0

    .line 159
    .end local v7    # "keycode":I
    :cond_8
    const-string v1, "record"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 160
    const/16 v7, 0x82

    .restart local v7    # "keycode":I
    goto/16 :goto_0

    .line 161
    .end local v7    # "keycode":I
    :cond_9
    const-string v1, "fast-forward"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 162
    const/16 v7, 0x5a

    .restart local v7    # "keycode":I
    goto/16 :goto_0

    .line 164
    .end local v7    # "keycode":I
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown dispatch code \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/commands/media/Media;->showError(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private runListSessions()V
    .locals 8

    .prologue
    .line 294
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Sessions:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    const/4 v6, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 298
    .local v4, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 300
    .local v3, "session":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 301
    .local v0, "controller":Landroid/media/session/ISessionController;
    if-eqz v0, :cond_0

    .line 303
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v5

    goto :goto_0

    .line 310
    .end local v0    # "controller":Landroid/media/session/ISessionController;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "session":Landroid/os/IBinder;
    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_1
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "***Error listing sessions***"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private runMonitor()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/commands/media/Media;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "id":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 110
    const-string v8, "Error: must include a session id"

    invoke-virtual {p0, v8}, Lcom/android/commands/media/Media;->showError(Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v7, 0x0

    .line 115
    .local v7, "success":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    const/4 v9, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v6

    .line 117
    .local v6, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 118
    .local v5, "session":Landroid/os/IBinder;
    invoke-static {v5}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    .local v0, "controller":Landroid/media/session/ISessionController;
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    new-instance v4, Lcom/android/commands/media/Media$ControllerMonitor;

    invoke-direct {v4, p0, v0}, Lcom/android/commands/media/Media$ControllerMonitor;-><init>(Lcom/android/commands/media/Media;Landroid/media/session/ISessionController;)V

    .line 122
    .local v4, "monitor":Lcom/android/commands/media/Media$ControllerMonitor;
    invoke-virtual {v4}, Lcom/android/commands/media/Media$ControllerMonitor;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    const/4 v7, 0x1

    .line 133
    .end local v0    # "controller":Landroid/media/session/ISessionController;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "monitor":Lcom/android/commands/media/Media$ControllerMonitor;
    .end local v5    # "session":Landroid/os/IBinder;
    .end local v6    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_3
    :goto_2
    if-nez v7, :cond_0

    .line 134
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No session found with id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***Error monitoring session*** "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "controller":Landroid/media/session/ISessionController;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "session":Landroid/os/IBinder;
    .restart local v6    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private sendMediaKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    const-string v1, "media_session"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    .line 80
    iget-object v1, p0, Lcom/android/commands/media/Media;->mSessionService:Landroid/media/session/ISessionManager;

    if-nez v1, :cond_0

    .line 81
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to media session service; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/media/Media;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "op":Ljava/lang/String;
    const-string v1, "dispatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runDispatch()V

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v1, "list-sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runListSessions()V

    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "monitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runMonitor()V

    goto :goto_0

    .line 95
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/commands/media/Media;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 62
    const-string v0, "usage: media [subcommand] [options]\n       media dispatch KEY\n       media list-sessions\n       media monitor <tag>\n\nmedia dispatch: dispatch a media key to the system.\n                KEY may be: play, pause, play-pause, mute, headsethook,\n                stop, next, previous, rewind, record, fast-forword.\nmedia list-sessions: print a list of the current sessions.\nmedia monitor: monitor updates to the specified session.\n                       Use the tag from list-sessions.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method
