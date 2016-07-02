.class public Landroid/test/ClassPathPackageInfo;
.super Ljava/lang/Object;
.source "ClassPathPackageInfo.java"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final source:Landroid/test/ClassPathPackageInfoSource;

.field private final subpackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final topLevelClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "source"    # Landroid/test/ClassPathPackageInfoSource;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/test/ClassPathPackageInfoSource;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "topLevelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/test/ClassPathPackageInfo;->source:Landroid/test/ClassPathPackageInfoSource;

    .line 40
    iput-object p2, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    .line 42
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    .line 43
    return-void
.end method

.method private addTopLevelClassesTo(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v2, p0, Landroid/test/ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-virtual {p0}, Landroid/test/ClassPathPackageInfo;->getSubpackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/test/ClassPathPackageInfo;

    .line 62
    .local v1, "info":Landroid/test/ClassPathPackageInfo;
    invoke-direct {v1, p1}, Landroid/test/ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    goto :goto_0

    .line 64
    .end local v1    # "info":Landroid/test/ClassPathPackageInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 68
    instance-of v1, p1, Landroid/test/ClassPathPackageInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Landroid/test/ClassPathPackageInfo;

    .line 70
    .local v0, "that":Landroid/test/ClassPathPackageInfo;
    iget-object v1, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    .end local v0    # "that":Landroid/test/ClassPathPackageInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubpackages()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/test/ClassPathPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 47
    .local v1, "info":Ljava/util/Set;, "Ljava/util/Set<Landroid/test/ClassPathPackageInfo;>;"
    iget-object v3, p0, Landroid/test/ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/test/ClassPathPackageInfo;->source:Landroid/test/ClassPathPackageInfoSource;

    invoke-virtual {v3, v2}, Landroid/test/ClassPathPackageInfoSource;->getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getTopLevelClassesRecursive()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 55
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, v0}, Landroid/test/ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    .line 56
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/test/ClassPathPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
