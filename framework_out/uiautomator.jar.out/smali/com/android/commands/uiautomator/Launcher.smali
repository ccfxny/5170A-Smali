.class public Lcom/android/commands/uiautomator/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uiautomator/Launcher$Command;
    }
.end annotation


# static fields
.field private static COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

.field private static HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lcom/android/commands/uiautomator/Launcher$1;

    const-string v1, "help"

    invoke-direct {v0, v1}, Lcom/android/commands/uiautomator/Launcher$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/commands/uiautomator/Launcher$Command;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/commands/uiautomator/RunTestCommand;

    invoke-direct {v2}, Lcom/android/commands/uiautomator/RunTestCommand;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/commands/uiautomator/DumpCommand;

    invoke-direct {v2}, Lcom/android/commands/uiautomator/DumpCommand;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/commands/uiautomator/EventsCommand;

    invoke-direct {v2}, Lcom/android/commands/uiautomator/EventsCommand;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000()[Lcom/android/commands/uiautomator/Launcher$Command;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    return-object v0
.end method

.method private static findCommand(Ljava/lang/String;)Lcom/android/commands/uiautomator/Launcher$Command;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    .local v0, "arr$":[Lcom/android/commands/uiautomator/Launcher$Command;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 92
    .local v1, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-virtual {v1}, Lcom/android/commands/uiautomator/Launcher$Command;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    .end local v1    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :goto_1
    return-object v1

    .line 91
    .restart local v1    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    const-string v2, "uiautomator"

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 75
    array-length v2, p0

    if-lt v2, v3, :cond_1

    .line 76
    aget-object v2, p0, v4

    invoke-static {v2}, Lcom/android/commands/uiautomator/Launcher;->findCommand(Ljava/lang/String;)Lcom/android/commands/uiautomator/Launcher$Command;

    move-result-object v1

    .line 77
    .local v1, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    if-eqz v1, :cond_1

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    .line 79
    .local v0, "args2":[Ljava/lang/String;
    array-length v2, p0

    if-le v2, v3, :cond_0

    .line 81
    array-length v2, p0

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "args2":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 83
    .restart local v0    # "args2":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/commands/uiautomator/Launcher$Command;->run([Ljava/lang/String;)V

    .line 88
    .end local v0    # "args2":[Ljava/lang/String;
    .end local v1    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v2, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    invoke-virtual {v2, p0}, Lcom/android/commands/uiautomator/Launcher$Command;->run([Ljava/lang/String;)V

    goto :goto_0
.end method
