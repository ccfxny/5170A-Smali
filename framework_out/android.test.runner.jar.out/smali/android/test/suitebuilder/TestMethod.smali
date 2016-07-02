.class public Landroid/test/suitebuilder/TestMethod;
.super Ljava/lang/Object;
.source "TestMethod.java"


# instance fields
.field private final enclosingClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private final enclosingClassname:Ljava/lang/String;

.field private final testMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljunit/framework/TestCase;)V
    .locals 2
    .param p1, "testCase"    # Ljunit/framework/TestCase;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    return-void
.end method

.method private instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .locals 10
    .param p1, "testCaseClass"    # Ljava/lang/Class;
    .param p2, "testName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 81
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v7, v2

    if-nez v7, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v6

    .line 93
    :goto_0
    return-object v6

    .line 84
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 85
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 86
    .local v5, "params":[Ljava/lang/Class;
    invoke-direct {p0, v5}, Landroid/test/suitebuilder/TestMethod;->noargsConstructor([Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljunit/framework/TestCase;

    .line 90
    .local v6, "test":Ljunit/framework/TestCase;
    invoke-virtual {v6, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v6    # "test":Ljunit/framework/TestCase;
    :cond_1
    invoke-direct {p0, v5}, Landroid/test/suitebuilder/TestMethod;->singleStringConstructor([Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 93
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljunit/framework/TestCase;

    move-object v6, v7

    goto :goto_0

    .line 84
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "params":[Ljava/lang/Class;
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to locate a constructor for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private noargsConstructor([Ljava/lang/Class;)Z
    .locals 1
    .param p1, "params"    # [Ljava/lang/Class;

    .prologue
    .line 107
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private singleStringConstructor([Ljava/lang/Class;)Z
    .locals 4
    .param p1, "params"    # [Ljava/lang/Class;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    array-length v2, p1

    if-ne v2, v0, :cond_0

    aget-object v2, p1, v1

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createTest()Ljunit/framework/TestCase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 116
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 119
    check-cast v0, Landroid/test/suitebuilder/TestMethod;

    .line 121
    .local v0, "that":Landroid/test/suitebuilder/TestMethod;
    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    iget-object v4, v0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 124
    goto :goto_0

    .line 121
    :cond_5
    iget-object v3, v0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 126
    :cond_6
    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    iget-object v4, v0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 129
    goto :goto_0

    .line 126
    :cond_7
    iget-object v3, v0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnclosingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnclosingClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 138
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 139
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
