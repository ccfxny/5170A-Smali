.class public Landroid/test/ClassPathPackageInfoSource;
.super Ljava/lang/Object;
.source "ClassPathPackageInfoSource.java"


# static fields
.field private static final CLASS_EXTENSION:Ljava/lang/String; = ".class"

.field private static final CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static apkPaths:[Ljava/lang/String;


# instance fields
.field private final cache:Landroid/test/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/test/SimpleCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/test/ClassPathPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private final classPath:[Ljava/lang/String;

.field private final jarFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Landroid/test/ClassPathPackageInfoSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/test/ClassPathPackageInfoSource$1;

    invoke-direct {v0, p0}, Landroid/test/ClassPathPackageInfoSource$1;-><init>(Landroid/test/ClassPathPackageInfoSource;)V

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    .line 59
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    .line 63
    invoke-static {}, Landroid/test/ClassPathPackageInfoSource;->getClassPath()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .locals 1
    .param p0, "x0"    # Landroid/test/ClassPathPackageInfoSource;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/test/ClassPathPackageInfoSource;->createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 77
    .local v4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 78
    .local v1, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 79
    .local v5, "topLevelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, v1, v4}, Landroid/test/ClassPathPackageInfoSource;->findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 80
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "className":Ljava/lang/String;
    const-string v6, ".R"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".Manifest"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    const/4 v7, 0x0

    :try_start_0
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    :goto_1
    invoke-static {v0, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Throwable;
    :goto_2
    const-string v6, "ClassPathPackageInfoSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load class. Make sure it is in your apk. Class name: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    sget-object v6, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 98
    .end local v0    # "className":Ljava/lang/String;
    :cond_2
    new-instance v6, Landroid/test/ClassPathPackageInfo;

    invoke-direct {v6, p0, p1, v4, v5}, Landroid/test/ClassPathPackageInfo;-><init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-object v6

    .line 90
    .restart local v0    # "className":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 110
    .local v15, "packagePrefix":Ljava/lang/String;
    const/16 v17, 0x2e

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, "pathPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v9, v5, v12

    .line 113
    .local v9, "entryName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v7, "classPathEntry":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 119
    :try_start_0
    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 112
    .end local v12    # "i$":I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_0

    .line 123
    :cond_1
    sget-object v6, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_1
    if-ge v11, v14, :cond_0

    aget-object v4, v6, v11

    .line 124
    .local v4, "apkPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v10, "file":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v10, v1, v2, v3}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 128
    .end local v4    # "apkPath":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    :catch_0
    move-exception v8

    .line 129
    .local v8, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/AssertionError;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Can\'t read classpath entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    .line 134
    .end local v7    # "classPathEntry":Ljava/io/File;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "entryName":Ljava/lang/String;
    .restart local v12    # "i$":I
    :cond_2
    return-void
.end method

.method private findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 212
    .local v2, "dexFile":Ldalvik/system/DexFile;
    :try_start_0
    new-instance v3, Ldalvik/system/DexFile;

    invoke-direct {v3, p1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    .end local v2    # "dexFile":Ldalvik/system/DexFile;
    .local v3, "dexFile":Ldalvik/system/DexFile;
    :try_start_1
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 214
    .local v0, "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 215
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    move-object v5, p2

    .line 219
    .local v5, "subPackageName":Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 220
    .local v4, "lastPackageSeparator":I
    if-lez v4, :cond_1

    .line 221
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 223
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 224
    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "lastPackageSeparator":I
    .end local v5    # "subPackageName":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 236
    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .restart local v2    # "dexFile":Ldalvik/system/DexFile;
    :goto_1
    if-eqz v2, :cond_2

    .line 241
    :cond_2
    :goto_2
    return-void

    .line 225
    .end local v2    # "dexFile":Ldalvik/system/DexFile;
    .restart local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v3    # "dexFile":Ldalvik/system/DexFile;
    .restart local v4    # "lastPackageSeparator":I
    .restart local v5    # "subPackageName":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    .end local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "lastPackageSeparator":I
    .end local v5    # "subPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .restart local v2    # "dexFile":Ldalvik/system/DexFile;
    :goto_3
    if-eqz v2, :cond_4

    :cond_4
    throw v6

    .end local v2    # "dexFile":Ldalvik/system/DexFile;
    .restart local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v3    # "dexFile":Ldalvik/system/DexFile;
    :cond_5
    if-eqz v3, :cond_6

    move-object v2, v3

    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .restart local v2    # "dexFile":Ldalvik/system/DexFile;
    goto :goto_2

    .end local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catchall_1
    move-exception v6

    goto :goto_3

    .line 230
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v2    # "dexFile":Ldalvik/system/DexFile;
    .restart local v0    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v3    # "dexFile":Ldalvik/system/DexFile;
    :cond_6
    move-object v2, v3

    .end local v3    # "dexFile":Ldalvik/system/DexFile;
    .restart local v2    # "dexFile":Ldalvik/system/DexFile;
    goto :goto_2
.end method

.method private findClassesInDirectory(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .param p1, "classDir"    # Ljava/io/File;
    .param p2, "packagePrefix"    # Ljava/lang/String;
    .param p3, "pathPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    .local p4, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 162
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "name":Ljava/lang/String;
    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/test/ClassPathPackageInfoSource;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private findClassesInJar(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .param p1, "jarFile"    # Ljava/io/File;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v8, 0x2e

    const/16 v7, 0x2f

    .line 179
    invoke-direct {p0, p1}, Landroid/test/ClassPathPackageInfoSource;->getJarEntries(Ljava/io/File;)Ljava/util/Set;

    move-result-object v1

    .line 181
    .local v1, "entryNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 200
    :cond_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 185
    .local v5, "prefixLength":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, "entryName":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    const-string v6, ".class"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 191
    .local v3, "index":I
    if-ltz v3, :cond_3

    .line 192
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "p":Ljava/lang/String;
    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v4    # "p":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".class"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 296
    .local v0, "classNameEnd":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getClassPath()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "classPath":Ljava/lang/String;
    const-string v2, "path.separator"

    const-string v3, ":"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "separator":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getJarEntries(Ljava/io/File;)Ljava/util/Set;
    .locals 9
    .param p1, "jarFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2f

    .line 248
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 249
    .local v2, "entryNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 250
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 251
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 252
    .local v5, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 253
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 254
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "entryName":Ljava/lang/String;
    const-string v6, ".class"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 273
    .local v3, "lastIndex":I
    :cond_1
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 276
    if-gtz v3, :cond_1

    goto :goto_0

    .line 279
    .end local v1    # "entryName":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Landroid/test/ClassPathPackageInfoSource;->jarFiles:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    return-object v2
.end method

.method private static isToplevelClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 288
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .param p1, "source"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 148
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 142
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 143
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 144
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static setApkPaths([Ljava/lang/String;)V
    .locals 0
    .param p0, "apkPaths"    # [Ljava/lang/String;

    .prologue
    .line 68
    sput-object p0, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    invoke-virtual {v0, p1}, Landroid/test/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/test/ClassPathPackageInfo;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 310
    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    .line 311
    return-void
.end method
