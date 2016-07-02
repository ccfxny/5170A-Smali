.class Lcom/android/commands/appwidget/AppWidget$Parser;
.super Ljava/lang/Object;
.source "AppWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/appwidget/AppWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# static fields
.field private static final ARGUMENT_GRANT_BIND:Ljava/lang/String; = "grantbind"

.field private static final ARGUMENT_PACKAGE:Ljava/lang/String; = "--package"

.field private static final ARGUMENT_PREFIX:Ljava/lang/String; = "--"

.field private static final ARGUMENT_REVOKE_BIND:Ljava/lang/String; = "revokebind"

.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final VALUE_USER_CURRENT:Ljava/lang/String; = "current"


# instance fields
.field private final mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    invoke-direct {v0, p1}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    .line 66
    return-void
.end method

.method private argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    # invokes: Lcom/android/commands/appwidget/AppWidget$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->access$000(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value for argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    return-object v0
.end method

.method private parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;
    .locals 7
    .param p1, "granted"    # Z

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 89
    .local v3, "userId":I
    :goto_0
    iget-object v4, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    # invokes: Lcom/android/commands/appwidget/AppWidget$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->access$000(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 90
    const-string v4, "--package"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/android/commands/appwidget/AppWidget$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_0
    const-string v4, "--user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-direct {p0, v0}, Lcom/android/commands/appwidget/AppWidget$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "user":Ljava/lang/String;
    const-string v4, "current"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const/4 v3, -0x2

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 100
    .end local v2    # "user":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_3
    if-nez v1, :cond_4

    .line 104
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package name not specified. Did you specify --package argument?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_4
    new-instance v4, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    invoke-direct {v4, v1, p1, v3}, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;-><init>(Ljava/lang/String;ZI)V

    return-object v4
.end method


# virtual methods
.method public parseCommand()Ljava/lang/Runnable;
    .locals 5

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    # invokes: Lcom/android/commands/appwidget/AppWidget$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->access$000(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "operation":Ljava/lang/String;
    const-string v2, "grantbind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    move-result-object v2

    .line 81
    .end local v1    # "operation":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 73
    .restart local v1    # "operation":Ljava/lang/String;
    :cond_0
    const-string v2, "revokebind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    move-result-object v2

    goto :goto_0

    .line 76
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "operation":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "usage: adb shell appwidget [subcommand] [options]\n\nusage: adb shell appwidget grantbind --package <PACKAGE>  [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Grant the \"foo.bar.baz\" package to bind app widgets for the current user.\n  adb shell grantbind --package foo.bar.baz --user current\n\nusage: adb shell appwidget revokebind --package <PACKAGE> [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Revoke the permisison to bind app widgets from the \"foo.bar.baz\" package.\n  adb shell revokebind --package foo.bar.baz --user current\n\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    goto :goto_0
.end method
