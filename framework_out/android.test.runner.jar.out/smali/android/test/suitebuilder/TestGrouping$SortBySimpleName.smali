.class Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortBySimpleName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljunit/framework/TestCase;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/test/suitebuilder/TestGrouping$1;

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    .local p2, "class2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 196
    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method
