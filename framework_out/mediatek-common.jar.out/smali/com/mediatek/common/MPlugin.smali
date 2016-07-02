.class public final Lcom/mediatek/common/MPlugin;
.super Ljava/lang/Object;
.source "MPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/MPlugin$Key;
    }
.end annotation


# static fields
.field private static CLASSLOADER_CACHE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/common/MPlugin$Key;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_GETINSTANCE:Z = true

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static PATHCLASSLOADER_CACHE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/common/MPlugin$Key;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MPlugin"

.field private static mClassLoader:Ljava/lang/ClassLoader;

.field private static mPluginClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mPluginContext:Landroid/content/Context;

.field private static mPluginloader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/mediatek/common/MPlugin;->mPluginloader:Ldalvik/system/PathClassLoader;

    .line 57
    sput-object v0, Lcom/mediatek/common/MPlugin;->mPluginClazz:Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MPlugin;->CLASSLOADER_CACHE:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MPlugin;->PATHCLASSLOADER_CACHE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 105
    const-class v4, Lcom/mediatek/common/MPlugin;

    monitor-enter v4

    :try_start_0
    const-string v3, "MPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInstance(): Begin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "pi":Lcom/mediatek/common/PluginInfo;
    const/4 v1, 0x0

    .line 113
    .local v1, "obj":Ljava/lang/Object;
    const-string v3, "MPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create Instance (two parameters) with : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v3, "MPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clazz exists on mapping table : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/mediatek/common/PluginLoader;->getContainsKey(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p0}, Lcom/mediatek/common/PluginLoader;->getContainsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-static {p0}, Lcom/mediatek/common/PluginLoader;->getValue(Ljava/lang/String;)Lcom/mediatek/common/PluginInfo;

    move-result-object v2

    .line 121
    const-string v3, "MPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create Instance from : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/common/PluginInfo;->getImplementationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/mediatek/common/PluginInfo;->getApkName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v2}, Lcom/mediatek/common/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/mediatek/common/MPluginGuard;->checkAuthorizedApk(Ljava/io/File;Ljava/lang/String;Z)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 127
    invoke-static {v2, p1}, Lcom/mediatek/common/MPlugin;->getInstanceHelper(Lcom/mediatek/common/PluginInfo;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    const-string v3, "MPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInstance(): End = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v4

    return-object v1

    .line 129
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    :try_start_1
    const-string v3, "MPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The plugin \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/common/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' did not signed by legal certificate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "pi":Lcom/mediatek/common/PluginInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 133
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "pi":Lcom/mediatek/common/PluginInfo;
    :cond_1
    :try_start_2
    const-string v3, "MPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getInstanceHelper(Lcom/mediatek/common/PluginInfo;Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .param p0, "pi"    # Lcom/mediatek/common/PluginInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/common/PluginInfo;->getApkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->getPathClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v3

    sput-object v3, Lcom/mediatek/common/MPlugin;->mPluginloader:Ldalvik/system/PathClassLoader;

    .line 188
    :goto_0
    const-string v3, "MPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init PathClassLoader successfully : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/common/MPlugin;->mPluginloader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v3, Lcom/mediatek/common/MPlugin;->mPluginloader:Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Lcom/mediatek/common/PluginInfo;->getImplementationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/mediatek/common/MPlugin;->mPluginClazz:Ljava/lang/Class;

    .line 191
    const-string v3, "MPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load class : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/common/PluginInfo;->getImplementationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " successfully"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/common/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/mediatek/common/MPlugin;->mPluginContext:Landroid/content/Context;

    .line 195
    const-string v3, "MPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create PackageContext successfully : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/common/MPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    sget-object v3, Lcom/mediatek/common/MPlugin;->mPluginClazz:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 199
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const-string v3, "MPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create constructor with context successfully : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/mediatek/common/MPlugin;->mPluginContext:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 216
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_1
    return-object v3

    .line 186
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/mediatek/common/PluginInfo;->getApkName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->getPathClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v3

    sput-object v3, Lcom/mediatek/common/MPlugin;->mPluginloader:Ldalvik/system/PathClassLoader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "MPlugin"

    const-string v4, "Exception when initial instance"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v3, 0x0

    goto :goto_1

    .line 201
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_3
    const-string v3, "MPlugin"

    const-string v4, "Exception occurs when using constructor with Context"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_2
    const-string v3, "MPlugin"

    const-string v4, "Create default constructor successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v3, Lcom/mediatek/common/MPlugin;->mPluginClazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 204
    :catch_2
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "MPlugin"

    const-string v4, "Exception occurs when execute constructor with Context"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private static getPathClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    .locals 8
    .param p0, "sourceFolder"    # Ljava/lang/String;
    .param p1, "thisLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 155
    new-instance v0, Lcom/mediatek/common/MPlugin$Key;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/common/MPlugin$Key;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 156
    .local v0, "key":Lcom/mediatek/common/MPlugin$Key;
    const/4 v1, 0x0

    .line 159
    .local v1, "pluginLoader":Ldalvik/system/PathClassLoader;
    sget-object v5, Lcom/mediatek/common/MPlugin;->PATHCLASSLOADER_CACHE:Ljava/util/HashMap;

    monitor-enter v5

    .line 161
    :try_start_0
    sget-object v4, Lcom/mediatek/common/MPlugin;->PATHCLASSLOADER_CACHE:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldalvik/system/PathClassLoader;

    .line 162
    .local v3, "wf":Ldalvik/system/PathClassLoader;
    if-eqz v3, :cond_1

    .line 163
    const-string v4, "MPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get cached path class loader ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    move-object v1, v3

    move-object v2, v1

    .line 169
    .end local v1    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .local v2, "pluginLoader":Ldalvik/system/PathClassLoader;
    :goto_0
    if-nez v2, :cond_0

    .line 170
    :try_start_1
    const-string v4, "MPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create new path class loader ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-direct {v1, p0, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    .end local v2    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .restart local v1    # "pluginLoader":Ldalvik/system/PathClassLoader;
    :try_start_2
    sget-object v4, Lcom/mediatek/common/MPlugin;->PATHCLASSLOADER_CACHE:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_1
    monitor-exit v5

    .line 175
    return-object v1

    .line 174
    .end local v3    # "wf":Ldalvik/system/PathClassLoader;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v1    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .restart local v3    # "wf":Ldalvik/system/PathClassLoader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .restart local v1    # "pluginLoader":Ldalvik/system/PathClassLoader;
    goto :goto_2

    .end local v1    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "pluginLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    move-object v1, v2

    .end local v2    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .restart local v1    # "pluginLoader":Ldalvik/system/PathClassLoader;
    goto :goto_1

    :cond_1
    move-object v2, v1

    .end local v1    # "pluginLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "pluginLoader":Ldalvik/system/PathClassLoader;
    goto :goto_0
.end method
