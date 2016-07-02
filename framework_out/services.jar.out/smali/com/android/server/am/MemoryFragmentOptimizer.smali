.class Lcom/android/server/am/MemoryFragmentOptimizer;
.super Ljava/lang/Object;
.source "MemoryFragmentOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryFragmentOptimizer$MemoryFragmentOptimizerInstance;
    }
.end annotation


# static fields
.field private static final CLEAN_CACHED_PROCESS_CMD:I = 0x1

.field private static final CONTROL_OF_APP:Z

.field private static final CONTROL_OF_PAS:Z

.field private static final DEBUG:Z

.field private static final ENABLE_AVOID_HIGH_MEM_FLAGMENT_FEATURE:Z

.field static final EXT_FRAGMENT_INDEX_PATH:Ljava/lang/String; = "/sys/kernel/debug/extfrag/unusable_index"

.field private static final KILL_CACHED_PROCESS_CMD:I = 0x0

.field static final LMK_OOM_LEVEL_PATH:Ljava/lang/String; = "/system/etc/lmk_oom_level.conf"

.field static final MFO_TAG:Ljava/lang/String; = "MemFragOpt"

.field private static final PAGE_COMPACTION:C = '\u0001'

.field private static final PAGE_SHRINK_HIGH_LEVEL:C = '\u0008'

.field private static final PAGE_SHRINK_LOW_LEVEL:C = '\u0002'

.field private static final PAGE_SHRINK_MED_LEVEL:C = '\u0004'

.field static final PAS_DRIVER_PATH:Ljava/lang/String; = "/proc/pas_alloc_stat"

.field private static final SIZE_OF_FRAG_LEVEL:I = 0x3

.field private static final SIZE_OF_FRAG_LEVEL_RECORDS:I = 0x1e


# instance fields
.field private final HIGH_LEVEL:I

.field private final KILL_PROCESS_SKIP_SIZE:I

.field private final LOW_LEVEL:I

.field private final MED_LEVEL:I

.field private final PROCESS_DUARATION_INTERNAL:J

.field private final defaultInterval:Ljava/lang/Integer;

.field private mCurIndex:I

