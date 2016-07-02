.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# static fields
.field private static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field private static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field private static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field private static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_VALUE_ID:Ljava/lang/String; = "UiAutomatorTestRunner"

.field private static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field private static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field private static final REPORT_VALUE_RESULT_START:I = 0x1


# instance fields
.field private final mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

.field private final mResultTemplate:Landroid/os/Bundle;

.field private final mStream:Ljava/io/ByteArrayOutputStream;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field private final mWriter:Ljava/io/PrintStream;

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V
    .locals 4
    .param p2, "numTests"    # I

    .prologue
    const/4 v3, 0x0

    .line 268
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    .line 261
    iput v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    .line 270
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "UiAutomatorTestRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "numtests"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    .line 274
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    .line 275
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    invoke-direct {v0, p1, v1, v3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    .line 276
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 325
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v2, "stream"

    const-string v3, "\nError in %s:\n%s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 330
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 337
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v2, "stream"

    const-string v3, "\nFailure in %s:\n%s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    .line 342
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 3
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 346
    iget v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    # getter for: Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;
    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v0

    iget v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 351
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->endTest(Ljunit/framework/Test;)V

    .line 352
    return-void
.end method

.method public print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
    .locals 6
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J
    .param p4, "testOutput"    # Landroid/os/Bundle;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 357
    const-string v0, "stream"

    const-string v1, "\nTest results for %s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 362
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    # getter for: Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;
    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1, p4}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method public printUnexpectedError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    const-string v1, "Test run aborted due to unexpected exception: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 370
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 10
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "testClass":Ljava/lang/String;
    move-object v4, p1

    .line 285
    check-cast v4, Ljunit/framework/TestCase;

    invoke-virtual {v4}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "testName":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    .line 287
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "class"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "test"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "current"

    iget v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "stream"

    const-string v6, "\n%s:"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 299
    :goto_0
    const/4 v2, 0x0

    .line 301
    .local v2, "testMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 303
    const-class v4, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    const-class v4, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/test/RepetitiveTest;

    invoke-interface {v4}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v0

    .line 306
    .local v0, "numIterations":I
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "numiterations"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0    # "numIterations":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    # getter for: Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;
    invoke-static {v4}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-interface {v4, v9, v5}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 315
    iput v8, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 317
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v4, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->startTest(Ljunit/framework/Test;)V

    .line 318
    return-void

    .line 296
    .end local v2    # "testMethod":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v4, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v5, "stream"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .restart local v2    # "testMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
