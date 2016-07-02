.class public final Landroid/test/MoreAsserts;
.super Ljava/lang/Object;
.source "MoreAsserts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be assignable from actual class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public static assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "actual"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 45
    return-void
.end method

.method public static assertContainsRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public static assertContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 276
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 279
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_1
    return-object v0
.end method

.method public static varargs assertContentsInAnyOrder(Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContentsInAnyOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public static varargs assertContentsInAnyOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v2, Ljava/util/HashMap;

    array-length v6, p2

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 369
    .local v2, "expectedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 370
    .local v3, "expectedObj":Ljava/lang/Object;
    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "expectedObj":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "actualObj":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra object in actual: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 379
    .end local v0    # "actualObj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 380
    const-string v6, "Extra objects in expected."

    invoke-static {p0, v6}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_3
    return-void
.end method

.method public static varargs assertContentsInOrder(Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContentsInOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public static varargs assertContentsInOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "actualList":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 348
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public static assertEmpty(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 407
    return-void
.end method

.method public static assertEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method

.method public static assertEmpty(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    return-void
.end method

.method public static assertEmpty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertEmpty(Ljava/lang/String;Ljava/util/Map;)V

    .line 424
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "expected":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    .local p2, "actual":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 219
    .local v2, "onlyInExpected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 220
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 221
    .local v1, "onlyInActual":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 222
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sets do not match.\nOnly in expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nOnly in actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nIntersection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v0    # "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[B[B)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [B
    .param p2, "actual"    # [B

    .prologue
    .line 85
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 86
    array-length v1, p1

    array-length v2, p2

    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 89
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 90
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aget-byte v2, p2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[D[D)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [D
    .param p2, "actual"    # [D

    .prologue
    .line 164
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 165
    array-length v1, p1

    array-length v2, p2

    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 167
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 168
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 169
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[I[I)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [I
    .param p2, "actual"    # [I

    .prologue
    .line 111
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 112
    array-length v1, p1

    array-length v2, p2

    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 115
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 116
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[J[J)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [J
    .param p2, "actual"    # [J

    .prologue
    .line 137
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 138
    array-length v1, p1

    array-length v2, p2

    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 141
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 142
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [Ljava/lang/Object;
    .param p2, "actual"    # [Ljava/lang/Object;

    .prologue
    .line 192
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    .line 193
    array-length v3, p1

    array-length v4, p2

    invoke-static {p0, v3, v4}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    .line 195
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 196
    aget-object v1, p1, v2

    .line 197
    .local v1, "exp":Ljava/lang/Object;
    aget-object v0, p2, v2

    .line 199
    .local v0, "act":Ljava/lang/Object;
    if-nez v1, :cond_2

    if-nez v0, :cond_3

    .line 195
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    :cond_3
    invoke-static {p0, v2, v1, v0}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 203
    .end local v0    # "act":Ljava/lang/Object;
    .end local v1    # "exp":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public static assertEquals(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "expected":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    .local p1, "actual":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 236
    return-void
.end method

.method public static assertEquals([B[B)V
    .locals 1
    .param p0, "expected"    # [B
    .param p1, "actual"    # [B

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[B[B)V

    .line 102
    return-void
.end method

.method public static assertEquals([D[D)V
    .locals 1
    .param p0, "expected"    # [D
    .param p1, "actual"    # [D

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[D[D)V

    .line 181
    return-void
.end method

.method public static assertEquals([I[I)V
    .locals 1
    .param p0, "expected"    # [I
    .param p1, "actual"    # [I

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[I[I)V

    .line 128
    return-void
.end method

.method public static assertEquals([J[J)V
    .locals 1
    .param p0, "expected"    # [J
    .param p1, "actual"    # [J

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[J[J)V

    .line 154
    return-void
.end method

.method public static assertEquals([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # [Ljava/lang/Object;
    .param p1, "actual"    # [Ljava/lang/Object;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public static assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public static assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 247
    if-nez p2, :cond_0

    .line 248
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 251
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_1
    return-object v0
.end method

.method public static assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public static assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 326
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertNotEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 441
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-static {p0}, Landroid/test/MoreAsserts;->failEmpty(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-static {p0}, Landroid/test/MoreAsserts;->failEmpty(Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method

.method public static assertNotEmpty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertNotEmpty(Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    return-void
.end method

.method public static assertNotEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "unexpected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static assertNotEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, p1}, Landroid/test/MoreAsserts;->failEqual(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public static assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 303
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method public static checkEqualsAndHashCodeMethods(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "expectedResult"    # Z

    .prologue
    .line 512
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Landroid/test/MoreAsserts;->checkEqualsAndHashCodeMethods(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 513
    return-void
.end method

.method public static checkEqualsAndHashCodeMethods(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "expectedResult"    # Z

    .prologue
    .line 475
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 476
    const-string v1, "Your check is dubious...why would you expect null != null?"

    invoke-static {v1, p3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 483
    :cond_2
    const-string v1, "Your check is dubious...why would you expect an object to be equal to null?"

    invoke-static {v1, p3}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 488
    :cond_3
    if-eqz p1, :cond_4

    .line 489
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p0, p3, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 491
    :cond_4
    if-eqz p2, :cond_5

    .line 492
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p0, p3, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 495
    :cond_5
    if-eqz p3, :cond_0

    .line 496
    const-string v0, "hashCode() values for equal objects should be the same"

    .line 498
    .local v0, "hashMessage":Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 579
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static failContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected not to contain regex:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private static failEmpty(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 569
    const-string v0, "expected not to be empty, but was"

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method private static failEqual(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected not to be:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private static failMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected not to match regex:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method private static failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 545
    if-nez p2, :cond_0

    const-string v0, "null"

    .line 546
    .local v0, "actualDesc":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected to contain regex:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> but was:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void

    .line 545
    .end local v0    # "actualDesc":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected to be empty, but contained: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method private static failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 538
    if-nez p2, :cond_0

    const-string v0, "null"

    .line 539
    .local v0, "actualDesc":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected to match regex:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> but was:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void

    .line 538
    .end local v0    # "actualDesc":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static failWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "userMessage"    # Ljava/lang/String;
    .param p1, "ourMessage"    # Ljava/lang/String;

    .prologue
    .line 573
    if-nez p0, :cond_0

    .end local p1    # "ourMessage":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 576
    return-void

    .line 573
    .restart local p1    # "ourMessage":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "expected"    # Ljava/lang/Object;
    .param p3, "actual"    # Ljava/lang/Object;

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected array element["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private static failWrongLength(Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    .prologue
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected array length:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> but was:<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private static getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 517
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    return-object v1
.end method
