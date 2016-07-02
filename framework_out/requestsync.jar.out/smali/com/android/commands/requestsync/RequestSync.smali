.class public Lcom/android/commands/requestsync/RequestSync;
.super Ljava/lang/Object;
.source "RequestSync.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mArgs:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    new-instance v1, Lcom/android/commands/requestsync/RequestSync;

    invoke-direct {v1}, Lcom/android/commands/requestsync/RequestSync;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/requestsync/RequestSync;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 50
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 54
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 190
    .local v0, "arg":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 195
    .end local v0    # "arg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    aget-object v0, v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 195
    goto :goto_0
.end method

.method private nextArgRequired()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 203
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 161
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    move-object v0, v2

    .line 184
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    iget v4, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    aget-object v0, v3, v4

    .line 167
    .local v0, "arg":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 168
    goto :goto_0

    .line 170
    :cond_2
    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 171
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 172
    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    .line 177
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_4
    iput-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_5
    iput-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseArgs()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextOption()Ljava/lang/String;

    move-result-object v1

    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 90
    const-string v5, "-h"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "--help"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    .line 155
    :goto_1
    return v3

    .line 93
    :cond_1
    const-string v5, "-n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "--account-name"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_3
    const-string v5, "-t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "--account-type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 96
    :cond_4
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_5
    const-string v5, "-a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "--authority"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 98
    :cond_6
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_7
    const-string v5, "--is"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "--ignore-settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 100
    :cond_8
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "ignore_settings"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 101
    :cond_9
    const-string v5, "--ib"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "--ignore-backoff"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 102
    :cond_a
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "ignore_backoff"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 103
    :cond_b
    const-string v5, "--dd"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "--discard-deletions"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 104
    :cond_c
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "discard_deletions"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 105
    :cond_d
    const-string v5, "--nr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "--no-retry"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 106
    :cond_e
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "do_not_retry"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 107
    :cond_f
    const-string v5, "--ex"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "--expedited"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 108
    :cond_10
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "expedited"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 109
    :cond_11
    const-string v5, "-i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "--initialize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 110
    :cond_12
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "initialize"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 111
    :cond_13
    const-string v5, "-m"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "--manual"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 112
    :cond_14
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "force"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 113
    :cond_15
    const-string v5, "--od"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "--override-deletions"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 114
    :cond_16
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "deletions_override"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 115
    :cond_17
    const-string v5, "-u"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "--upload-only"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 116
    :cond_18
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const-string v6, "upload"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 117
    :cond_19
    const-string v5, "-e"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "--es"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "--extra-string"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 118
    :cond_1a
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1b
    const-string v5, "--esn"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "--extra-string-null"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 122
    :cond_1c
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "key":Ljava/lang/String;
    :cond_1d
    const-string v5, "--ei"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "--extra-int"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 125
    :cond_1e
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 128
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1f
    const-string v5, "--el"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "--extra-long"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 129
    :cond_20
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_21
    const-string v5, "--ef"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "--extra-float"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 133
    :cond_22
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_23
    const-string v5, "--ed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "--extra-double"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 137
    :cond_24
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 139
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_25
    const-string v5, "--ez"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    const-string v5, "--extra-bool"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 141
    :cond_26
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 142
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 145
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_27
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    goto/16 :goto_1

    .line 151
    :cond_28
    iget v5, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    iget-object v6, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_29

    .line 152
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    goto/16 :goto_1

    :cond_29
    move v3, v4

    .line 155
    goto/16 :goto_1
.end method

.method private run([Ljava/lang/String;)V
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    .line 60
    iput v8, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    .line 62
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->parseArgs()Z

    move-result v3

    .line 63
    .local v3, "ok":Z
    if-eqz v3, :cond_4

    .line 64
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v0, Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "account":Landroid/accounts/Account;
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Requesting sync for: \n"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 68
    if-eqz v0, :cond_1

    .line 69
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  Account: %s (%s)\n"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 74
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "  Authority: %s\n"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    :goto_2
    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 76
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  Extras:\n"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 78
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "    %s: %s\n"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    iget-object v7, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    .line 64
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  Account: all\n"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    .line 74
    :cond_2
    const-string v4, "All"

    goto :goto_2

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_4
    return-void
.end method

.method private static showUsage()V
    .locals 2

    .prologue
    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: requestsync [options]\nWith no options, a sync will be requested for all account and all sync\nauthorities with no extras. Options can be:\n    -h|--help: Display this message\n    -n|--account-name <ACCOUNT-NAME>\n    -t|--account-type <ACCOUNT-TYPE>\n    -a|--authority <AUTHORITY>\n  Add ContentResolver extras:\n    --is|--ignore-settings: Add SYNC_EXTRAS_IGNORE_SETTINGS\n    --ib|--ignore-backoff: Add SYNC_EXTRAS_IGNORE_BACKOFF\n    --dd|--discard-deletions: Add SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS\n    --nr|--no-retry: Add SYNC_EXTRAS_DO_NOT_RETRY\n    --ex|--expedited: Add SYNC_EXTRAS_EXPEDITED\n    --i|--initialize: Add SYNC_EXTRAS_INITIALIZE\n    --m|--manual: Add SYNC_EXTRAS_MANUAL\n    --od|--override-deletions: Add SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS\n    --u|--upload-only: Add SYNC_EXTRAS_UPLOAD\n  Add custom extras:\n    -e|--es|--extra-string <KEY> <VALUE>\n    --esn|--extra-string-null <KEY>\n    --ei|--extra-int <KEY> <VALUE>\n    --el|--extra-long <KEY> <VALUE>\n    --ef|--extra-float <KEY> <VALUE>\n    --ed|--extra-double <KEY> <VALUE>\n    --ez|--extra-bool <KEY> <VALUE>\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    return-void
.end method
