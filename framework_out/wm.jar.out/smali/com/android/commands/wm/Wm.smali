.class public Lcom/android/commands/wm/Wm;
.super Lcom/android/internal/os/BaseCommand;
.source "Wm.java"


# instance fields
.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lcom/android/commands/wm/Wm;

    invoke-direct {v0}, Lcom/android/commands/wm/Wm;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/wm/Wm;->run([Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private runDisplayDensity()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "densityStr":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 136
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v4

    .line 137
    .local v4, "initialDensity":I
    iget-object v5, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v0

    .line 138
    .local v0, "baseDensity":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Physical density: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    if-eq v4, v0, :cond_0

    .line 140
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Override density: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 169
    .end local v0    # "baseDensity":I
    .end local v4    # "initialDensity":I
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v5, "reset"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    const/4 v1, -0x1

    .line 161
    .local v1, "density":I
    :cond_2
    if-lez v1, :cond_4

    .line 163
    :try_start_1
    iget-object v5, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v1}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v5

    goto :goto_0

    .line 149
    .end local v1    # "density":I
    :cond_3
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 154
    .restart local v1    # "density":I
    const/16 v5, 0x48

    if-ge v1, v5, :cond_2

    .line 155
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: density must be >= 72"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v1    # "density":I
    :catch_1
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: bad number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "density":I
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->clearForcedDisplayDensity(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 142
    .end local v1    # "density":I
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private runDisplayOverscan()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "overscanStr":Ljava/lang/String;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 175
    .local v9, "rect":Landroid/graphics/Rect;
    const-string v0, "reset"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 192
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowManager;->setOverscan(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_1
    return-void

    .line 178
    :cond_0
    const-string v0, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 180
    .local v6, "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 181
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad rectangle arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 186
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 187
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 188
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 193
    .end local v6    # "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private runDisplaySize()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "size":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 89
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 90
    .local v5, "initialSize":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 92
    .local v0, "baseSize":Landroid/graphics/Point;
    :try_start_0
    iget-object v9, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v5}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 93
    iget-object v9, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 94
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Physical size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v5, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 96
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Override size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    .end local v0    # "baseSize":Landroid/graphics/Point;
    .end local v5    # "initialSize":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v9, "reset"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 102
    const/4 v3, -0x1

    .local v3, "h":I
    move v7, v3

    .line 121
    .local v7, "w":I
    :goto_1
    if-ltz v7, :cond_5

    if-ltz v3, :cond_5

    .line 123
    :try_start_1
    iget-object v9, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v7, v3}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v9

    goto :goto_0

    .line 104
    .end local v3    # "h":I
    .end local v7    # "w":I
    :cond_2
    const/16 v9, 0x78

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 105
    .local v1, "div":I
    if-lez v1, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt v1, v9, :cond_4

    .line 106
    :cond_3
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "wstr":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "hstr":Ljava/lang/String;
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 113
    .restart local v7    # "w":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .restart local v3    # "h":I
    goto :goto_1

    .line 114
    .end local v3    # "h":I
    .end local v7    # "w":I
    :catch_1
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v1    # "div":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "hstr":Ljava/lang/String;
    .end local v8    # "wstr":Ljava/lang/String;
    .restart local v3    # "h":I
    .restart local v7    # "w":I
    :cond_5
    :try_start_3
    iget-object v9, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 98
    .end local v3    # "h":I
    .end local v7    # "w":I
    .restart local v0    # "baseSize":Landroid/graphics/Point;
    .restart local v5    # "initialSize":Landroid/graphics/Point;
    :catch_2
    move-exception v9

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
    .line 64
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    .line 66
    iget-object v1, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to window manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "op":Ljava/lang/String;
    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDisplaySize()V

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v1, "density"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDisplayDensity()V

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "overscan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDisplayOverscan()V

    goto :goto_0

    .line 80
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

    invoke-virtual {p0, v1}, Lcom/android/commands/wm/Wm;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 49
    const-string v0, "usage: wm [subcommand] [options]\n       wm size [reset|WxH]\n       wm density [reset|DENSITY]\n       wm overscan [reset|LEFT,TOP,RIGHT,BOTTOM]\n\nwm size: return or override display size.\n\nwm density: override display density.\n\nwm overscan: set overscan area for display.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    return-void
.end method
