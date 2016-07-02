.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    }
.end annotation


# static fields
.field private static final EXIT_EXCEPTION:I = -0x1

.field private static final EXIT_OK:I = 0x0

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomatorTestRunner-UiAutomatorHandlerThread"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mDebug:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMonkey:Z

.field private mParams:Landroid/os/Bundle;

.field private mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;

.field private final mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 66
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 67
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    .line 68
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    .line 377
    return-void
.end method

.method static synthetic access$100(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .locals 1
    .param p0, "x0"    # Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    return-object v0
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    return-void
.end method

.method protected getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 405
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector;

    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;-><init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V

    return-object v0
.end method

.method public getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    invoke-direct {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;-><init>()V

    return-object v0
.end method

.method protected prepareTestCase(Ljunit/framework/TestCase;)V
    .locals 2
    .param p1, "testCase"    # Ljunit/framework/TestCase;

    .prologue
    .line 433
    move-object v0, p1

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V

    move-object v0, p1

    .line 434
    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V

    .line 435
    check-cast p1, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    .end local p1    # "testCase":Ljunit/framework/TestCase;
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setParams(Landroid/os/Bundle;)V

    .line 436
    return-void
.end method

.method protected removeTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method public run(Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 2
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "debug"    # Z
    .param p4, "monkey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "testClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 92
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 94
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    .line 95
    iput-boolean p4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mMonkey:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->start()V

    .line 97
    sget-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    const-string v1, "calling System exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 99
    return-void
.end method

.method protected start()V
    .locals 28

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;

    move-result-object v5

    .line 107
    .local v5, "collector":Lcom/android/uiautomator/testrunner/TestCaseCollector;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClasses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 113
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 115
    :cond_0
    new-instance v24, Landroid/os/HandlerThread;

    const-string v25, "UiAutomatorTestRunner-UiAutomatorHandlerThread"

    invoke-direct/range {v24 .. v25}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v4, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    invoke-direct {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    .line 119
    .local v4, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 122
    .local v16, "startTime":J
    new-instance v22, Ljunit/framework/TestResult;

    invoke-direct/range {v22 .. v22}, Ljunit/framework/TestResult;-><init>()V

    .line 124
    .local v22, "testRunResult":Ljunit/framework/TestResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "outputFormat"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "outputFormat":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->getTestCases()Ljava/util/List;

    move-result-object v20

    .line 126
    .local v20, "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v21, "testRunOutput":Landroid/os/Bundle;
    const-string v24, "simple"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 128
    new-instance v13, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v13, v0, v1, v2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V

    .line 133
    .local v13, "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mMonkey:Z

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    .line 134
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;

    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;-><init>(Landroid/app/UiAutomation;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/uiautomator/core/UiDevice;->initialize(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "traceOutputMode"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 138
    .local v23, "traceType":Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 139
    const-class v24, Lcom/android/uiautomator/core/Tracer$Mode;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/uiautomator/core/Tracer$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/android/uiautomator/core/Tracer$Mode;

    .line 140
    .local v10, "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    sget-object v24, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    move-object/from16 v0, v24

    if-eq v10, v0, :cond_1

    sget-object v24, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_4

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "traceLogFilename"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "filename":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 143
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Name of log file not specified. Please specify it using traceLogFilename parameter"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v7    # "filename":Ljava/lang/String;
    .end local v10    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    .end local v23    # "traceType":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 165
    .local v18, "t":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->printUnexpectedError(Ljava/lang/Throwable;)V

    .line 166
    const-string v24, "shortMsg"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v14, v24, v16

    .line 169
    .local v14, "runTime":J
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v14, v15, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 170
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 171
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result v12

    .line 173
    .local v12, "quit_result":Z
    sget-object v24, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "all case run finished going to quit, HandlerThread quit result : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 179
    .end local v18    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 108
    .end local v4    # "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    .end local v11    # "outputFormat":Ljava/lang/String;
    .end local v12    # "quit_result":Z
    .end local v13    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    .end local v14    # "runTime":J
    .end local v16    # "startTime":J
    .end local v20    # "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    .end local v21    # "testRunOutput":Landroid/os/Bundle;
    .end local v22    # "testRunResult":Ljunit/framework/TestResult;
    :catch_1
    move-exception v6

    .line 110
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    new-instance v24, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 130
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    .restart local v11    # "outputFormat":Ljava/lang/String;
    .restart local v16    # "startTime":J
    .restart local v20    # "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestCase;>;"
    .restart local v21    # "testRunOutput":Landroid/os/Bundle;
    .restart local v22    # "testRunResult":Ljunit/framework/TestResult;
    :cond_2
    new-instance v13, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v13, v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V

    .restart local v13    # "resultPrinter":Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    goto/16 :goto_0

    .line 146
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v10    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    .restart local v23    # "traceType":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/uiautomator/core/Tracer;->setOutputFilename(Ljava/lang/String;)V

    .line 148
    .end local v7    # "filename":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/android/uiautomator/core/Tracer;->setOutputMode(Lcom/android/uiautomator/core/Tracer$Mode;)V

    .line 152
    .end local v10    # "mode":Lcom/android/uiautomator/core/Tracer$Mode;
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljunit/framework/TestListener;

    .line 155
    .local v9, "listener":Ljunit/framework/TestListener;
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 168
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "listener":Ljunit/framework/TestListener;
    .end local v23    # "traceType":Ljava/lang/String;
    :catchall_0
    move-exception v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v14, v26, v16

    .line 169
    .restart local v14    # "runTime":J
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v14, v15, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 170
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 171
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result v12

    .line 173
    .restart local v12    # "quit_result":Z
    sget-object v25, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "all case run finished going to quit, HandlerThread quit result : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/HandlerThread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    :goto_3
    throw v24

    .line 159
    .end local v12    # "quit_result":Z
    .end local v14    # "runTime":J
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v23    # "traceType":Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljunit/framework/TestCase;

    .line 160
    .local v19, "testCase":Ljunit/framework/TestCase;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->prepareTestCase(Ljunit/framework/TestCase;)V

    .line 161
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 168
    .end local v19    # "testCase":Ljunit/framework/TestCase;
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v14, v24, v16

    .line 169
    .restart local v14    # "runTime":J
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v14, v15, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 170
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 171
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setRunAsMonkey(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result v12

    .line 173
    .restart local v12    # "quit_result":Z
    sget-object v24, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "all case run finished going to quit, HandlerThread quit result : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->join()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 176
    :catch_2
    move-exception v24

    goto/16 :goto_1

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v23    # "traceType":Ljava/lang/String;
    :catch_3
    move-exception v25

    goto :goto_3

    .restart local v18    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v24

    goto/16 :goto_1
.end method
