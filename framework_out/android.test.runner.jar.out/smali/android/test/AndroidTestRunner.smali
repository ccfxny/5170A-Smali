.class public Landroid/test/AndroidTestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "AndroidTestRunner.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSkipExecution:Z

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private mTestClassName:Ljava/lang/String;

.field private mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTestResult:Ljunit/framework/TestResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    .line 44
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    return-void
.end method

.method private buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .locals 4
    .param p1, "testClass"    # Ljava/lang/Class;
    .param p2, "testMethodName"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 97
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/test/AndroidTestRunner;->newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v1

    .line 102
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 103
    .restart local v0    # "c":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/test/AndroidTestRunner;->newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 104
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v1

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTest(Ljava/lang/Class;)Ljunit/framework/Test;
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 134
    const-class v2, Landroid/test/TestSuiteProvider;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/test/TestSuiteProvider;

    .line 138
    .local v1, "testSuiteProvider":Landroid/test/TestSuiteProvider;
    invoke-interface {v1}, Landroid/test/TestSuiteProvider;->getTestSuite()Ljunit/framework/TestSuite;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 149
    .end local v1    # "testSuiteProvider":Landroid/test/TestSuiteProvider;
    :goto_0
    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 149
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v2

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access of test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invocation exception test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such method on test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadTestClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "testClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find test class. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private varargs newSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljunit/framework/TestCase;
    .locals 4
    .param p1, "testClass"    # Ljava/lang/Class;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .param p3, "constructor"    # Ljava/lang/reflect/Constructor;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 114
    .local v1, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v1, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 125
    .end local v1    # "testCase":Ljunit/framework/TestCase;
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument passed to constructor. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor thew an exception. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "testContext"    # Landroid/content/Context;

    .prologue
    .line 196
    const-class v0, Landroid/test/AndroidTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 197
    check-cast v0, Landroid/test/AndroidTestCase;

    invoke-virtual {v0, p2}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    .line 198
    check-cast p1, Landroid/test/AndroidTestCase;

    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1, p3}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V

    .line 200
    :cond_0
    return-void
.end method

.method private setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 208
    const-class v0, Landroid/test/InstrumentationTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Landroid/test/InstrumentationTestCase;

    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1, p2}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 211
    :cond_0
    return-void
.end method

.method private setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .prologue
    .line 215
    const-class v0, Landroid/test/PerformanceCollectorTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    check-cast p1, Landroid/test/PerformanceCollectorTestCase;

    .end local p1    # "test":Ljunit/framework/Test;
    invoke-interface {p1, p2}, Landroid/test/PerformanceCollectorTestCase;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    .line 218
    :cond_0
    return-void
.end method

.method private setTest(Ljunit/framework/Test;Ljava/lang/Class;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    .line 67
    const-class v0, Ljunit/framework/TestSuite;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p1}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method private shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "testMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    if-eqz p1, :cond_0

    const-class v0, Ljunit/framework/TestCase;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "testListener"    # Ljunit/framework/TestListener;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public clearTestListeners()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    return-void
.end method

.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Landroid/test/NoExecTestResult;

    invoke-direct {v0}, Landroid/test/NoExecTestResult;-><init>()V

    .line 156
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    goto :goto_0
.end method

.method public getTestCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    return-object v0
.end method

.method public getTestClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestResult()Ljunit/framework/TestResult;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    return-object v0
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "suiteClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runTest()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/test/AndroidTestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/AndroidTestRunner;->runTest(Ljunit/framework/TestResult;)V

    .line 177
    return-void
.end method

.method public runTest(Ljunit/framework/TestResult;)V
    .locals 5
    .param p1, "testResult"    # Ljunit/framework/TestResult;

    .prologue
    .line 180
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    .line 182
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljunit/framework/TestListener;

    .line 183
    .local v3, "testListener":Ljunit/framework/TestListener;
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v4, v3}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    goto :goto_0

    .line 186
    .end local v3    # "testListener":Ljunit/framework/TestListener;
    :cond_0
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    if-nez v4, :cond_1

    iget-object v2, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    .line 187
    .local v2, "testContext":Landroid/content/Context;
    :goto_1
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 188
    .local v1, "testCase":Ljunit/framework/TestCase;
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v4, v2}, Landroid/test/AndroidTestRunner;->setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V

    .line 189
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-direct {p0, v1, v4}, Landroid/test/AndroidTestRunner;->setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V

    .line 190
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-direct {p0, v1, v4}, Landroid/test/AndroidTestRunner;->setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    .line 191
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1, v4}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    goto :goto_2

    .line 186
    .end local v1    # "testCase":Ljunit/framework/TestCase;
    .end local v2    # "testContext":Landroid/content/Context;
    :cond_1
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    .line 193
    .restart local v2    # "testContext":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    .line 204
    return-void
.end method

.method public setInstrumentaiton(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 231
    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 221
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    .line 222
    return-void
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .prologue
    .line 237
    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 238
    return-void
.end method

.method setSkipExecution(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    .line 161
    return-void
.end method

.method public setTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    .line 63
    return-void
.end method

.method public setTestClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/test/AndroidTestRunner;->loadTestClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "testClass":Ljava/lang/Class;
    invoke-direct {p0, p2, v1}, Landroid/test/AndroidTestRunner;->shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-direct {p0, v1, p2}, Landroid/test/AndroidTestRunner;->buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v0

    .line 54
    .local v0, "testCase":Ljunit/framework/TestCase;
    const/4 v2, 0x1

    new-array v2, v2, [Ljunit/framework/TestCase;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    .line 59
    .end local v0    # "testCase":Ljunit/framework/TestCase;
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0, v1}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 249
    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "test"    # Ljunit/framework/Test;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 252
    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "testName"    # Ljava/lang/String;

    .prologue
    .line 246
    return-void
.end method
