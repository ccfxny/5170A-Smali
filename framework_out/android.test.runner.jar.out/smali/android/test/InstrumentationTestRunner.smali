.class public Landroid/test/InstrumentationTestRunner;
.super Landroid/app/Instrumentation;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Landroid/test/TestSuiteProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;,
        Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;,
        Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    }
.end annotation


# static fields
.field static final ARGUMENT_ANNOTATION:Ljava/lang/String; = "annotation"

.field public static final ARGUMENT_DELAY_MSEC:Ljava/lang/String; = "delay_msec"

.field private static final ARGUMENT_LOG_ONLY:Ljava/lang/String; = "log"

.field static final ARGUMENT_NOT_ANNOTATION:Ljava/lang/String; = "notAnnotation"

.field public static final ARGUMENT_TEST_CLASS:Ljava/lang/String; = "class"

.field public static final ARGUMENT_TEST_PACKAGE:Ljava/lang/String; = "package"

.field public static final ARGUMENT_TEST_SIZE_PREDICATE:Ljava/lang/String; = "size"

.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final LARGE_SUITE:Ljava/lang/String; = "large"

.field private static final LOG_TAG:Ljava/lang/String; = "InstrumentationTestRunner"

.field private static final MEDIUM_SUITE:Ljava/lang/String; = "medium"

.field private static final MEDIUM_SUITE_MAX_RUNTIME:F = 1000.0f

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_RUN_TIME:Ljava/lang/String; = "runtime"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_KEY_SUITE_ASSIGNMENT:Ljava/lang/String; = "suiteassignment"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "InstrumentationTestRunner"

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final SMALL_SUITE:Ljava/lang/String; = "small"

.field private static final SMALL_SUITE_MAX_RUNTIME:F = 100.0f


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mDebug:Z

.field private mDelayMsec:I

.field private mJustCount:Z

.field private mPackageOfTests:Ljava/lang/String;

.field private final mResults:Landroid/os/Bundle;

.field private mSuiteAssignmentMode:Z

.field private mTestCount:I

.field private mTestRunner:Landroid/test/AndroidTestRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    .line 741
    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestRunner;)I
    .locals 1
    .param p0, "x0"    # Landroid/test/InstrumentationTestRunner;

    .prologue
    .line 173
    iget v0, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I

    return v0
.end method

