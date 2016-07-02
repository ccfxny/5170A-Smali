.class public Lcom/android/commands/uiautomator/RunTestCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "RunTestCommand.java"


# static fields
.field private static final ARG_FAIL_INCOMPLETE_C:I = -0x2

.field private static final ARG_FAIL_INCOMPLETE_E:I = -0x1

.field private static final ARG_FAIL_NO_CLASS:I = -0x3

.field private static final ARG_FAIL_RUNNER:I = -0x4

.field private static final ARG_FAIL_UNSUPPORTED:I = -0x63

.field private static final ARG_OK:I = 0x0

.field private static final CLASS_PARAM:Ljava/lang/String; = "class"

.field private static final CLASS_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final JARS_PARAM:Ljava/lang/String; = "jars"

.field private static final JARS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final OUTPUT_FORMAT_KEY:Ljava/lang/String; = "outputFormat"

.field private static final OUTPUT_SIMPLE:Ljava/lang/String; = "simple"

.field private static final RUNNER_PARAM:Ljava/lang/String; = "runner"


# instance fields
.field private mDebug:Z

.field private mMonkey:Z

.field private final mParams:Landroid/os/Bundle;

.field private mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

.field private mRunnerClassName:Ljava/lang/String;

.field private final mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/commands/uiautomator/RunTestCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/commands/uiautomator/RunTestCommand;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "runtest"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    .line 63
    return-void
.end method

.method private addTestClasses(Ljava/lang/String;)V
    .locals 6
    .param p1, "classes"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "classArray":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 183
    .local v2, "clazz":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "clazz":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private addTestClassesFromJars()V
    .locals 15

    .prologue
    .line 192
    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    const-string v11, "jars"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "jars":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 212
    :cond_0
    return-void

    .line 195
    :cond_1
    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "jarFileNames":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v0, v6

    .line 197
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 196
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 200
    :cond_2
    :try_start_0
    new-instance v2, Ldalvik/system/DexFile;

    invoke-direct {v2, v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "dexFile":Ldalvik/system/DexFile;
    invoke-virtual {v2}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 202
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, "className":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/commands/uiautomator/RunTestCommand;->isTestClass(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 204
    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "dexFile":Ldalvik/system/DexFile;
    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/commands/uiautomator/RunTestCommand;->LOGTAG:Ljava/lang/String;

    const-string v11, "Could not read %s: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "dexFile":Ldalvik/system/DexFile;
    .restart local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ldalvik/system/DexFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isTestClass(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 222
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 226
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 224
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;->accept(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 225
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method private parseArgs([Ljava/lang/String;)I
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_6

    .line 106
    aget-object v3, p1, v0

    const-string v6, "-e"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 107
    add-int/lit8 v3, v0, 0x2

    array-length v6, p1

    if-ge v3, v6, :cond_5

    .line 108
    add-int/lit8 v0, v0, 0x1

    aget-object v1, p1, v0

    .line 109
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    .line 110
    .local v2, "value":Ljava/lang/String;
    const-string v3, "class"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-direct {p0, v2}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    .line 105
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string v3, "debug"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 114
    :cond_3
    const-string v3, "runner"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    iput-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_4
    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    const/4 v4, -0x1

    .line 136
    :cond_6
    :goto_3
    return v4

    .line 122
    :cond_7
    aget-object v3, p1, v0

    const-string v6, "-c"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    add-int/lit8 v3, v0, 0x1

    array-length v6, p1

    if-ge v3, v6, :cond_8

    .line 124
    add-int/lit8 v0, v0, 0x1

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClasses(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_8
    const/4 v4, -0x2

    goto :goto_3

    .line 128
    :cond_9
    aget-object v3, p1, v0

    const-string v6, "--monkey"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 129
    iput-boolean v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    goto :goto_1

    .line 130
    :cond_a
    aget-object v3, p1, v0

    const-string v6, "-s"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 131
    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    const-string v6, "outputFormat"

    const-string v7, "simple"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_b
    const/16 v4, -0x63

    goto :goto_3
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "    runtest <class spec> [options]\n    <class spec>: <JARS> < -c <CLASSES> | -e class <CLASSES> >\n      <JARS>: a list of jar files containing test classes and dependencies. If\n        the path is relative, it\'s assumed to be under /data/local/tmp. Use\n        absolute path if the file is elsewhere. Multiple files can be\n        specified, separated by space.\n      <CLASSES>: a list of test class names to run, separated by comma. To\n        a single method, use TestClass#testMethod format. The -e or -c option\n        may be repeated. This option is not required and if not provided then\n        all the tests in provided jars will be run automatically.\n    options:\n      --nohup: trap SIG_HUP, so test won\'t terminate even if parent process\n               is terminated, e.g. USB is disconnected.\n      -e debug [true|false]: wait for debugger to connect before starting.\n      -e runner [CLASS]: use specified test runner class instead. If\n        unspecified, framework default runner will be used.\n      -e <NAME> <VALUE>: other name-value pairs to be passed to test classes.\n        May be repeated.\n      -e outputFormat simple | -s: enabled less verbose JUnit style output.\n"

    return-object v0
.end method

.method protected getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    .locals 12

    .prologue
    const/4 v11, -0x4

    .line 140
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    if-eqz v8, :cond_0

    .line 141
    iget-object v7, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 173
    :goto_0
    return-object v7

    .line 144
    :cond_0
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 145
    new-instance v8, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {v8}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;-><init>()V

    iput-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 146
    iget-object v7, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    goto :goto_0

    .line 149
    :cond_1
    const/4 v6, 0x0

    .line 151
    .local v6, "o":Ljava/lang/Object;
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 152
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 164
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "o":Ljava/lang/Object;
    :goto_1
    :try_start_1
    move-object v0, v6

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    move-object v7, v0

    .line 165
    .local v7, "runner":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    iput-object v7, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunner:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 167
    .end local v7    # "runner":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "cce":Ljava/lang/ClassCastException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Specified runner is not subclass of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 173
    const/4 v7, 0x0

    goto :goto_0

    .line 153
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    .restart local v6    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 154
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find runner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 156
    .end local v3    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 157
    .local v5, "ie":Ljava/lang/InstantiationException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot instantiate runner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 159
    .end local v5    # "ie":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v4

    .line 160
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Constructor of runner "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mRunnerClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not accessibile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1
.end method

.method public run([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/RunTestCommand;->parseArgs([Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "ret":I
    sparse-switch v0, :sswitch_data_0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->addTestClassesFromJars()V

    .line 86
    iget-object v1, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "No test classes found."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/uiautomator/RunTestCommand;->getRunner()Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mTestClasses:Ljava/util/List;

    iget-object v3, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mParams:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mDebug:Z

    iget-boolean v5, p0, Lcom/android/commands/uiautomator/RunTestCommand;->mMonkey:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->run(Ljava/util/List;Landroid/os/Bundle;ZZ)V

    .line 92
    return-void

    .line 70
    :sswitch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Incomplete \'-c\' parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 74
    :sswitch_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Incomplete \'-e\' parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 78
    :sswitch_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unsupported standalone parameter."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const/16 v1, -0x63

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_2
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "executes UI automation tests"

    return-object v0
.end method
