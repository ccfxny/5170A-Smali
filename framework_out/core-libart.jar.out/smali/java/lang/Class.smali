.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Class$Caches;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field public static dumpReflectLogable:Z = false

.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient accessFlags:I

.field private transient classLoader:Ljava/lang/ClassLoader;

.field private transient classSize:I

.field private transient clinitThreadId:I

.field private transient componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient dexCache:Ljava/lang/DexCache;

.field private transient dexCacheStrings:[Ljava/lang/String;

.field private transient dexClassDefIndex:I

.field private volatile transient dexTypeIndex:I

.field private transient directMethods:[Ljava/lang/reflect/ArtMethod;

.field private transient iFields:[Ljava/lang/reflect/ArtField;

.field private transient ifTable:[Ljava/lang/Object;

.field private transient name:Ljava/lang/String;

.field private transient numReferenceInstanceFields:I

.field private transient numReferenceStaticFields:I

.field private transient objectSize:I

.field private transient primitiveType:I

.field private transient referenceInstanceOffsets:I

.field private transient referenceStaticOffsets:I

.field private transient sFields:[Ljava/lang/reflect/ArtField;

.field private transient status:I

.field private transient superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private transient verifyErrorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient virtualMethods:[Ljava/lang/reflect/ArtMethod;

.field private transient vtable:[Ljava/lang/reflect/ArtMethod;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 250
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method private canAccess(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1657
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p1, Ljava/lang/Class;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    const/4 v0, 0x1

    .line 1660
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method private canAccessMember(Ljava/lang/Class;I)Z
    .locals 3
    .param p2, "memberModifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 1664
    if-eq p1, p0, :cond_0

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return v1

    .line 1667
    :cond_1
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1668
    const/4 v1, 0x0

    goto :goto_0

    .line 1670
    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1671
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 1672
    if-eq v0, p1, :cond_0

    .line 1671
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_1

    .line 1677
    .end local v0    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private classNameImpliesTopLevel()Z
    .locals 2

    .prologue
    .line 1072
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findByName(Ljava/lang/String;[Ljava/lang/reflect/ArtField;)Ljava/lang/reflect/ArtField;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fields"    # [Ljava/lang/reflect/ArtField;

    .prologue
    .line 991
    const/4 v2, 0x0

    .local v2, "low":I
    array-length v5, p1

    add-int/lit8 v1, v5, -0x1

    .line 992
    .local v1, "high":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 993
    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    .line 994
    .local v3, "mid":I
    aget-object v0, p1, v3

    .line 995
    .local v0, "f":Ljava/lang/reflect/ArtField;
    invoke-virtual {v0}, Ljava/lang/reflect/ArtField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 996
    .local v4, "result":I
    if-gez v4, :cond_0

    .line 997
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 998
    :cond_0
    if-nez v4, :cond_1

    .line 1005
    .end local v0    # "f":Ljava/lang/reflect/ArtField;
    .end local v3    # "mid":I
    .end local v4    # "result":I
    :goto_1
    return-object v0

    .line 1001
    .restart local v0    # "f":Ljava/lang/reflect/ArtField;
    .restart local v3    # "mid":I
    .restart local v4    # "result":I
    :cond_1
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 1005
    .end local v0    # "f":Ljava/lang/reflect/ArtField;
    .end local v3    # "mid":I
    .end local v4    # "result":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "shouldInitialize"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 300
    sget-boolean v4, Ljava/lang/Class;->dumpReflectLogable:Z

    if-eqz v4, :cond_0

    .line 301
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppReflectCheck    forName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/lang/Throwable;

    const-string v4, "forName"

    invoke-direct {v2, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "ep":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    .end local v2    # "ep":Ljava/lang/Throwable;
    :cond_0
    if-nez p2, :cond_1

    .line 307
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 317
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 325
    .local v3, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v3

    .line 318
    .end local v3    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 320
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/lang/LinkageError;

    if-eqz v4, :cond_2

    .line 321
    check-cast v0, Ljava/lang/LinkageError;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 323
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    throw v1
.end method

.method private getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 8
    .param p2, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 530
    sget-object p1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 532
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 533
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 534
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 532
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 538
    .local v4, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v4, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 539
    :cond_3
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<init> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 541
    :cond_4
    return-object v4
.end method

.method private getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_2

    .line 552
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 553
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 554
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 552
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_1
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    invoke-static {v3, p1}, Ljava/lang/reflect/ArtMethod;->equalConstructorParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    new-instance v5, Ljava/lang/reflect/Constructor;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/reflect/ArtMethod;)V

    .line 567
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getDeclaredConstructors(ZLjava/util/List;)V
    .locals 6
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<TT;>;>;"
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_3

    .line 600
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 601
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 602
    .local v4, "modifiers":I
    if-eqz p1, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 603
    :cond_0
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 600
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_2
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 608
    new-instance v5, Ljava/lang/reflect/Constructor;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_3
    return-void
.end method

.method private getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 970
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    invoke-static {p1, v1}, Ljava/lang/Class;->findByName(Ljava/lang/String;[Ljava/lang/reflect/ArtField;)Ljava/lang/reflect/ArtField;

    move-result-object v0

    .line 972
    .local v0, "matched":Ljava/lang/reflect/ArtField;
    if-eqz v0, :cond_0

    .line 973
    new-instance v1, Ljava/lang/reflect/Field;

    invoke-direct {v1, v0}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    .line 983
    .end local v0    # "matched":Ljava/lang/reflect/ArtField;
    :goto_0
    return-object v1

    .line 976
    :cond_0
    iget-object v1, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-eqz v1, :cond_1

    .line 977
    iget-object v1, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    invoke-static {p1, v1}, Ljava/lang/Class;->findByName(Ljava/lang/String;[Ljava/lang/reflect/ArtField;)Ljava/lang/reflect/ArtField;

    move-result-object v0

    .line 978
    .restart local v0    # "matched":Ljava/lang/reflect/ArtField;
    if-eqz v0, :cond_1

    .line 979
    new-instance v1, Ljava/lang/reflect/Field;

    invoke-direct {v1, v0}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    goto :goto_0

    .line 983
    .end local v0    # "matched":Ljava/lang/reflect/ArtField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const v7, 0x201000

    .line 721
    .local v7, "skipModifiers":I
    const/4 v1, 0x0

    .line 722
    .local v1, "artMethodResult":Ljava/lang/reflect/ArtMethod;
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v8, :cond_3

    .line 723
    iget-object v0, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 724
    .local v4, "m":Ljava/lang/reflect/ArtMethod;
    invoke-static {v4}, Ljava/lang/reflect/ArtMethod;->getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;

    move-result-object v5

    .line 725
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 723
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    :cond_1
    invoke-static {v4, p2}, Ljava/lang/reflect/ArtMethod;->equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 731
    invoke-virtual {v4}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v6

    .line 732
    .local v6, "modifiers":I
    and-int v8, v6, v7

    if-nez v8, :cond_2

    .line 733
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v4}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    .line 767
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :goto_2
    return-object v8

    .line 735
    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "modifiers":I
    :cond_2
    const/high16 v8, 0x200000

    and-int/2addr v8, v6

    if-nez v8, :cond_0

    .line 737
    move-object v1, v4

    goto :goto_1

    .line 741
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :cond_3
    if-nez v1, :cond_7

    .line 742
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v8, :cond_7

    .line 743
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 744
    .restart local v4    # "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v4}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v6

    .line 745
    .restart local v6    # "modifiers":I
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 743
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 748
    :cond_5
    invoke-static {v4}, Ljava/lang/reflect/ArtMethod;->getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;

    move-result-object v5

    .line 749
    .restart local v5    # "methodName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 752
    invoke-static {v4, p2}, Ljava/lang/reflect/ArtMethod;->equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 755
    and-int v8, v6, v7

    if-nez v8, :cond_6

    .line 756
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v4}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    goto :goto_2

    .line 760
    :cond_6
    move-object v1, v4

    goto :goto_4

    .line 764
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :cond_7
    if-nez v1, :cond_8

    .line 765
    const/4 v8, 0x0

    goto :goto_2

    .line 767
    :cond_8
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v1}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    goto :goto_2
.end method

.method private getInnerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getInnerClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "recursivePublicMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 657
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-boolean v6, Ljava/lang/Class;->dumpReflectLogable:Z

    if-eqz v6, :cond_0

    .line 658
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppReflectCheck    class:getMethod:publicmethod= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    new-instance v2, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMethod: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 660
    .local v2, "ep":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 663
    .end local v2    # "ep":Ljava/lang/Throwable;
    :cond_0
    if-nez p1, :cond_1

    .line 664
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "name == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 666
    :cond_1
    if-nez p2, :cond_2

    .line 667
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 669
    :cond_2
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 670
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_3

    .line 671
    new-instance v6, Ljava/lang/NoSuchMethodException;

    const-string v7, "parameter type is null"

    invoke-direct {v6, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 669
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 677
    .local v5, "result":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v5, :cond_5

    if-eqz p3, :cond_7

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 679
    :cond_5
    new-instance v6, Ljava/lang/NoSuchMethodException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 674
    .end local v5    # "result":Ljava/lang/reflect/Method;
    :cond_6
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_1

    .line 681
    .restart local v5    # "result":Ljava/lang/reflect/Method;
    :cond_7
    return-object v5
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private native getProxyInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method private getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1120
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 1121
    invoke-direct {v0, p1}, Ljava/lang/Class;->getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1122
    .local v3, "result":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1138
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-object v3

    .line 1120
    .restart local v3    # "result":Ljava/lang/reflect/Field;
    :cond_1
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 1128
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_2
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 1129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 1130
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    aget-object v2, v4, v1

    check-cast v2, Ljava/lang/Class;

    .line 1131
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1132
    .restart local v3    # "result":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 1129
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 1138
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v5, 0x1

    .line 1168
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0, v5, p1}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(ZLjava/util/List;)V

    .line 1168
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1174
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 1175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 1176
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 1177
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5, p1}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(ZLjava/util/List;)V

    .line 1175
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1180
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method private getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 687
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 688
    .local v4, "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v4

    .line 686
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 693
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_2
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 694
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 695
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 696
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 697
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 698
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 695
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 703
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPublicMethodsInternal(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v5, 0x1

    .line 854
    invoke-virtual {p0, v5, p1}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 855
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    .line 857
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0, v5, p1}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 857
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 862
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 863
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 864
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 865
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 866
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5, p1}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 864
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 869
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method private inSamePackage(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1681
    iget-object v3, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p1, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    if-eq v3, v4, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return v2

    .line 1684
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v0

    .line 1685
    .local v0, "packageName1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 1686
    .local v1, "packageName2":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1687
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1688
    :cond_2
    if-eqz v1, :cond_0

    .line 1691
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 1750
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1751
    return-object p0

    .line 1753
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1767
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_1

    .line 1768
    const/4 p1, 0x0

    .line 1770
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1

    .line 1769
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1772
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1773
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1774
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public desiredAssertionStatus()Z
    .locals 1

    .prologue
    .line 1737
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-object v1

    .line 374
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 383
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 397
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 414
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const/4 v0, 0x0

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 419
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 435
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    .line 436
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 343
    .local v4, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 344
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    .end local v4    # "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v1, v1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0

    .line 348
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Class;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Class;

    return-object v6
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "constructors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<TT;>;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/lang/Class;->getDeclaredConstructors(ZLjava/util/List;)V

    .line 581
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 880
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getMemberClasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "constructors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<TT;>;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/lang/Class;->getDeclaredConstructors(ZLjava/util/List;)V

    .line 595
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 901
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v2, Ljava/lang/Class;->dumpReflectLogable:Z

    if-eqz v2, :cond_0

    .line 902
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppReflectCheck    class:getDeclaredField= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "getDeclaredField"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, "ep":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 907
    .end local v0    # "ep":Ljava/lang/Throwable;
    :cond_0
    if-nez p1, :cond_1

    .line 908
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 910
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 911
    .local v1, "result":Ljava/lang/reflect/Field;
    if-nez v1, :cond_2

    .line 912
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 916
    return-object v1
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 9

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 928
    iget-object v8, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-nez v8, :cond_0

    move v4, v7

    .line 929
    .local v4, "initial_size":I
    :goto_0
    iget-object v8, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-nez v8, :cond_1

    move v8, v7

    :goto_1
    add-int/2addr v4, v8

    .line 930
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 931
    .local v2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, v7, v2}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(ZLjava/util/List;)V

    .line 932
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Field;

    .line 933
    .local v6, "result":[Ljava/lang/reflect/Field;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 934
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 933
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 928
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v3    # "i$":I
    .end local v4    # "initial_size":I
    .end local v5    # "len$":I
    .end local v6    # "result":[Ljava/lang/reflect/Field;
    :cond_0
    iget-object v8, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    array-length v4, v8

    goto :goto_0

    .line 929
    .restart local v4    # "initial_size":I
    :cond_1
    iget-object v8, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    array-length v8, v8

    goto :goto_1

    .line 936
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "result":[Ljava/lang/reflect/Field;
    :cond_2
    return-object v6
.end method

.method public getDeclaredFieldsUnchecked(ZLjava/util/List;)V
    .locals 5
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 948
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    iget-object v4, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_2

    .line 949
    iget-object v0, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    .local v0, "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 950
    .local v1, "f":Ljava/lang/reflect/ArtField;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 951
    :cond_0
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v4, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_5

    .line 956
    iget-object v0, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 957
    .restart local v1    # "f":Ljava/lang/reflect/ArtField;
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 958
    :cond_3
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 962
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_5
    return-void
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 9

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 779
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-nez v8, :cond_0

    move v2, v7

    .line 780
    .local v2, "initial_size":I
    :goto_0
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-nez v8, :cond_1

    move v8, v7

    :goto_1
    add-int/2addr v2, v8

    .line 781
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 782
    .local v5, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0, v7, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(ZLjava/util/List;)V

    .line 783
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Method;

    .line 784
    .local v6, "result":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 786
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 787
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 779
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "i$":I
    .end local v2    # "initial_size":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .end local v6    # "result":[Ljava/lang/reflect/Method;
    :cond_0
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    array-length v2, v8

    goto :goto_0

    .line 780
    .restart local v2    # "initial_size":I
    :cond_1
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    array-length v8, v8

    goto :goto_1

    .line 789
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .restart local v6    # "result":[Ljava/lang/reflect/Method;
    :cond_2
    return-object v6
.end method

.method public getDeclaredMethodsUnchecked(ZLjava/util/List;)V
    .locals 6
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    iget-object v5, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_2

    .line 803
    iget-object v0, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 804
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 805
    .local v4, "modifiers":I
    if-eqz p1, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 807
    :cond_0
    const/high16 v5, 0x200000

    and-int/2addr v5, v4

    if-nez v5, :cond_1

    .line 808
    new-instance v5, Ljava/lang/reflect/Method;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_2
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_5

    .line 814
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 815
    .restart local v3    # "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 816
    .restart local v4    # "modifiers":I
    if-eqz p1, :cond_3

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 818
    :cond_3
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 819
    new-instance v5, Ljava/lang/reflect/Method;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 824
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_5
    return-void
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    const/4 v0, 0x0

    .line 1017
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getDex()Lcom/android/dex/Dex;
    .locals 1

    .prologue
    .line 455
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v0}, Ljava/lang/DexCache;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    goto :goto_0
.end method

.method public getDexAnnotationDirectoryOffset()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1824
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v1

    .line 1825
    .local v1, "dex":Lcom/android/dex/Dex;
    if-nez v1, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return v2

    .line 1828
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDexClassDefIndex()I

    move-result v0

    .line 1829
    .local v0, "classDefIndex":I
    if-ltz v0, :cond_0

    .line 1832
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex;->annotationDirectoryOffsetFromClassDefIndex(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .locals 2
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    .prologue
    .line 467
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Ljava/lang/Class;->dexCacheStrings:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 468
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 470
    iget-object v1, p0, Ljava/lang/Class;->dexCacheStrings:[Ljava/lang/String;

    aput-object v0, v1, p2

    .line 472
    :cond_0
    return-object v0
.end method

.method public getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 5
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    iget-object v2, v4, Ljava/lang/DexCache;->resolvedTypes:[Ljava/lang/Class;

    .line 483
    .local v2, "dexCacheResolvedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v3, v2, p2

    .line 484
    .local v3, "resolvedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 486
    .local v1, "descriptorIndex":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v0}, Llibcore/reflect/InternalNames;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 488
    aput-object v3, v2, p2

    .line 490
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptorIndex":I
    :cond_0
    return-object v3
.end method

.method public getDexClassDefIndex()I
    .locals 2

    .prologue
    .line 1783
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    goto :goto_0
.end method

.method public getDexTypeIndex()I
    .locals 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v2, 0xffff

    .line 1794
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1795
    .local v0, "typeIndex":I
    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1812
    .end local v0    # "typeIndex":I
    .local v1, "typeIndex":I
    :goto_0
    return v1

    .line 1798
    .end local v1    # "typeIndex":I
    .restart local v0    # "typeIndex":I
    :cond_0
    monitor-enter p0

    .line 1799
    :try_start_0
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1800
    if-ne v0, v2, :cond_2

    .line 1801
    iget v2, p0, Ljava/lang/Class;->dexClassDefIndex:I

    if-ltz v2, :cond_3

    .line 1802
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    iget v3, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v2, v3}, Lcom/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    move-result v0

    .line 1809
    :cond_1
    :goto_1
    iput v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1811
    :cond_2
    monitor-exit p0

    move v1, v0

    .line 1812
    .end local v0    # "typeIndex":I
    .restart local v1    # "typeIndex":I
    goto :goto_0

    .line 1804
    .end local v1    # "typeIndex":I
    .restart local v0    # "typeIndex":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    invoke-static {p0}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dex/Dex;->findTypeIndex(Ljava/lang/String;)I

    move-result v0

    .line 1805
    if-gez v0, :cond_1

    .line 1806
    const/4 v0, -0x1

    goto :goto_1

    .line 1811
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEnclosingClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1027
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1028
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1035
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 1031
    .restart local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    .line 1032
    .local v1, "member":Ljava/lang/reflect/AccessibleObject;
    if-eqz v1, :cond_1

    .line 1033
    check-cast v1, Ljava/lang/reflect/Member;

    .end local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1035
    .restart local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 1043
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    :goto_0
    return-object v1

    .line 1046
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    .line 1047
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/reflect/Constructor;

    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 1055
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    :goto_0
    return-object v1

    .line 1058
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    .line 1059
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    const/4 v0, 0x0

    .line 1085
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v2, Ljava/lang/Class;->dumpReflectLogable:Z

    if-eqz v2, :cond_0

    .line 1101
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppReflectCheck    class:getField="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1102
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "getField"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v0, "ep":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1106
    .end local v0    # "ep":Ljava/lang/Throwable;
    :cond_0
    if-nez p1, :cond_1

    .line 1107
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1109
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1110
    .local v1, "result":Ljava/lang/reflect/Field;
    if-nez v1, :cond_2

    .line 1111
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1113
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 1115
    return-object v1
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 1153
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v2}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 1155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Field;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Field;

    .line 1156
    .local v5, "result":[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1157
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 1156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1159
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    return-object v5
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 6

    .prologue
    .line 1189
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v4

    monitor-enter v4

    .line 1190
    :try_start_0
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    .line 1191
    .local v2, "result":[Ljava/lang/reflect/Type;
    if-nez v2, :cond_0

    .line 1192
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1194
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1200
    :goto_0
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    .end local v0    # "annotationSignature":Ljava/lang/String;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    array-length v3, v2

    if-nez v3, :cond_2

    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :goto_1
    return-object v2

    .line 1196
    .restart local v0    # "annotationSignature":Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_1
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1197
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1198
    iget-object v3, v1, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0

    .line 1202
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1203
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v2}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    move-object v2, v3

    goto :goto_1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .locals 4

    .prologue
    .line 1211
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1214
    .local v1, "genericSuperclass":Ljava/lang/reflect/Type;
    if-nez v1, :cond_0

    .line 1215
    const/4 v3, 0x0

    .line 1224
    :goto_0
    return-object v3

    .line 1218
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "annotationSignature":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1220
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1221
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1222
    iget-object v1, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 1224
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1
    invoke-static {v1}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_0
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1239
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1240
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Cloneable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/io/Serializable;

    aput-object v5, v3, v4

    .line 1253
    :cond_0
    :goto_0
    return-object v3

    .line 1241
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isProxy()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1242
    invoke-direct {p0}, Ljava/lang/Class;->getProxyInterfaces()[Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 1244
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 1245
    .local v0, "dex":Lcom/android/dex/Dex;
    if-nez v0, :cond_3

    .line 1246
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    goto :goto_0

    .line 1248
    :cond_3
    iget v4, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->interfaceTypeIndicesFromClassDefIndex(I)[S

    move-result-object v2

    .line 1249
    .local v2, "interfaces":[S
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/Class;

    .line 1250
    .local v3, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1251
    aget-short v4, v2, v1

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 838
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsInternal(Ljava/util/List;)V

    .line 845
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 846
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getModifiers()I
    .locals 4

    .prologue
    .line 1271
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1272
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 1273
    .local v1, "componentModifiers":I
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_0

    .line 1274
    and-int/lit16 v1, v1, -0x209

    .line 1276
    :cond_0
    or-int/lit16 v3, v1, 0x410

    .line 1280
    .end local v1    # "componentModifiers":I
    :goto_0
    return v3

    .line 1278
    :cond_1
    const v0, 0xffff

    .line 1279
    .local v0, "JAVA_FLAGS_MASK":I
    iget v3, p0, Ljava/lang/Class;->accessFlags:I

    and-int/2addr v3, v0

    invoke-static {p0, v3}, Llibcore/reflect/AnnotationAccess;->getInnerClassFlags(Ljava/lang/Class;I)I

    move-result v2

    .line 1280
    .local v2, "modifiers":I
    and-int v3, v2, v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1289
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 1290
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1711
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1712
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 1714
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v2

    .line 1716
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getPackageName$()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1726
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1727
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1728
    .local v0, "last":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .locals 1

    .prologue
    .line 1337
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v7, 0x2e

    .line 1348
    sget-boolean v4, Ljava/lang/Class;->dumpReflectLogable:Z

    if-eqz v4, :cond_0

    .line 1349
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppReflectCheck    class:getResource= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "getResource"

    invoke-direct {v1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v1, "ep":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1355
    .end local v1    # "ep":Ljava/lang/Throwable;
    :cond_0
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1356
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1370
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1371
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_3

    .line 1372
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1374
    :goto_1
    return-object v4

    .line 1358
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1359
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1360
    .local v0, "dot":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 1361
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1366
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1363
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 1374
    .end local v0    # "dot":I
    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    goto :goto_1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v7, 0x2e

    .line 1387
    sget-boolean v4, Ljava/lang/Class;->dumpReflectLogable:Z

    if-eqz v4, :cond_0

    .line 1388
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppReflectCheck    class:getResourceAsStream= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1389
    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "getResourceAsStream"

    invoke-direct {v1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v1, "ep":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1394
    .end local v1    # "ep":Ljava/lang/Throwable;
    :cond_0
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1395
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1409
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1410
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_3

    .line 1411
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1413
    :goto_1
    return-object v4

    .line 1397
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1398
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1399
    .local v0, "dot":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 1400
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1405
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1402
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 1413
    .end local v0    # "dot":I
    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_1
.end method

.method public getSigners()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1425
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1305
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    :cond_0
    :goto_0
    return-object v1

    .line 1309
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1310
    const-string v1, ""

    goto :goto_0

    .line 1313
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1314
    :cond_3
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1317
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1319
    .local v0, "dot":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1320
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuperclass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1438
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    const/4 v0, 0x0

    .line 1441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_0
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1452
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1454
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1456
    :cond_0
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1457
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1458
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1452
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isAnnotation()Z
    .locals 2

    .prologue
    .line 1465
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x2000

    .line 1466
    .local v0, "ACC_ANNOTATION":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1470
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isAnonymousClass()Z
    .locals 1

    .prologue
    .line 1478
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 1485
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1510
    if-ne p0, p1, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return v3

    .line 1512
    :cond_1
    const-class v5, Ljava/lang/Object;

    if-ne p0, v5, :cond_2

    .line 1513
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1514
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1515
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    iget-object v6, p1, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 1516
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1518
    iget-object v2, p1, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1519
    .local v2, "iftable":[Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 1520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_5

    .line 1521
    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/Class;

    .line 1522
    .local v1, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, p0, :cond_0

    .line 1520
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move v3, v4

    .line 1527
    goto :goto_0

    .line 1529
    .end local v2    # "iftable":[Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1530
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    :goto_2
    if-eqz p1, :cond_7

    .line 1531
    if-eq p1, p0, :cond_0

    .line 1530
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_2

    :cond_7
    move v3, v4

    .line 1536
    goto :goto_0
.end method

.method public isEnum()Z
    .locals 2

    .prologue
    .line 1545
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinalizable()Z
    .locals 3

    .prologue
    .line 1610
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/high16 v0, -0x80000000

    .line 1611
    .local v0, "ACC_CLASS_IS_FINALIZABLE":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1558
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 1559
    const/4 v0, 0x0

    .line 1561
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInterface()Z
    .locals 1

    .prologue
    .line 1568
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalClass()Z
    .locals 1

    .prologue
    .line 1576
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberClass()Z
    .locals 1

    .prologue
    .line 1586
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 1593
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->primitiveType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProxy()Z
    .locals 2

    .prologue
    .line 1494
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 2

    .prologue
    .line 1600
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x1000

    .line 1601
    .local v0, "ACC_SYNTHETIC":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 1629
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Ljava/lang/Class;->accessFlags:I

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1630
    :cond_0
    new-instance v4, Ljava/lang/InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be instantiated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1632
    :cond_1
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    .line 1633
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v0, p0}, Ljava/lang/Class;->canAccess(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1634
    new-instance v4, Ljava/lang/IllegalAccessException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accessible from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1638
    :cond_2
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1645
    .local v2, "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v5

    invoke-direct {v0, p0, v5}, Ljava/lang/Class;->canAccessMember(Ljava/lang/Class;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1646
    new-instance v4, Ljava/lang/IllegalAccessException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accessible from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1639
    .end local v2    # "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v1

    .line 1640
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no zero argument constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 1642
    .local v3, "t":Ljava/lang/InstantiationException;
    invoke-virtual {v3, v1}, Ljava/lang/InstantiationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1643
    throw v3

    .line 1649
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "t":Ljava/lang/InstantiationException;
    .restart local v2    # "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1652
    :goto_0
    return-object v4

    .line 1650
    :catch_1
    move-exception v1

    .line 1651
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1697
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1700
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interface "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "class "

    goto :goto_1
.end method
