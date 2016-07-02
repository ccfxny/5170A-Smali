.class public Ljunit/textui/TestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "TestRunner.java"


# static fields
.field public static final EXCEPTION_EXIT:I = 0x2

.field public static final FAILURE_EXIT:I = 0x1

.field public static final SUCCESS_EXIT:I


# instance fields
.field private fPrinter:Ljunit/textui/ResultPrinter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljava/io/PrintStream;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintStream;

    .prologue
    .line 48
    new-instance v0, Ljunit/textui/ResultPrinter;

    invoke-direct {v0, p1}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljunit/textui/ResultPrinter;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljunit/textui/ResultPrinter;)V
    .locals 0
    .param p1, "printer"    # Ljunit/textui/ResultPrinter;

    .prologue
    .line 54
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 55
    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    .line 56
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 138
    .local v0, "aTestRunner":Ljunit/textui/TestRunner;
    :try_start_0
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->start([Ljava/lang/String;)Ljunit/framework/TestResult;

    move-result-object v2

    .line 139
    .local v2, "r":Ljunit/framework/TestResult;
    invoke-virtual {v2}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 141
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "r":Ljunit/framework/TestResult;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 2
    .param p0, "test"    # Ljunit/framework/Test;

    .prologue
    .line 76
    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 77
    .local v0, "runner":Ljunit/textui/TestRunner;
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    move-result-object v1

    return-object v1
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 63
    return-void
.end method

.method public static runAndWait(Ljunit/framework/Test;)V
    .locals 2
    .param p0, "suite"    # Ljunit/framework/Test;

    .prologue
    .line 85
    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    .line 86
    .local v0, "aTestRunner":Ljunit/textui/TestRunner;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    .line 87
    return-void
.end method


# virtual methods
.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    move-result-object v0

    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    .locals 8
    .param p1, "suite"    # Ljunit/framework/Test;
    .param p2, "wait"    # Z

    .prologue
    .line 113
    invoke-virtual {p0}, Ljunit/textui/TestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v2

    .line 114
    .local v2, "result":Ljunit/framework/TestResult;
    iget-object v3, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v2, v3}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 116
    .local v6, "startTime":J
    invoke-interface {p1, v2}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "endTime":J
    sub-long v4, v0, v6

    .line 119
    .local v4, "runTime":J
    iget-object v3, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v3, v2, v4, v5}, Ljunit/textui/ResultPrinter;->print(Ljunit/framework/TestResult;J)V

    .line 121
    invoke-virtual {p0, p2}, Ljunit/textui/TestRunner;->pause(Z)V

    .line 122
    return-object v2
.end method

.method protected pause(Z)V
    .locals 1
    .param p1, "wait"    # Z

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v0}, Ljunit/textui/ResultPrinter;->printWaitPrompt()V

    .line 129
    :try_start_0
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 196
    return-void
.end method

.method protected runSingleMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljunit/framework/TestResult;
    .locals 4
    .param p1, "testCase"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Ljunit/textui/TestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljunit/framework/TestCase;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 188
    .local v1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-static {v1, p2}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    .line 189
    .local v0, "test":Ljunit/framework/Test;
    invoke-virtual {p0, v0, p3}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    move-result-object v2

    return-object v2
.end method

.method public setPrinter(Ljunit/textui/ResultPrinter;)V
    .locals 0
    .param p1, "printer"    # Ljunit/textui/ResultPrinter;

    .prologue
    .line 199
    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    .line 200
    return-void
.end method

.method public start([Ljava/lang/String;)Ljunit/framework/TestResult;
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    const-string v6, ""

    .line 154
    .local v6, "testCase":Ljava/lang/String;
    const-string v4, ""

    .line 155
    .local v4, "method":Ljava/lang/String;
    const/4 v7, 0x0

    .line 157
    .local v7, "wait":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_4

    .line 158
    aget-object v8, p1, v2

    const-string v9, "-wait"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    const/4 v7, 0x1

    .line 157
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    aget-object v8, p1, v2

    const-string v9, "-c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    add-int/lit8 v2, v2, 0x1

    aget-object v8, p1, v2

    invoke-virtual {p0, v8}, Ljunit/textui/TestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 162
    :cond_1
    aget-object v8, p1, v2

    const-string v9, "-m"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 163
    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    .line 164
    .local v0, "arg":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 165
    .local v3, "lastIndex":I
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 166
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    goto :goto_1

    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    :cond_2
    aget-object v8, p1, v2

    const-string v9, "-v"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 168
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JUnit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " by Kent Beck and Erich Gamma"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_3
    aget-object v6, p1, v2

    goto :goto_1

    .line 173
    :cond_4
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 174
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 177
    :cond_5
    :try_start_0
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 178
    invoke-virtual {p0, v6, v4, v7}, Ljunit/textui/TestRunner;->runSingleMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljunit/framework/TestResult;

    move-result-object v8

    .line 180
    :goto_2
    return-object v8

    .line 179
    :cond_6
    invoke-virtual {p0, v6}, Ljunit/textui/TestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v5

    .line 180
    .local v5, "suite":Ljunit/framework/Test;
    invoke-virtual {p0, v5, v7}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_2

    .line 181
    .end local v5    # "suite":Ljunit/framework/Test;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create and run test suite: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method
