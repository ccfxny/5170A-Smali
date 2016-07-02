.class public Lcom/mediatek/common/MPluginGuard;
.super Ljava/lang/Object;
.source "MPluginGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/MPluginGuard$Logger;,
        Lcom/mediatek/common/MPluginGuard$SignatureLoader;,
        Lcom/mediatek/common/MPluginGuard$InitThread;,
        Lcom/mediatek/common/MPluginGuard$InitStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final RESULT_AUTHORIZED:I = 0x1

.field static final RESULT_ERROR:I = -0x2

.field static final RESULT_UNAUTHORIZED:I = 0x0

.field static final RESULT_UNSIGNED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MPluginGuard"

.field private static sAuthorizedSignature:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus; = null

.field private static sLock:Ljava/lang/Object; = null

.field private static final sSIGNATURE_FILENAME:Ljava/lang/String; = "mplugin_guard.xml"

.field private static final sSIGNATURE_FOLDER:Ljava/lang/String; = "/plugin/Signatures"

.field private static sTotalSigNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mediatek/common/MPluginGuard$InitStatus;->NONE:Lcom/mediatek/common/MPluginGuard$InitStatus;

    sput-object v0, Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MPluginGuard;->sAuthorizedSignature:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/common/MPluginGuard;->sTotalSigNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/mediatek/common/MPluginGuard;->notifyUnlock(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->isSignatureTableReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/common/MPluginGuard$InitStatus;)Lcom/mediatek/common/MPluginGuard$InitStatus;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/common/MPluginGuard$InitStatus;

    .prologue
    .line 40
    sput-object p0, Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->readAuthorizedSignaturesLocked()Z

    move-result v0

    return v0
.end method