.method static synthetic access$100(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/test/InstrumentationTestRunner;

    .prologue
    .line 173
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    return-object v0
.end method

.method private generateCoverageReport()V
    .locals 11

    .prologue
    .line 601
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->getCoverageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "coverageFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "coverageFile":Ljava/io/File;
    :try_start_0
    const-string v6, "com.vladium.emma.rt.RT"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 605
    .local v5, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "dumpCoverageData"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 608
    .local v3, "dumpCoverageMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "coverageFilePath"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "currentStream":Ljava/lang/String;
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    const-string v8, "%s\nGenerated code coverage data to %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 631
    .end local v2    # "currentStream":Ljava/lang/String;
    .end local v3    # "dumpCoverageMethod":Ljava/lang/reflect/Method;
    .end local v5    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v4

    .line 619
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Is emma jar on classpath?"

    invoke-direct {p0, v6, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 620
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 621
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 622
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 623
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 624
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v4

    .line 625
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 626
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v4

    .line 627
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 628
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 629
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 507
    if-nez p1, :cond_1

    move-object v0, v2

    .line 522
    :cond_0
    :goto_0
    return-object v0

    .line 511
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 512
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    const-string v3, "InstrumentationTestRunner"

    const-string v4, "Provided annotation value %s is not an Annotation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    move-object v0, v2

    .line 522
    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "InstrumentationTestRunner"

    const-string v4, "Could not find class for specified annotation %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 2
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 480
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_0

    .line 481
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    .line 483
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "tagString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverage.ec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 2
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 494
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_0

    .line 495
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    .line 497
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 1
    .param p1, "sizeArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    const-string v0, "small"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    .line 468
    :goto_0
    return-object v0

    .line 463
    :cond_0
    const-string v0, "medium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    goto :goto_0

    .line 465
    :cond_1
    const-string v0, "large"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    goto :goto_0

    .line 468
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .locals 3
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testSuiteBuilder"    # Landroid/test/suitebuilder/TestSuiteBuilder;

    .prologue
    .line 437
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 438
    .local v0, "methodSeparatorIndex":I
    const/4 v1, 0x0

    .line 440
    .local v1, "testMethodName":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 441
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 444
    :cond_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 445
    return-void
.end method

.method private parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .locals 6
    .param p1, "testClassArg"    # Ljava/lang/String;
    .param p2, "testSuiteBuilder"    # Landroid/test/suitebuilder/TestSuiteBuilder;

    .prologue
    .line 423
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "testClasses":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 425
    .local v3, "testClass":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/test/InstrumentationTestRunner;->parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "testClass":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 643
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 644
    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate emma coverage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InstrumentationTestRunner"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v2, "stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .prologue
    .line 407
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 408
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v0, p1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 410
    :cond_0
    return-void
.end method

.method public getAllTests()Ljunit/framework/TestSuite;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .locals 1

    .prologue
    .line 448
    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestSuite()Ljunit/framework/TestSuite;
    .locals 1

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAllTests()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 305
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    .line 308
    const/4 v13, 0x2

    new-array v2, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    .line 310
    .local v2, "apkPaths":[Ljava/lang/String;
    invoke-static {v2}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    .line 312
    const/4 v10, 0x0

    .line 313
    .local v10, "testSizePredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v7, 0x0

    .line 314
    .local v7, "testAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v9, 0x0

    .line 315
    .local v9, "testNotAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v8, 0x0

    .line 316
    .local v8, "testClassesArg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 318
    .local v5, "logOnly":Z
    if-eqz p1, :cond_0

    .line 320
    const-string v13, "class"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    const-string v13, "debug"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    .line 322
    const-string v13, "count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    .line 323
    const-string v13, "suiteAssignment"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    .line 324
    const-string v13, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    .line 325
    const-string v13, "size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v10

    .line 327
    const-string v13, "annotation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v7

    .line 329
    const-string v13, "notAnnotation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v9

    .line 332
    const-string v13, "log"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    .line 333
    const-string v13, "coverage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    .line 334
    const-string v13, "coverageFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    .line 337
    :try_start_0
    const-string v13, "delay_msec"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 338
    .local v3, "delay":Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v3    # "delay":Ljava/lang/Object;
    :cond_0
    :goto_0
    new-instance v12, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 347
    .local v12, "testSuiteBuilder":Landroid/test/suitebuilder/TestSuiteBuilder;
    if-eqz v10, :cond_1

    .line 348
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 350
    :cond_1
    if-eqz v7, :cond_2

    .line 351
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 353
    :cond_2
    if-eqz v9, :cond_3

    .line 354
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 357
    :cond_3
    if-nez v8, :cond_6

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 359
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 374
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v5}, Landroid/test/AndroidTestRunner;->setSkipExecution(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v12}, Landroid/test/suitebuilder/TestSuiteBuilder;->build()Ljunit/framework/TestSuite;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    .line 382
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    if-eqz v13, :cond_7

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v14, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;-><init>(Landroid/test/InstrumentationTestRunner;)V

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 390
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->start()V

    .line 391
    return-void

    .line 339
    .end local v12    # "testSuiteBuilder":Landroid/test/suitebuilder/TestSuiteBuilder;
    :catch_0
    move-exception v4

    .line 340
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v13, "InstrumentationTestRunner"

    const-string v14, "Invalid delay_msec parameter"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 361
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "testSuiteBuilder":Landroid/test/suitebuilder/TestSuiteBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTestSuite()Ljunit/framework/TestSuite;

    move-result-object v11

    .line 362
    .local v11, "testSuite":Ljunit/framework/TestSuite;
    if-eqz v11, :cond_5

    .line 363
    invoke-virtual {v12, v11}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_1

    .line 367
    :cond_5
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_1

    .line 371
    .end local v11    # "testSuite":Ljunit/framework/TestSuite;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Landroid/test/InstrumentationTestRunner;->parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    goto/16 :goto_1

    .line 385
    :cond_7
    new-instance v6, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;I)V

    .line 386
    .local v6, "resultPrinter":Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v14, Landroid/test/TestPrinter;

    const-string v15, "TestRunner"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/test/TestPrinter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    goto :goto_2
.end method

.method public onStart()V
    .locals 15

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->prepareLooper()V

    .line 538
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    if-eqz v8, :cond_0

    .line 539
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "id"

    const-string v10, "InstrumentationTestRunner"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "numtests"

    iget v10, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    .line 578
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    if-eqz v8, :cond_1

    .line 544
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 547
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 548
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 550
    .local v7, "writer":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Landroid/test/InstrumentationTestRunner$StringResultPrinter;

    invoke-direct {v1, p0, v7}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V

    .line 552
    .local v1, "resultPrinter":Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 555
    .local v4, "startTime":J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->runTest()V

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 558
    .local v2, "runTime":J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->getTestResult()Ljunit/framework/TestResult;

    move-result-object v8

    invoke-virtual {v1, v8, v2, v3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printResult(Ljunit/framework/TestResult;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_2

    .line 571
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 573
    :cond_2
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 575
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 559
    .end local v1    # "resultPrinter":Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    .end local v2    # "runTime":J
    .end local v4    # "startTime":J
    :catch_0
    move-exception v6

    .line 561
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v8, "Test run aborted due to unexpected exception: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_3

    .line 571
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 573
    :cond_3
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 575
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 565
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v10, "stream"

    const-string v11, "\nTest results for %s=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v14}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v9, :cond_4

    .line 571
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 573
    :cond_4
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 575
    const/4 v9, -0x1

    iget-object v10, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v9, v10}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    throw v8
.end method

.method prepareLooper()V
    .locals 0

    .prologue
    .line 531
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 532
    return-void
.end method
