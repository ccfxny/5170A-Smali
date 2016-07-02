.class public Landroid/test/suitebuilder/TestSuiteBuilder;
.super Ljava/lang/Object;
.source "TestSuiteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentClassname:Ljava/lang/String;

.field private final predicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private rootSuite:Ljunit/framework/TestSuite;

.field private suiteForCurrentClass:Ljunit/framework/TestSuite;

.field private suiteName:Ljava/lang/String;

.field private testCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private final testGrouping:Landroid/test/suitebuilder/TestGrouping;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/test/suitebuilder/TestGrouping;

    sget-object v1, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    .line 66
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    invoke-virtual {v0, p2}, Landroid/test/suitebuilder/TestGrouping;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 68
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/util/Predicate;

    const/4 v1, 0x0

    sget-object v2, Landroid/test/suitebuilder/TestPredicates;->REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 70
    return-void
.end method

.method private addSuiteIfNecessary(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentClassname"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    .line 271
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    .line 272
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    iget-object v1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 274
    :cond_0
    return-void
.end method

.method private addTest(Landroid/test/suitebuilder/TestMethod;)V
    .locals 2
    .param p1, "testMethod"    # Landroid/test/suitebuilder/TestMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClassname()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addSuiteIfNecessary(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->createTest()Ljunit/framework/TestCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 261
    return-void
.end method

.method private addTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addSuiteIfNecessary(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    invoke-virtual {v0, p1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 266
    return-void
.end method

.method private static parsePackageNameFromClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z
    .locals 3
    .param p1, "test"    # Landroid/test/suitebuilder/TestMethod;

    .prologue
    .line 250
    iget-object v2, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/Predicate;

    .line 251
    .local v1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    invoke-interface {v1, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const/4 v2, 0x0

    .line 255
    .end local v1    # "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;)",
            "Landroid/test/suitebuilder/TestSuiteBuilder;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    return-object p0
.end method

.method public final varargs addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;)",
            "Landroid/test/suitebuilder/TestSuiteBuilder;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "predicates":[Lcom/android/internal/util/Predicate;, "[Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 3
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    .line 77
    .local v0, "atr":Landroid/test/AndroidTestRunner;
    invoke-virtual {v0, p3}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/test/AndroidTestRunner;->setTestClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-virtual {v0}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    return-object p0
.end method

.method public addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 3
    .param p1, "testSuite"    # Ljunit/framework/TestSuite;

    .prologue
    .line 86
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 87
    .local v1, "testCase":Ljunit/framework/TestCase;
    iget-object v2, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v1    # "testCase":Ljunit/framework/TestCase;
    :cond_0
    return-object p0
.end method

.method public final build()Ljunit/framework/TestSuite;
    .locals 7

    .prologue
    .line 175
    new-instance v5, Ljunit/framework/TestSuite;

    invoke-virtual {p0}, Landroid/test/suitebuilder/TestSuiteBuilder;->getSuiteName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    .line 178
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    .line 180
    :try_start_0
    iget-object v5, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    invoke-virtual {v5}, Landroid/test/suitebuilder/TestGrouping;->getTests()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/test/suitebuilder/TestMethod;

    .line 181
    .local v3, "test":Landroid/test/suitebuilder/TestMethod;
    invoke-direct {p0, v3}, Landroid/test/suitebuilder/TestSuiteBuilder;->satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    invoke-direct {p0, v3}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTest(Landroid/test/suitebuilder/TestMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "test":Landroid/test/suitebuilder/TestMethod;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "exception":Ljava/lang/Exception;
    const-string v5, "TestSuiteBuilder"

    const-string v6, "Failed to create test."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    new-instance v2, Ljunit/framework/TestSuite;

    invoke-virtual {p0}, Landroid/test/suitebuilder/TestSuiteBuilder;->getSuiteName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "suite":Ljunit/framework/TestSuite;
    new-instance v5, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;

    invoke-direct {v5, v0}, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v2, v5}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 198
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v2    # "suite":Ljunit/framework/TestSuite;
    :goto_1
    return-object v2

    .line 185
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 186
    iget-object v5, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljunit/framework/TestCase;

    .line 187
    .local v4, "testCase":Ljunit/framework/TestCase;
    new-instance v5, Landroid/test/suitebuilder/TestMethod;

    invoke-direct {v5, v4}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljunit/framework/TestCase;)V

    invoke-direct {p0, v5}, Landroid/test/suitebuilder/TestSuiteBuilder;->satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    invoke-direct {p0, v4}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTest(Ljunit/framework/Test;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 198
    .end local v4    # "testCase":Ljunit/framework/TestCase;
    :cond_3
    iget-object v2, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    goto :goto_1
.end method

.method public varargs excludePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    invoke-virtual {v0, p1}, Landroid/test/suitebuilder/TestGrouping;->removePackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;

    .line 112
    return-object p0
.end method

.method protected getSuiteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTestGrouping()Landroid/test/suitebuilder/TestGrouping;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    return-object v0
.end method

.method public final includeAllPackagesUnderHere()Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 8

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 135
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .line 136
    .local v0, "callingClassName":Ljava/lang/String;
    const-class v6, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "thisClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 141
    aget-object v1, v4, v2

    .line 142
    .local v1, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "includeAllPackagesUnderHere"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    add-int/lit8 v6, v2, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 151
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->parsePackageNameFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "packageName":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {p0, v6}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    move-result-object v6

    return-object v6

    .line 140
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    invoke-virtual {v0, p1}, Landroid/test/suitebuilder/TestGrouping;->addPackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;

    .line 101
    return-object p0
.end method

.method public named(Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 0
    .param p1, "newSuiteName"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    .line 166
    return-object p0
.end method