.method static checkAuthorizedApk(Ljava/io/File;Ljava/lang/String;Z)I
    .locals 12
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isZygoteInit"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 175
    const-string v4, ""

    .line 177
    .local v4, "isSystemReady":Ljava/lang/String;
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 178
    .local v5, "systemPropertiesClass":Ljava/lang/Class;
    const-string v6, "get"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 180
    .local v3, "getPropMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "sys.boot_completed"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "0"

    aput-object v11, v9, v10

    invoke-virtual {v3, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemProperties is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 192
    .end local v3    # "getPropMethod":Ljava/lang/reflect/Method;
    .end local v5    # "systemPropertiesClass":Ljava/lang/Class;
    :goto_0
    sget-object v6, Lcom/mediatek/common/PluginLoader;->sApkCache:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " does not exist in the sApkCache"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 194
    invoke-static {p0, v4, p1, p2}, Lcom/mediatek/common/MPluginGuard;->startApkCheck(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 195
    .local v1, "checkStatus":I
    if-ne v1, v7, :cond_0

    .line 196
    sget-object v6, Lcom/mediatek/common/PluginLoader;->sApkCache:Ljava/util/HashMap;

    const-string v8, "Success"

    invoke-virtual {v6, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Put ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " into sApkCache"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    move v6, v7

    .line 211
    .end local v1    # "checkStatus":I
    :goto_1
    return v6

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get system properties failed! "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get system properties failed! "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get system properties failed! "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get system properties failed! "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "checkStatus":I
    :cond_0
    sget-object v6, Lcom/mediatek/common/PluginLoader;->sApkCache:Ljava/util/HashMap;

    const-string v7, "Fail"

    invoke-virtual {v6, p0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Put ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into sApkCache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    move v6, v8

    .line 202
    goto/16 :goto_1

    .line 205
    .end local v1    # "checkStatus":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " exists in the sApkCache with status : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v6, Lcom/mediatek/common/PluginLoader;->sApkCache:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 206
    sget-object v6, Lcom/mediatek/common/PluginLoader;->sApkCache:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "Success"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " had been checked --> Success"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    move v6, v7

    .line 208
    goto/16 :goto_1

    .line 210
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " had been checked --> Fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    move v6, v8

    .line 211
    goto/16 :goto_1
.end method

.method private static getApkSignature(Ljava/io/File;)Landroid/content/pm/Signature;
    .locals 17
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 308
    :try_start_0
    const-string v13, "android.content.pm.PackageParser"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 309
    .local v8, "pkgParserClass":Ljava/lang/Class;
    const-string v13, "android.content.pm.PackageParser$ApkLite"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 310
    .local v1, "apkLiteClass":Ljava/lang/Class;
    const-string v13, "parseApkLite"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/io/File;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 312
    .local v7, "parseApkLiteMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 315
    const-string v13, "PARSE_MUST_BE_APK"

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 316
    .local v6, "parseApkField":Ljava/lang/reflect/Field;
    const-string v13, "PARSE_COLLECT_CERTIFICATES"

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 318
    .local v3, "collectCertsField":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    or-int v5, v13, v14

    .line 320
    .local v5, "flags":I
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 321
    .local v9, "pkgParserObject":Ljava/lang/Object;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    const/4 v14, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 323
    .local v2, "apkLiteObject":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 324
    .local v10, "signature":Landroid/content/pm/Signature;
    if-eqz v2, :cond_1

    .line 325
    const-string v13, "signatures"

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 326
    .local v11, "signaturesField":Ljava/lang/reflect/Field;
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/Signature;

    move-object v0, v13

    check-cast v0, [Landroid/content/pm/Signature;

    move-object v12, v0

    .line 331
    .local v12, "sigs":[Landroid/content/pm/Signature;
    if-eqz v12, :cond_0

    array-length v13, v12

    if-lez v13, :cond_0

    .line 332
    const/4 v13, 0x0

    aget-object v10, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v13, v10

    .line 339
    .end local v11    # "signaturesField":Ljava/lang/reflect/Field;
    .end local v12    # "sigs":[Landroid/content/pm/Signature;
    :goto_0
    return-object v13

    .line 336
    .end local v1    # "apkLiteClass":Ljava/lang/Class;
    .end local v2    # "apkLiteObject":Ljava/lang/Object;
    .end local v3    # "collectCertsField":Ljava/lang/reflect/Field;
    .end local v5    # "flags":I
    .end local v6    # "parseApkField":Ljava/lang/reflect/Field;
    .end local v7    # "parseApkLiteMethod":Ljava/lang/reflect/Method;
    .end local v8    # "pkgParserClass":Ljava/lang/Class;
    .end local v9    # "pkgParserObject":Ljava/lang/Object;
    .end local v10    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v4

    .line 337
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parse apk "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " failed! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 339
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "apkLiteClass":Ljava/lang/Class;
    .restart local v2    # "apkLiteObject":Ljava/lang/Object;
    .restart local v3    # "collectCertsField":Ljava/lang/reflect/Field;
    .restart local v5    # "flags":I
    .restart local v6    # "parseApkField":Ljava/lang/reflect/Field;
    .restart local v7    # "parseApkLiteMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "pkgParserClass":Ljava/lang/Class;
    .restart local v9    # "pkgParserObject":Ljava/lang/Object;
    .restart local v10    # "signature":Landroid/content/pm/Signature;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private static getSignatureFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 227
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/plugin/Signatures"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "systemFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    new-instance v2, Ljava/io/File;

    const-string v3, "mplugin_guard.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-object v2

    .line 232
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/custom/plugin/Signatures"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "customFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    new-instance v2, Ljava/io/File;

    const-string v3, "mplugin_guard.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "getSignatureFile() failed!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static init()V
    .locals 2

    .prologue
    .line 72
    const-string v1, "Start init authorized signature table"

    invoke-static {v1}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/mediatek/common/MPluginGuard$InitThread;

    invoke-direct {v0}, Lcom/mediatek/common/MPluginGuard$InitThread;-><init>()V

    .line 74
    .local v0, "t":Ljava/lang/Thread;
    sget-object v1, Lcom/mediatek/common/MPluginGuard$InitStatus;->RUNNING:Lcom/mediatek/common/MPluginGuard$InitStatus;

    sput-object v1, Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method private static isAuthorizedSignature(Landroid/content/pm/Signature;)Z
    .locals 6
    .param p0, "in"    # Landroid/content/pm/Signature;

    .prologue
    .line 343
    sget-object v4, Lcom/mediatek/common/MPluginGuard;->sAuthorizedSignature:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 344
    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 346
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    .local v1, "identity":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    .line 348
    .local v3, "source":Landroid/content/pm/Signature;
    invoke-virtual {v3, p0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found authorized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 351
    const/4 v4, 0x1

    .line 354
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "identity":Ljava/lang/String;
    .end local v3    # "source":Landroid/content/pm/Signature;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isSignatureTableReady()Z
    .locals 2

    .prologue
    .line 218
    sget v0, Lcom/mediatek/common/MPluginGuard;->sTotalSigNum:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/mediatek/common/MPluginGuard;->sAuthorizedSignature:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/mediatek/common/MPluginGuard;->sTotalSigNum:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadSignatureFileLocked(Ljava/io/File;)V
    .locals 20
    .param p0, "sigFile"    # Ljava/io/File;

    .prologue
    .line 240
    const/4 v11, 0x0

    .line 243
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 244
    .local v6, "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 245
    .local v5, "domBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 247
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 248
    .local v14, "root":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 252
    .local v3, "checks":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_4

    .line 253
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    .line 254
    const/4 v10, 0x0

    .line 255
    .local v10, "identity":Ljava/lang/String;
    const/4 v15, 0x0

    .line 256
    .local v15, "signature":Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .line 257
    .local v8, "guard":Ljava/lang/String;
    invoke-interface {v3, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 259
    .local v2, "check":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const-string v17, "check"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 261
    sget v17, Lcom/mediatek/common/MPluginGuard;->sTotalSigNum:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/mediatek/common/MPluginGuard;->sTotalSigNum:I

    .line 262
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    const-string v18, "guard"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 263
    if-eqz v8, :cond_0

    .line 265
    :try_start_2
    new-instance v16, Landroid/content/pm/Signature;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v15    # "signature":Landroid/content/pm/Signature;
    .local v16, "signature":Landroid/content/pm/Signature;
    move-object/from16 v15, v16

    .line 272
    .end local v16    # "signature":Landroid/content/pm/Signature;
    .restart local v15    # "signature":Landroid/content/pm/Signature;
    :cond_0
    :try_start_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    .line 273
    .local v13, "node":Lorg/w3c/dom/Node;
    if-eqz v13, :cond_1

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 274
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "info"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 275
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    const-string v18, "value"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 280
    .end local v13    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-eqz v10, :cond_2

    if-eqz v15, :cond_2

    .line 281
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Found authorized "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " with signature: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 282
    sget-object v17, Lcom/mediatek/common/MPluginGuard;->sAuthorizedSignature:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v7

    .line 267
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<check> with bad guard attribute "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 286
    .end local v2    # "check":Lorg/w3c/dom/Node;
    .end local v3    # "checks":Lorg/w3c/dom/NodeList;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "guard":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "identity":Ljava/lang/String;
    .end local v14    # "root":Lorg/w3c/dom/Element;
    .end local v15    # "signature":Landroid/content/pm/Signature;
    :catch_1
    move-exception v7

    move-object v11, v12

    .line 287
    .end local v5    # "domBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "is":Ljava/io/InputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Open signature file failed! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    if-eqz v11, :cond_3

    .line 297
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 303
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    return-void

    .line 295
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v3    # "checks":Lorg/w3c/dom/NodeList;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "domBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "root":Lorg/w3c/dom/Element;
    :cond_4
    if-eqz v12, :cond_6

    .line 297
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v11, v12

    .line 300
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 298
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    .line 299
    .local v7, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to close file! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    move-object v11, v12

    .line 300
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 298
    .end local v3    # "checks":Lorg/w3c/dom/NodeList;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "domBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "root":Lorg/w3c/dom/Element;
    .local v7, "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v7

    .line 299
    .local v7, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to close file! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 288
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 289
    .local v7, "e":Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Parse signature file failed! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 295
    if-eqz v11, :cond_3

    .line 297
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 298
    :catch_5
    move-exception v7

    .line 299
    .local v7, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to close file! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 290
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 291
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    :try_start_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Parse signature file failed! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 295
    if-eqz v11, :cond_3

    .line 297
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_3

    .line 298
    :catch_7
    move-exception v7

    .line 299
    .local v7, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to close file! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 292
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 293
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Parse signature file failed! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 295
    if-eqz v11, :cond_3

    .line 297
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_3

    .line 298
    :catch_9
    move-exception v7

    .line 299
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to close file! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 295
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_7
    if-eqz v11, :cond_5

    .line 297
    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 300
    :cond_5
    :goto_8
    throw v17

    .line 298
    :catch_a
    move-exception v7

    .line 299
    .restart local v7    # "e":Ljava/io/IOException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Fail to close file! "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/common/MPluginGuard$Logger;->w(Ljava/lang/String;)V

    goto :goto_8

    .line 295
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v5    # "domBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v17

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 292
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_b
    move-exception v7

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 290
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_c
    move-exception v7

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 288
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_d
    move-exception v7

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 286
    .end local v5    # "domBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_e
    move-exception v7

    goto/16 :goto_2

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v3    # "checks":Lorg/w3c/dom/NodeList;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "domBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "root":Lorg/w3c/dom/Element;
    :cond_6
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method private static notifyUnlock(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-object v1, Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify unlock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static readAuthorizedSignaturesLocked()Z
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->getSignatureFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/MPluginGuard;->loadSignatureFileLocked(Ljava/io/File;)V

    .line 223
    invoke-static {}, Lcom/mediatek/common/MPluginGuard;->isSignatureTableReady()Z

    move-result v0

    return v0
.end method

.method static startApkCheck(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 19
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "isSystemReady"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isZygoteInit"    # Z

    .prologue
    .line 80
    sget-object v15, Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;

    monitor-enter v15

    .line 81
    :try_start_0
    sget-object v14, Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;

    sget-object v16, Lcom/mediatek/common/MPluginGuard$InitStatus;->RUNNING:Lcom/mediatek/common/MPluginGuard$InitStatus;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_0

    .line 82
    const-string v14, "Delay checking until loading finished"

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    sget-object v14, Lcom/mediatek/common/MPluginGuard;->sLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_0
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    sget-object v14, Lcom/mediatek/common/MPluginGuard;->sInitStatus:Lcom/mediatek/common/MPluginGuard$InitStatus;

    sget-object v15, Lcom/mediatek/common/MPluginGuard$InitStatus;->SUCCESS:Lcom/mediatek/common/MPluginGuard$InitStatus;

    if-eq v14, v15, :cond_1

    .line 93
    const-string v14, "MPluginGuard"

    const-string v15, "Check fail due to init fail!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v14, -0x2

    .line 159
    :goto_0
    return v14

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v14, "MPluginGuard"

    const-string v16, "Wating initialization failed!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v14, -0x2

    monitor-exit v15

    goto :goto_0

    .line 90
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    .line 97
    :cond_1
    if-nez p0, :cond_2

    .line 98
    const-string v14, "MPluginGuard"

    const-string v15, "Null apkFile!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v14, -0x2

    goto :goto_0

    .line 102
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkAuthorizedApk("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 105
    const/4 v11, 0x0

    .line 106
    .local v11, "sig":Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 107
    .local v9, "ipm":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 108
    .local v5, "getService":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 109
    .local v2, "checkSignatures":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 110
    .local v1, "asInterface":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 111
    .local v4, "getPackageInfoMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 112
    .local v6, "getServiceBinder":Landroid/os/IBinder;
    const/4 v10, 0x0

    .line 113
    .local v10, "refectionObj":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 115
    .local v8, "info":Landroid/content/pm/PackageInfo;
    :try_start_4
    const-string v14, "1"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_5

    .line 116
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/mediatek/common/MPluginGuard;->getApkSignature(Ljava/io/File;)Landroid/content/pm/Signature;

    move-result-object v11

    .line 147
    .end local v10    # "refectionObj":Ljava/lang/Object;
    :cond_4
    :goto_1
    if-nez v11, :cond_6

    .line 148
    const-string v14, "Un-signed apk"

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 149
    const/4 v14, -0x1

    goto :goto_0

    .line 121
    .restart local v10    # "refectionObj":Ljava/lang/Object;
    :cond_5
    :try_start_5
    const-string v14, "android.os.UserHandle"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 122
    .local v12, "userHandleClass":Ljava/lang/Class;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "userHandleClass is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 123
    const-string v14, "myUserId"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v12, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 124
    .local v7, "getUserIdMethod":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 125
    .local v13, "userId":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "userId is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 126
    const-string v14, "android.os.ServiceManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getService"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 127
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get getService method : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 128
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "package"

    aput-object v17, v15, v16

    invoke-virtual {v5, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    .line 129
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invoke getServiceBinder : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 130
    const-string v14, "android.content.pm.IPackageManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getPackageInfo"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class forName getPackageInfoMethod : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 132
    const-string v14, "android.content.pm.IPackageManager$Stub"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "asInterface"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Landroid/os/IBinder;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class forName IPackageManager$Stub : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 134
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-virtual {v1, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 135
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invoke asInterface : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 136
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x40

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v4, v10, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v8, v0

    .line 137
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invoke info : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 142
    .end local v7    # "getUserIdMethod":Ljava/lang/reflect/Method;
    .end local v10    # "refectionObj":Ljava/lang/Object;
    .end local v12    # "userHandleClass":Ljava/lang/Class;
    .end local v13    # "userId":I
    :goto_2
    :try_start_6
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v14, :cond_4

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v14, v14

    if-lez v14, :cond_4

    .line 143
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    goto/16 :goto_1

    .line 138
    :catch_1
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 159
    .local v3, "e":Ljava/lang/SecurityException;
    const/4 v14, -0x2

    goto/16 :goto_0

    .line 151
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_6
    invoke-static {v11}, Lcom/mediatek/common/MPluginGuard;->isAuthorizedSignature(Landroid/content/pm/Signature;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 152
    const-string v14, "Authorized apk"

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V

    .line 153
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 155
    :cond_7
    const-string v14, "Un-authorized apk"

    invoke-static {v14}, Lcom/mediatek/common/MPluginGuard$Logger;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2

    .line 156
    const/4 v14, 0x0

    goto/16 :goto_0
.end method