.field private mFragLevelRecords:[I

.field private mHasPASnode:Z

.field private mLastCleanProcessTime:J

.field private mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMfo_frag_array:[I

.field private mMfo_level_array:[I

.field private mPasFileWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "persist.perf.mfo.switch"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->ENABLE_AVOID_HIGH_MEM_FLAGMENT_FEATURE:Z

    .line 53
    const-string v0, "persist.perf.mfo.debug"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    .line 55
    const-string v0, "persist.perf.mfo.app.ctl"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_APP:Z

    .line 57
    const-string v0, "persist.perf.mfo.pas.ctl"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_PAS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const v0, 0xafc80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->defaultInterval:Ljava/lang/Integer;

    .line 61
    const-string v0, "persist.perf.mfo.interval"

    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->defaultInterval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->PROCESS_DUARATION_INTERNAL:J

    .line 64
    iput v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->KILL_PROCESS_SKIP_SIZE:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    .line 67
    iput-boolean v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mHasPASnode:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLastCleanProcessTime:J

    .line 71
    iput v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    .line 74
    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    .line 76
    iput v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->HIGH_LEVEL:I

    .line 77
    iput v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->MED_LEVEL:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->LOW_LEVEL:I

    .line 80
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    .line 81
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    .line 139
    const-string v0, "mfo_frag_array"

    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->updatePropertiesFromConfiguration(Ljava/lang/String;[I)V

    .line 140
    const-string v0, "mfo_level_array"

    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->updatePropertiesFromConfiguration(Ljava/lang/String;[I)V

    .line 141
    return-void

    .line 80
    :array_0
    .array-data 4
        0x60
        0x59
        0x56
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x50
        0x50
        0x50
    .end array-data
.end method

.method private fragmentDistribSatisfyLevel(II)Z
    .locals 9
    .param p1, "watermark"    # I
    .param p2, "level"    # I

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "satifyWMark":Z
    const/4 v3, 0x0

    .line 351
    .local v3, "satisfyTimes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    aget v4, v4, v1

    if-lt v4, p1, :cond_0

    .line 353
    add-int/lit8 v3, v3, 0x1

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 357
    .local v0, "WMarkDistribution":I
    if-lt v0, p2, :cond_2

    .line 358
    const/4 v2, 0x1

    .line 359
    sget-boolean v4, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 360
    const-string v4, "MemFragOpt"

    const-string v5, "MemoryFragmentOptimizer satisfyTimes %d watermark %d level %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2
    return v2
.end method

.method public static getInstance()Lcom/android/server/am/MemoryFragmentOptimizer;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/am/MemoryFragmentOptimizer$MemoryFragmentOptimizerInstance;->sInstance:Lcom/android/server/am/MemoryFragmentOptimizer;

    return-object v0
.end method

.method private getMemoryFragmentLevel()F
    .locals 18

    .prologue
    .line 144
    const-string v11, "/sys/kernel/debug/extfrag/unusable_index"

    .line 146
    .local v11, "unusable_index_path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 147
    .local v4, "result":F
    const/4 v5, 0x0

    .line 149
    .local v5, "unusable_index":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 150
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    const-string v15, "/sys/kernel/debug/extfrag/unusable_index"

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v5    # "unusable_index":Ljava/io/BufferedReader;
    .local v10, "unusable_index":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 153
    .local v13, "zone_count":I
    const-wide/16 v6, 0x0

    .line 154
    .local v6, "sum":D
    const-wide/16 v8, 0x0

    .line 155
    .local v8, "sum_average":D
    const/16 v3, 0xb

    .line 157
    .local v3, "order_count":I
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    const-string v14, " "

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, "vars":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v14, 0xb

    if-ge v1, v14, :cond_0

    .line 160
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v14, v1

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v14

    add-double/2addr v6, v14

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :cond_0
    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    div-double v14, v6, v14

    add-double/2addr v8, v14

    .line 163
    add-int/lit8 v13, v13, 0x1

    .line 164
    const-wide/16 v6, 0x0

    .line 165
    goto :goto_0

    .line 167
    .end local v1    # "i":I
    .end local v12    # "vars":[Ljava/lang/String;
    :cond_1
    int-to-double v14, v13

    div-double v14, v8, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    double-to-float v4, v14

    .line 174
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v5, v10

    .line 176
    .end local v3    # "order_count":I
    .end local v6    # "sum":D
    .end local v8    # "sum_average":D
    .end local v10    # "unusable_index":Ljava/io/BufferedReader;
    .end local v13    # "zone_count":I
    .restart local v5    # "unusable_index":Ljava/io/BufferedReader;
    :goto_2
    return v4

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_2
    const-string v14, "MemFragOpt"

    const-string v15, "Error to open node: /sys/kernel/debug/extfrag/unusable_index"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 171
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v14, "MemFragOpt"

    const-string v15, "Failed to read new line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v14

    .end local v5    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v3    # "order_count":I
    .restart local v6    # "sum":D
    .restart local v8    # "sum_average":D
    .restart local v10    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v13    # "zone_count":I
    :catchall_1
    move-exception v14

    move-object v5, v10

    .end local v10    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v5    # "unusable_index":Ljava/io/BufferedReader;
    goto :goto_5

    .line 171
    .end local v5    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v10    # "unusable_index":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v5, v10

    .end local v10    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v5    # "unusable_index":Ljava/io/BufferedReader;
    goto :goto_4

    .line 169
    .end local v5    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v10    # "unusable_index":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    move-object v5, v10

    .end local v10    # "unusable_index":Ljava/io/BufferedReader;
    .restart local v5    # "unusable_index":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private hasProviderStableCount(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "processRecord"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 238
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "pvrIndex":I
    :goto_0
    if-ltz v3, :cond_3

    .line 239
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 240
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "cprIndex":I
    :goto_1
    if-ltz v2, :cond_2

    .line 241
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 242
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget v4, v0, Lcom/android/server/am/ContentProviderConnection;->stableCount:I

    if-lez v4, :cond_1

    .line 243
    sget-boolean v4, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 244
    const-string v4, "MemFragOpt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Has StableCount for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const/4 v4, 0x1

    .line 250
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "cprIndex":I
    :goto_2
    return v4

    .line 240
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v2    # "cprIndex":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 238
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 250
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "cprIndex":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private processCachedApplication(I)I
    .locals 7
    .param p1, "command"    # I

    .prologue
    .line 278
    sget-boolean v4, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_APP:Z

    if-nez v4, :cond_1

    .line 279
    const/4 v3, -0x1

    .line 315
    :cond_0
    return v3

    .line 282
    :cond_1
    const/4 v3, 0x0

    .line 283
    .local v3, "nr":I
    iget-object v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLruProcesses:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 284
    iget-object v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 285
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 286
    iget-object v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 287
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_2

    .line 288
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    packed-switch v4, :pswitch_data_0

    .line 285
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 292
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->rejectProcessRequest(ILcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    add-int/lit8 v3, v3, 0x1

    .line 296
    packed-switch p1, :pswitch_data_1

    .line 309
    :goto_2
    sget-boolean v4, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "MemFragOpt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCachedApplication CMD:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    :pswitch_1
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v5, 0x50

    invoke-interface {v4, v5}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 300
    :catch_0
    move-exception v4

    goto :goto_2

    .line 305
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MemFragOpt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_2

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private processPageAllocStatCommand(I)V
    .locals 4
    .param p1, "command"    # I

    .prologue
    .line 188
    sget-boolean v2, Lcom/android/server/am/MemoryFragmentOptimizer;->CONTROL_OF_PAS:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mHasPASnode:Z

    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    if-nez v2, :cond_2

    .line 193
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/pas_alloc_stat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 196
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/proc/pas_alloc_stat"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    if-eqz v2, :cond_0

    .line 211
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 212
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 215
    :cond_3
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 216
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 219
    :cond_4
    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 220
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 223
    :cond_5
    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 224
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 227
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 197
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "MemFragOpt"

    const-string v3, "processPageAllocStatCommand: Failed to create /proc/pas_alloc_stat FileWriter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    const-string v2, "MemFragOpt"

    const-string v3, "processPageAllocStatCommand: /proc/pas_alloc_stat dosen\'t exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mHasPASnode:Z

    goto :goto_0

    .line 228
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "MemFragOpt"

    const-string v3, "Failed to write command to PAS node"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mPasFileWriter:Ljava/io/FileWriter;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private rejectProcessRequest(ILcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p1, "command"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 255
    .local v0, "now":J
    const/4 v2, 0x0

    .line 256
    .local v2, "skipProcess":Z
    if-nez p1, :cond_3

    .line 257
    iget-wide v6, p2, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iget-wide v8, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->PROCESS_DUARATION_INTERNAL:J

    add-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-gtz v5, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/am/MemoryFragmentOptimizer;->hasProviderStableCount(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    :cond_0
    const/4 v2, 0x1

    .line 263
    :goto_0
    if-eqz v2, :cond_1

    .line 264
    sget-boolean v5, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MemFragOpt"

    const-string v6, "QuickReject! for: + Didn\'t catch kill window"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    :goto_1
    if-eqz v2, :cond_6

    :goto_2
    return v3

    .line 261
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 266
    :cond_3
    if-ne p1, v3, :cond_1

    .line 267
    iget-wide v6, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLastCleanProcessTime:J

    iget-wide v8, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->PROCESS_DUARATION_INTERNAL:J

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-lez v5, :cond_4

    move v2, v3

    .line 268
    :goto_3
    if-nez v2, :cond_5

    .line 269
    iput-wide v0, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLastCleanProcessTime:J

    goto :goto_1

    :cond_4
    move v2, v4

    .line 267
    goto :goto_3

    .line 271
    :cond_5
    sget-boolean v5, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MemFragOpt"

    const-string v6, "QuickReject! for: + Didn\'t catch clean window"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v3, v4

    .line 274
    goto :goto_2
.end method

.method private updateFragmentKeepState()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    .line 327
    invoke-direct {p0}, Lcom/android/server/am/MemoryFragmentOptimizer;->getMemoryFragmentLevel()F

    move-result v3

    float-to-int v1, v3

    .line 328
    .local v1, "curFragLevel":I
    iget v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    if-ne v3, v8, :cond_0

    .line 329
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    iget v6, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    aput v1, v3, v6

    .line 332
    iget v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mCurIndex:I

    .line 334
    sget-boolean v3, Lcom/android/server/am/MemoryFragmentOptimizer;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    .line 337
    .local v4, "sum":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 338
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    aget v3, v3, v2

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 339
    iget-object v3, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mFragLevelRecords:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    const-string v3, " Average: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-wide/16 v6, 0x1e

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    const-string v3, "MemFragOpt"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v4    # "sum":J
    :cond_2
    return-void
.end method

.method private updatePropertiesFromConfiguration(Ljava/lang/String;[I)V
    .locals 11
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "result_array"    # [I

    .prologue
    const/4 v10, 0x3

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v7, "/system/etc/lmk_oom_level.conf"

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz v2, :cond_1

    .line 101
    :try_start_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .local v4, "properties":Ljava/util/Properties;
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :try_start_3
    invoke-virtual {v4, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    invoke-virtual {v4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "property_line":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "property_array":[Ljava/lang/String;
    array-length v7, v5

    if-ne v7, v10, :cond_0

    array-length v7, p2

    if-ne v7, v10, :cond_0

    .line 114
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_2

    .line 115
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, p2, v3

    .line 116
    const-string v7, "MemFragOpt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePropertiesFromConfiguration: from Key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, p2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    .end local v5    # "property_array":[Ljava/lang/String;
    .end local v6    # "property_line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "MemFragOpt"

    const-string v8, "Load /system/etc/lmk_oom_level.conf to Properties was failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "properties":Ljava/util/Properties;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 120
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "property_array":[Ljava/lang/String;
    .restart local v6    # "property_line":Ljava/lang/String;
    :cond_0
    :try_start_4
    const-string v7, "MemFragOpt"

    const-string v8, "updatePropertiesFromConfiguration: The length of array was mismatched!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 126
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "property_array":[Ljava/lang/String;
    .end local v6    # "property_line":Ljava/lang/String;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_5
    const-string v7, "MemFragOpt"

    const-string v8, "updatePropertiesFromConfiguration: Failed in initializing FileInputStream from: /system/etc/lmk_oom_level.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 134
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 136
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    const-string v7, "MemFragOpt"

    const-string v8, "updatePropertiesFromConfiguration: FileNotFoundException: /system/etc/lmk_oom_level.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 129
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public forceCompactionMemory()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 324
    return-void
.end method

.method public forceReclaimMemory()V
    .locals 1

    .prologue
    .line 319
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 320
    return-void
.end method

.method public handleHighMemoryFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 386
    sget-boolean v1, Lcom/android/server/am/MemoryFragmentOptimizer;->ENABLE_AVOID_HIGH_MEM_FLAGMENT_FEATURE:Z

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/MemoryFragmentOptimizer;->updateFragmentKeepState()V

    .line 391
    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MemoryFragmentOptimizer;->fragmentDistribSatisfyLevel(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    invoke-direct {p0, v3}, Lcom/android/server/am/MemoryFragmentOptimizer;->processCachedApplication(I)I

    move-result v0

    .line 393
    .local v0, "nr":I
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 394
    const-string v1, "HighLev, KillAll"

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v0    # "nr":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v2, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MemoryFragmentOptimizer;->fragmentDistribSatisfyLevel(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    invoke-direct {p0, v3}, Lcom/android/server/am/MemoryFragmentOptimizer;->processCachedApplication(I)I

    move-result v0

    .line 400
    .restart local v0    # "nr":I
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 401
    const-string v1, "MedLev, KillAll"

    invoke-virtual {p0, v0, v5, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v0    # "nr":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MemoryFragmentOptimizer;->fragmentDistribSatisfyLevel(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-direct {p0, v5}, Lcom/android/server/am/MemoryFragmentOptimizer;->processCachedApplication(I)I

    move-result v0

    .line 407
    .restart local v0    # "nr":I
    if-gt v0, v4, :cond_4

    .line 408
    invoke-direct {p0, v4}, Lcom/android/server/am/MemoryFragmentOptimizer;->processPageAllocStatCommand(I)V

    .line 410
    :cond_4
    const-string v1, "LowLev, Clean"

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/am/MemoryFragmentOptimizer;->printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V

    goto :goto_0
.end method

.method printHandleHighMemoryFragmentLogInfNeeded(IILjava/lang/String;)V
    .locals 5
    .param p1, "numProcessed"    # I
    .param p2, "level"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 370
    const-string v0, "MemFragOpt"

    const-string v1, "handleHighMemoryFragment Frag:%d Level:%d Kill/Clear:%d Description: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_frag_array:[I

    aget v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mMfo_level_array:[I

    aget v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    return-void
.end method

.method public updateProcessRecord(Ljava/util/ArrayList;)Lcom/android/server/am/MemoryFragmentOptimizer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)",
            "Lcom/android/server/am/MemoryFragmentOptimizer;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "processRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iput-object p1, p0, Lcom/android/server/am/MemoryFragmentOptimizer;->mLruProcesses:Ljava/util/ArrayList;

    .line 93
    return-object p0
.end method
