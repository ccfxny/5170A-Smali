.class public Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetAppFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String;

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetAppFrameRateEvent"

.field private static sActivityName:Ljava/lang/String;

.field private static sDuration:F

.field private static sEndFrameNo:I

.field private static sEndTime:J

.field private static sStartFrameNo:I

.field private static sStartTime:J

.field private static sTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "avgAppFrameRateOut.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    .line 53
    const-string v0, ".* ([0-9]*) frames rendered"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 66
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "testCaseName"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "dumpsys gfxinfo %s"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 59
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    .line 60
    sput-object p3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .locals 2
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 78
    int-to-float v1, p1

    div-float v0, v1, p2

    .line 80
    :cond_0
    return v0
.end method

.method private getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "noOfFrames":Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 114
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2
.end method

.method private writeAverageFrameRate()V
    .locals 9

    .prologue
    .line 87
    const/4 v3, 0x0

    .line 89
    .local v3, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 91
    .local v2, "totalNumberOfFrame":I
    :try_start_0
    const-string v5, "MonkeyGetAppFrameRateEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    sget v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    sget v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    sub-int v2, v5, v6

    .line 94
    sget v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    invoke-direct {p0, v2, v5}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getAverageFrameRate(IF)F

    move-result v0

    .line 95
    .local v0, "avgFrameRate":F
    const-string v5, "%s:%.2f\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    if-eqz v4, :cond_0

    .line 101
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 106
    .end local v0    # "avgFrameRate":F
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 102
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "avgFrameRate":F
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MonkeyGetAppFrameRateEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 105
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 96
    .end local v0    # "avgFrameRate":F
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 97
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "MonkeyGetAppFrameRateEvent"

    const-string v6, "Can\'t write sdcard log file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    if-eqz v3, :cond_1

    .line 101
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 102
    :catch_2
    move-exception v1

    .line 103
    const-string v5, "MonkeyGetAppFrameRateEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 100
    :goto_2
    if-eqz v3, :cond_2

    .line 101
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 104
    :cond_2
    :goto_3
    throw v5

    .line 102
    :catch_3
    move-exception v1

    .line 103
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "MonkeyGetAppFrameRateEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 96
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 14
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    .line 124
    const/4 v5, 0x0

    .line 125
    .local v5, "p":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 126
    .local v6, "result":Ljava/io/BufferedReader;
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v8

    .line 130
    .local v8, "status":I
    if-eqz v8, :cond_0

    .line 131
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "// Shell command %s status was %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :cond_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v6    # "result":Ljava/io/BufferedReader;
    .local v7, "result":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "output":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 139
    const-string v9, "start"

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 156
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_2
    if-eqz v5, :cond_3

    .line 159
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v6, v7

    .line 165
    .end local v4    # "output":Ljava/lang/String;
    .end local v7    # "result":Ljava/io/BufferedReader;
    .end local v8    # "status":I
    .restart local v6    # "result":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 142
    .end local v6    # "result":Ljava/io/BufferedReader;
    .restart local v4    # "output":Ljava/lang/String;
    .restart local v7    # "result":Ljava/io/BufferedReader;
    .restart local v8    # "status":I
    :cond_5
    :try_start_3
    const-string v9, "end"

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndTime:J

    .line 145
    sget-wide v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndTime:J

    sget-wide v12, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J

    sub-long v2, v10, v12

    .line 146
    .local v2, "diff":J
    long-to-double v10, v2

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    double-to-float v9, v10

    sput v9, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    .line 147
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->writeAverageFrameRate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 150
    .end local v2    # "diff":J
    .end local v4    # "output":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 151
    .end local v7    # "result":Ljava/io/BufferedReader;
    .end local v8    # "status":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "result":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "// Exception from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    if-eqz v6, :cond_6

    .line 156
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_6
    if-eqz v5, :cond_4

    .line 159
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/io/BufferedReader;
    .restart local v4    # "output":Ljava/lang/String;
    .restart local v7    # "result":Ljava/io/BufferedReader;
    .restart local v8    # "status":I
    :catch_2
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v7

    .line 164
    .end local v7    # "result":Ljava/io/BufferedReader;
    .restart local v6    # "result":Ljava/io/BufferedReader;
    goto :goto_1

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "output":Ljava/lang/String;
    .end local v8    # "status":I
    :catchall_0
    move-exception v9

    .line 155
    :goto_3
    if-eqz v6, :cond_7

    .line 156
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 158
    :cond_7
    if-eqz v5, :cond_8

    .line 159
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 163
    :cond_8
    :goto_4
    throw v9

    .line 161
    :catch_3
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/io/BufferedReader;
    .restart local v7    # "result":Ljava/io/BufferedReader;
    .restart local v8    # "status":I
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "result":Ljava/io/BufferedReader;
    .restart local v6    # "result":Ljava/io/BufferedReader;
    goto :goto_3

    .line 150
    .end local v8    # "status":I
    :catch_4
    move-exception v1

    goto :goto_2
.end method
