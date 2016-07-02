.class final Lcom/android/commands/uiautomator/Launcher$1;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uiautomator/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 102
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Usage: uiautomator <subcommand> [options]\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Available subcommands:\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    # getter for: Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-static {}, Lcom/android/commands/uiautomator/Launcher;->access$000()[Lcom/android/commands/uiautomator/Launcher$Command;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/commands/uiautomator/Launcher$Command;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 105
    .local v1, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-virtual {v1}, Lcom/android/commands/uiautomator/Launcher$Command;->shortHelp()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "shortHelp":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/commands/uiautomator/Launcher$Command;->detailedOptions()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "detailedOptions":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 108
    const-string v5, ""

    .line 110
    :cond_0
    if-nez v2, :cond_1

    .line 111
    const-string v2, ""

    .line 113
    :cond_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/android/commands/uiautomator/Launcher$Command;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    .end local v2    # "detailedOptions":Ljava/lang/String;
    .end local v5    # "shortHelp":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "displays help message"

    return-object v0
.end method
