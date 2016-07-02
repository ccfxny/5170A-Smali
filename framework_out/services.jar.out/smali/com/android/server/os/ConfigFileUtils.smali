.class Lcom/android/server/os/ConfigFileUtils;
.super Ljava/lang/Object;
.source "ConfigFileUtils.java"


# static fields
.field static final CURRENT_FUNC_MAX:I = 0x2

.field static final CURRENT_HASHCODE_MAX:I = 0x8

.field private static final DEFAULT_WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/system/etc/perf_intelligent_app_config.conf"

.field private static final TAG:Ljava/lang/String; = "IntelligentEngine"

.field static final TIME_OUT_REMOVE:Ljava/lang/String; = "0"

.field private static final WHITE_LIST_FILE_PATH:Ljava/lang/String; = "/data/system/perf_intelligent_app_config.conf"

.field private static sBoostNameList:Ljava/util/ArrayList;

.field static final sPerfNodeNumber:I

.field static sPerfNodes:[Ljava/lang/String;

.field private static sWhiteListProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sys/srs/srs_cpulevel"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/sys/srs/srs_gpulevel"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sys/srs/srs_buslevel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sys/srs/srs_iolevel"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sys/srs/srs_memlevel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodes:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/server/os/ConfigFileUtils;->sPerfNodeNumber:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBoostValueFromProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "properties is empty"

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->reloadAppBoostConfig()V

    .line 92
    :goto_0
    return-object v0

    .line 85
    :cond_0
    sget-object v1, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "config":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0    # "config":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cann\'t find the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isAppNeedBoost(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 106
    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    if-eqz v3, :cond_3

    .line 107
    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 112
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 113
    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "tempPackageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    sget-object v3, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    sget-object v4, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "i":I
    .end local v1    # "tempPackageName":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static loadDataFromFile()V
    .locals 5

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, "mConfigFile":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/system/perf_intelligent_app_config.conf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "boostConfigFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    new-instance v0, Ljava/io/File;

    .end local v0    # "boostConfigFile":Ljava/io/File;
    const-string v4, "/system/etc/perf_intelligent_app_config.conf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .restart local v0    # "boostConfigFile":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v2    # "mConfigFile":Ljava/io/FileInputStream;
    .local v3, "mConfigFile":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v4, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 55
    sget-object v4, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    if-eqz v3, :cond_1

    .line 61
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 68
    .end local v0    # "boostConfigFile":Ljava/io/File;
    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v2    # "mConfigFile":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    sget-object v4, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 69
    return-void

    .line 63
    .end local v2    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v0    # "boostConfigFile":Ljava/io/File;
    .restart local v3    # "mConfigFile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 66
    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v2    # "mConfigFile":Ljava/io/FileInputStream;
    goto :goto_0

    .line 56
    .end local v0    # "boostConfigFile":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 57
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "Load config file failed"

    invoke-static {v4}, Landroid/perf/LogUtils;->logBoostWarn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    if-eqz v2, :cond_2

    .line 61
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 63
    :catch_2
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 60
    :goto_2
    if-eqz v2, :cond_3

    .line 61
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 65
    :cond_3
    :goto_3
    throw v4

    .line 63
    :catch_3
    move-exception v1

    .line 64
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v0    # "boostConfigFile":Ljava/io/File;
    .restart local v3    # "mConfigFile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v2    # "mConfigFile":Ljava/io/FileInputStream;
    goto :goto_2

    .line 56
    .end local v2    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v3    # "mConfigFile":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "mConfigFile":Ljava/io/FileInputStream;
    .restart local v2    # "mConfigFile":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method static reloadAppBoostConfig()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 98
    sget-object v0, Lcom/android/server/os/ConfigFileUtils;->sBoostNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    :goto_0
    invoke-static {}, Lcom/android/server/os/ConfigFileUtils;->loadDataFromFile()V

    .line 103
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/android/server/os/ConfigFileUtils;->sWhiteListProperties:Ljava/util/Properties;

    goto :goto_0
.end method
