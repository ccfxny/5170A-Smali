.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleResultPrinter"
.end annotation


# instance fields
.field private final mFullOutput:Z

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V
    .locals 0
    .param p2, "writer"    # Ljava/io/PrintStream;
    .param p3, "fullOutput"    # Z

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 380
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 381
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    .line 382
    return-void
.end method


# virtual methods
.method public print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J
    .param p4, "testOutput"    # Landroid/os/Bundle;

    .prologue
    .line 386
    invoke-virtual {p0, p2, p3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printHeader(J)V

    .line 387
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printErrors(Ljunit/framework/TestResult;)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFailures(Ljunit/framework/TestResult;)V

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFooter(Ljunit/framework/TestResult;)V

    .line 392
    return-void
.end method

.method public printUnexpectedError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "Test run aborted due to unexpected exeption: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 399
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 401
    :cond_0
    return-void
.end method
