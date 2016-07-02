.class public Landroid/test/TestCaseUtil;
.super Ljava/lang/Object;
.source "TestCaseUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createTestSuite(Ljava/lang/Class;)Ljunit/framework/TestSuite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)",
            "Ljunit/framework/TestSuite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    move-result-object v0

    .line 160
    .local v0, "test":Ljunit/framework/Test;
    if-nez v0, :cond_0

    .line 161
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-direct {v1, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    .line 169
    .end local v0    # "test":Ljunit/framework/Test;
    :goto_0
    return-object v1

    .line 163
    .restart local v0    # "test":Ljunit/framework/Test;
    :cond_0
    const-class v2, Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v1, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    goto :goto_0

    .line 169
    .end local v1    # "testSuite":Ljunit/framework/TestSuite;
    :cond_1
    check-cast v0, Ljunit/framework/TestSuite;

    .end local v0    # "test":Ljunit/framework/Test;
    move-object v1, v0

    goto :goto_0
.end method

.method public static getTestAtIndex(Ljunit/framework/TestSuite;I)Ljunit/framework/Test;
    .locals 4
    .param p0, "testSuite"    # Ljunit/framework/TestSuite;
    .param p1, "position"    # I

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "index":I
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v0

    .line 145
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/Test;

    .line 147
    .local v2, "test":Ljunit/framework/Test;
    if-ne v1, p1, :cond_0

    .line 152
    .end local v2    # "test":Ljunit/framework/Test;
    :goto_1
    return-object v2

    .line 150
    .restart local v2    # "test":Ljunit/framework/Test;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_0

    .line 152
    .end local v2    # "test":Ljunit/framework/Test;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTestCaseNames(Ljunit/framework/Test;Z)Ljava/util/List;
    .locals 5
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, "tests":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/Test;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 47
    .local v2, "testCaseNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/Test;

    .line 48
    .local v0, "aTest":Ljunit/framework/Test;
    invoke-static {v0}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "aTest":Ljunit/framework/Test;
    :cond_0
    return-object v2
.end method

.method public static getTestName(Ljunit/framework/Test;)Ljava/lang/String;
    .locals 5
    .param p0, "test"    # Ljunit/framework/Test;

    .prologue
    .line 124
    instance-of v4, p0, Ljunit/framework/TestCase;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 125
    check-cast v2, Ljunit/framework/TestCase;

    .line 126
    .local v2, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .end local v2    # "testCase":Ljunit/framework/TestCase;
    :cond_0
    :goto_0
    return-object v1

    .line 127
    :cond_1
    instance-of v4, p0, Ljunit/framework/TestSuite;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 128
    check-cast v3, Ljunit/framework/TestSuite;

    .line 129
    .local v3, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v3}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 131
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "index":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 133
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    .end local v0    # "index":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "testSuite":Ljunit/framework/TestSuite;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getTests(Ljunit/framework/Test;Z)Ljava/util/List;
    .locals 1
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;
    .locals 6
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/Test;>;"
    if-eqz p0, :cond_4

    .line 62
    const/4 v4, 0x0

    .line 68
    .local v4, "workingTest":Ljunit/framework/Test;
    instance-of v5, p0, Ljunit/framework/TestCase;

    if-eqz v5, :cond_0

    move-object v5, p0

    check-cast v5, Ljunit/framework/TestCase;

    invoke-virtual {v5}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    move-result-object v4

    .line 73
    :cond_0
    if-nez v4, :cond_1

    .line 74
    move-object v4, p0

    .line 77
    :cond_1
    instance-of v5, v4, Ljunit/framework/TestSuite;

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 78
    check-cast v3, Ljunit/framework/TestSuite;

    .line 79
    .local v3, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v3}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v1

    .line 80
    .local v1, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/Test;

    .line 82
    .local v0, "childTest":Ljunit/framework/Test;
    if-eqz p1, :cond_2

    .line 83
    invoke-static {v0, p1, p2}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0    # "childTest":Ljunit/framework/Test;
    .end local v1    # "enumeration":Ljava/util/Enumeration;
    .end local v3    # "testSuite":Ljunit/framework/TestSuite;
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v4    # "workingTest":Ljunit/framework/Test;
    :cond_4
    return-object v2
.end method

.method private static invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;
    .locals 4
    .param p0, "testClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljunit/framework/Test;"
        }
    .end annotation

    .prologue
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    .line 98
    :try_start_0
    const-string v1, "suite"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    .local v0, "suiteMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_1
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/Test;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .end local v0    # "suiteMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v1

    :cond_0
    :goto_1
    move-object v1, v2

    .line 120
    goto :goto_0

    .line 113
    .restart local v0    # "suiteMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 111
    :catch_2
    move-exception v1

    goto :goto_1
.end method
