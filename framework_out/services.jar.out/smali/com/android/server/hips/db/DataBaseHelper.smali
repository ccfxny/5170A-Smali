.class public Lcom/android/server/hips/db/DataBaseHelper;
.super Ljava/lang/Object;
.source "DataBaseHelper.java"


# static fields
.field private static final DATABASE_FULL_PATH:Ljava/lang/String; = "/data/system/hips.db"

.field private static final DATABASE_NAME:Ljava/lang/String; = "hips.db"

.field private static final DATABASE_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DATATABLE_SETTINGS_DEBUG:Ljava/lang/String; = "debug"

.field private static final DATATABLE_SETTINGS_INTERCEPT:Ljava/lang/String; = "intercept"

.field private static final DATATABLE_SETTINGS_VERSION:Ljava/lang/String; = "version"

.field private static final mInstance:Lcom/android/server/hips/db/DataBaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/server/hips/db/DataBaseHelper;

    invoke-direct {v0}, Lcom/android/server/hips/db/DataBaseHelper;-><init>()V

    sput-object v0, Lcom/android/server/hips/db/DataBaseHelper;->mInstance:Lcom/android/server/hips/db/DataBaseHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method public static checkUpdate()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/android/server/hips/db/UpgradeHelper;->checkUpdate()V

    .line 176
    const-string v0, "/data/system/hips.db"

    invoke-static {v0}, Lcom/android/server/hips/db/DataBaseHelper;->getDatabaseVersion(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/hips/db/DataBaseHelper;->setInterceptSwitchStatus(Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public static getDatabaseVersion(Ljava/lang/String;)I
    .locals 7
    .param p0, "szPath"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "nVersion":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    :try_start_0
    const-string v4, "version"

    invoke-static {p0, v4}, Lcom/android/server/hips/db/DataBaseHelper;->getValueByNameFromSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "szTmp":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 101
    .end local v3    # "szTmp":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "FLYME_HIPS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDatabaseVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/hips/db/DataBaseHelper;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/android/server/hips/db/DataBaseHelper;->mInstance:Lcom/android/server/hips/db/DataBaseHelper;

    return-object v0
.end method

.method public static getInterceptDebugStatus()Z
    .locals 5

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "bDebug":Z
    const-string v2, "/data/system/hips.db"

    const-string v3, "debug"

    invoke-static {v2, v3}, Lcom/android/server/hips/db/DataBaseHelper;->getValueByNameFromSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "szTmp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 151
    :cond_0
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInterceptDebugStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return v0
.end method

.method public static getInterceptSwitchStatus()Z
    .locals 5

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 109
    .local v0, "bRet":Z
    const-string v2, "/data/system/hips.db"

    const-string v3, "intercept"

    invoke-static {v2, v3}, Lcom/android/server/hips/db/DataBaseHelper;->getValueByNameFromSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "szTmp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 118
    :cond_0
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInterceptSwitchStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v0
.end method

.method public static getValueByNameFromSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "szPath"    # Ljava/lang/String;
    .param p1, "szName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 35
    const-string v3, ""

    .line 37
    .local v3, "szRet":Ljava/lang/String;
    invoke-static {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "cur":Landroid/database/Cursor;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT value FROM settings WHERE name = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "szSql":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 50
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "szTmp":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 54
    move-object v3, v5

    .line 57
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    .end local v4    # "szSql":Ljava/lang/String;
    .end local v5    # "szTmp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 72
    .end local v1    # "cur":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    :cond_2
    return-object v3

    .line 60
    .restart local v1    # "cur":Landroid/database/Cursor;
    .restart local v4    # "szSql":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 64
    .end local v4    # "szSql":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    if-eqz v1, :cond_4

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6
.end method

.method private static openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 80
    const-string v1, "/data/system/hips.db"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    return-object v0
.end method

.method public static setInterceptDebugStatus(Z)V
    .locals 5
    .param p0, "b"    # Z

    .prologue
    .line 157
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "debug"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v3, "value"

    if-eqz p0, :cond_1

    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 169
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInterceptDebugStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 162
    .restart local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method

.method public static setInterceptSwitchStatus(Z)V
    .locals 5
    .param p0, "b"    # Z

    .prologue
    .line 124
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "intercept"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v3, "value"

    if-eqz p0, :cond_1

    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 136
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInterceptSwitchStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 129
    .restart local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method


# virtual methods
.method public addPldPkg(Ljava/lang/String;)V
    .locals 5
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 446
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 448
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 450
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 451
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v2, "intercept_pld"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 456
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB::addPldPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 461
    .end local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public addUsrPkg(Ljava/lang/String;)V
    .locals 5
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 408
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 410
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 412
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 413
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "interception"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v2, "intercept_pkg"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 419
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB::addUsrPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 424
    .end local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public bulkAddPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "szPackages"    # Ljava/lang/String;

    .prologue
    .line 482
    return-void
.end method

.method public delPldPkg(Ljava/lang/String;)V
    .locals 5
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 466
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 468
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 469
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 471
    .local v1, "whereArgs":[Ljava/lang/String;
    const-string v2, "intercept_pld"

    const-string v3, "pkg=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB::delPldPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 478
    .end local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "whereArgs":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public delUsrPkg(Ljava/lang/String;)V
    .locals 5
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 427
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 429
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 431
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 432
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v2, "interception"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v2, "intercept_pkg"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 438
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB::delUsrPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 443
    .end local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public isExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, "bRet":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 391
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 393
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(pkg) FROM intercept_pkg WHERE pkg = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "szSql":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 396
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    .line 397
    .local v4, "ulCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 398
    const/4 v1, 0x1

    .line 400
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 404
    .end local v0    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .end local v3    # "szSql":Ljava/lang/String;
    .end local v4    # "ulCount":J
    :cond_1
    return v1
.end method

.method public loadAppBehaviourList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hips/core/Intercept$PIBNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 296
    const/4 v3, 0x0

    .line 298
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/core/Intercept$PIBNode;>;"
    const-string v9, "FLYME_HIPS_DEBUG"

    const-string v12, "loadAppBehaviourList: begin"

    invoke-static {v9, v12}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 302
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    .line 303
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/core/Intercept$PIBNode;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/core/Intercept$PIBNode;>;"
    const/4 v1, 0x0

    .line 307
    .local v1, "cur":Landroid/database/Cursor;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 309
    :try_start_0
    const-string v8, "SELECT pkg, key, interception FROM intercept_key"

    .line 310
    .local v8, "szSql":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_4

    .line 312
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_4

    .line 314
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "szPkg":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "szKey":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 317
    .local v4, "nInterception":I
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 319
    new-instance v5, Lcom/android/server/hips/core/Intercept$PIBNode;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    if-ne v4, v10, :cond_3

    move v9, v10

    :goto_1
    invoke-direct {v5, v12, v13, v9}, Lcom/android/server/hips/core/Intercept$PIBNode;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    .local v5, "pibnode":Lcom/android/server/hips/core/Intercept$PIBNode;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v9, "FLYME_HIPS_DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/hips/core/Intercept$PIBNode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/hips/core/Intercept$PIBNode;->m_szKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v5, Lcom/android/server/hips/core/Intercept$PIBNode;->m_bIntercept:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v5    # "pibnode":Lcom/android/server/hips/core/Intercept$PIBNode;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 332
    .end local v4    # "nInterception":I
    .end local v6    # "szKey":Ljava/lang/String;
    .end local v7    # "szPkg":Ljava/lang/String;
    .end local v8    # "szSql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 336
    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 342
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 344
    const-string v9, "FLYME_HIPS_DEBUG"

    const-string v10, "loadAppBehaviourList: end"

    invoke-static {v9, v10}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v1    # "cur":Landroid/database/Cursor;
    :cond_2
    return-object v3

    .restart local v1    # "cur":Landroid/database/Cursor;
    .restart local v4    # "nInterception":I
    .restart local v6    # "szKey":Ljava/lang/String;
    .restart local v7    # "szPkg":Ljava/lang/String;
    .restart local v8    # "szSql":Ljava/lang/String;
    :cond_3
    move v9, v11

    .line 319
    goto :goto_1

    .line 331
    .end local v4    # "nInterception":I
    .end local v6    # "szKey":Ljava/lang/String;
    .end local v7    # "szPkg":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 336
    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 335
    .end local v8    # "szSql":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 336
    if-eqz v1, :cond_5

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v9
.end method

.method public loadInterceptList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hips/core/Intercept$PIINode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    const/4 v6, 0x0

    .line 193
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/core/Intercept$PIINode;>;"
    const-string v11, "FLYME_HIPS_DEBUG"

    const-string v12, "loadInterceptList: begin"

    invoke-static {v11, v12}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 197
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_e

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/core/Intercept$PIINode;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/core/Intercept$PIINode;>;"
    const/4 v2, 0x0

    .line 202
    .local v2, "cur":Landroid/database/Cursor;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 204
    :try_start_0
    const-string v10, "SELECT pkg FROM intercept_pkg WHERE interception == 1"

    .line 205
    .local v10, "szSql":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_6

    .line 207
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_6

    .line 209
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, "szPkg":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 211
    new-instance v8, Lcom/android/server/hips/core/Intercept$PIINode;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/server/hips/core/Intercept$PIINode;-><init>(Ljava/lang/String;)V

    .line 213
    .local v8, "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    .end local v9    # "szPkg":Ljava/lang/String;
    .end local v10    # "szSql":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    if-eqz v2, :cond_1

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 231
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 232
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 235
    :try_start_2
    const-string v10, "SELECT pkg FROM intercept_pld"

    .line 236
    .restart local v10    # "szSql":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_8

    .line 238
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 239
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_8

    .line 240
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 241
    .restart local v9    # "szPkg":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 242
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 248
    .end local v9    # "szPkg":Ljava/lang/String;
    .end local v10    # "szSql":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 249
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    if-eqz v2, :cond_3

    .line 253
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 257
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v6, :cond_b

    .line 258
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 259
    .restart local v9    # "szPkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 260
    .local v1, "bExists":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 261
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/hips/core/Intercept$PIINode;

    .line 262
    .restart local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    iget-object v11, v8, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 263
    const/4 v1, 0x1

    .line 267
    .end local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_5
    if-nez v1, :cond_4

    .line 268
    new-instance v8, Lcom/android/server/hips/core/Intercept$PIINode;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/server/hips/core/Intercept$PIINode;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 218
    .end local v1    # "bExists":Z
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    .end local v9    # "szPkg":Ljava/lang/String;
    .restart local v10    # "szSql":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    if-eqz v2, :cond_1

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 222
    .end local v10    # "szSql":Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    if-eqz v2, :cond_7

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v11

    .line 247
    .restart local v7    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "szSql":Ljava/lang/String;
    :cond_8
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    if-eqz v2, :cond_3

    .line 253
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 251
    .end local v10    # "szSql":Ljava/lang/String;
    :catchall_1
    move-exception v11

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 252
    if-eqz v2, :cond_9

    .line 253
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v11

    .line 260
    .restart local v1    # "bExists":Z
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    .restart local v9    # "szPkg":Ljava/lang/String;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 278
    .end local v1    # "bExists":Z
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    .end local v9    # "szPkg":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_d

    .line 279
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/hips/core/Intercept$PIINode;

    .line 280
    .restart local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    if-eqz v8, :cond_c

    .line 281
    const-string v11, "FLYME_HIPS_DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pkg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v8, Lcom/android/server/hips/core/Intercept$PIINode;->m_bIntercept:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 287
    .end local v8    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 289
    const-string v11, "FLYME_HIPS_DEBUG"

    const-string v12, "loadInterceptList: end"

    invoke-static {v11, v12}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .end local v2    # "cur":Landroid/database/Cursor;
    .end local v4    # "i":I
    .end local v7    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    return-object v6
.end method

.method public saveInterceptLog(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hips/core/Intercept$PILNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/core/Intercept$PILNode;>;"
    invoke-static {}, Lcom/android/server/hips/db/DataBaseHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 353
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "FLYME_HIPS_DEBUG"

    const-string v8, "saveInterceptLog: begin"

    invoke-static {v7, v8}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    if-eqz v0, :cond_1

    .line 357
    const-string v7, "PRAGMA cache_size=12000;"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v5, "INSERT OR REPLACE INTO intercept_log(src, count, time) VALUES(?, (SELECT count FROM intercept_log WHERE src=?)+1, ?)"

    .line 359
    .local v5, "szSql":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 361
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 362
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/core/Intercept$PILNode;

    .line 363
    .local v3, "pilnode":Lcom/android/server/hips/core/Intercept$PILNode;
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 364
    .local v4, "statement":Landroid/database/sqlite/SQLiteStatement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v3, Lcom/android/server/hips/core/Intercept$PILNode;->m_nMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/hips/core/Intercept$PILNode;->m_szCallerPkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/hips/core/Intercept$PILNode;->m_nCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/hips/core/Intercept$PILNode;->m_szCalleePkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/hips/core/Intercept$PILNode;->m_nResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, "szTmp":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 369
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 370
    const/4 v7, 0x3

    iget-object v8, v3, Lcom/android/server/hips/core/Intercept$PILNode;->m_ulTimestamp:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 371
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "pilnode":Lcom/android/server/hips/core/Intercept$PILNode;
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .end local v6    # "szTmp":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 381
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 383
    const-string v7, "FLYME_HIPS_DEBUG"

    const-string v8, "saveInterceptLog: end"

    invoke-static {v7, v8}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v2    # "i":I
    .end local v5    # "szSql":Ljava/lang/String;
    :cond_1
    return-void

    .line 374
    .restart local v2    # "i":I
    .restart local v5    # "szSql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method
