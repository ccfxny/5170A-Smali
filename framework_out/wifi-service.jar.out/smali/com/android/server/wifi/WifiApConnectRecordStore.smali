.class Lcom/android/server/wifi/WifiApConnectRecordStore;
.super Ljava/lang/Object;
.source "WifiApConnectRecordStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    }
.end annotation


# static fields
.field private static final CTIMES_KEY:Ljava/lang/String; = "connectTimes"

.field private static final DBG:Z = true

.field private static final DBG_WRITE_TEST_CONF:Z = false

.field private static final EOF_KEY:Ljava/lang/String; = "ENDOFFILE"

.field private static final EOL_KEY:Ljava/lang/String; = "ENDOFLINE"

.field private static final HighestScoreCount:I = 0x14

.field private static final KEYMGMT_KEY:Ljava/lang/String; = "keyMgmt"

.field private static final LASTCD_KEY:Ljava/lang/String; = "lastConnectDate"

.field private static final LASTUPDATEDATE_KEY:Ljava/lang/String; = "lastupdatedate"

.field private static final MaxSaveNode:I = 0x32

.field private static final MostConnectTimesCount:I = 0xf

.field private static final NewestLastConnectDateCount:I = 0xf

.field private static final SCORE_KEY:Ljava/lang/String; = "score"

.field private static final SSID_KEY:Ljava/lang/String; = "ssid"

.field private static final STARTDATE_KEY:Ljava/lang/String; = "startDate"

.field private static final TAG:Ljava/lang/String; = "WifiApConnectRecordStore"

.field public static TesterEnvUtils_loop_index:I

.field public static TesterEnvUtils_path:Ljava/lang/String;

.field private static final UNIT_TESTING:Z


# instance fields
.field private AP_CONN_RECORD_FILE:Ljava/lang/String;

.field private ConnectDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field

.field private ConnectTimesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field

.field private TEST_AP_CONN_RECORD_FILE:Ljava/lang/String;

.field private mLastUpdateDate:Ljava/util/Date;

.field private mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field

.field private mStartRecordDate:Ljava/util/Date;

.field private sDateFormat:Ljava/text/SimpleDateFormat;

.field private scoreComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiApConnectRecordStore;->TesterEnvUtils_loop_index:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 433
    new-instance v0, Lcom/android/server/wifi/WifiApConnectRecordStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConnectRecordStore$1;-><init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->ConnectDateComparator:Ljava/util/Comparator;

    .line 443
    new-instance v0, Lcom/android/server/wifi/WifiApConnectRecordStore$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConnectRecordStore$2;-><init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->ConnectTimesComparator:Ljava/util/Comparator;

    .line 449
    new-instance v0, Lcom/android/server/wifi/WifiApConnectRecordStore$3;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConnectRecordStore$3;-><init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->scoreComparator:Ljava/util/Comparator;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ApConnectRecord.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConnectRecordStore;->loadRecordFile()V

    .line 136
    return-void
.end method

.method public static TesterEnvUtils_copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "phase"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 535
    .local v4, "input":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 538
    .local v3, "inBuff":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/wifi/WifiApConnectRecordStore;->TesterEnvUtils_path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/files.log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 539
    .local v8, "output":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 541
    .local v7, "outBuff":Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 542
    .local v1, "dt":Ljava/util/Date;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n==============   loop_index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/wifi/WifiApConnectRecordStore;->TesterEnvUtils_loop_index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=========\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 545
    const/16 v9, 0x1400

    new-array v0, v9, [B

    .line 547
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    .line 548
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 558
    .end local v0    # "b":[B
    .end local v1    # "dt":Ljava/util/Date;
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 560
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 565
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 551
    .restart local v0    # "b":[B
    .restart local v1    # "dt":Ljava/util/Date;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 554
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 555
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 556
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 557
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 561
    .end local v0    # "b":[B
    .end local v1    # "dt":Ljava/util/Date;
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 563
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiApConnectRecordStore;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConnectRecordStore;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private adjustForNewSystemTime()V
    .locals 10

    .prologue
    .line 457
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 460
    .local v0, "dt":Ljava/util/Date;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    :goto_0
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    .line 465
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    .line 468
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 469
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 470
    .local v3, "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    iput-object v0, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 461
    .end local v2    # "i":I
    .end local v3    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/text/ParseException;
    const-string v4, "WifiApConnectRecordStore"

    const-string v5, "sDateFormat.parse(sDateFormat.format(dateTime) ) ParseException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    .line 473
    return-void
.end method

.method private createRecordFileIfNeccessary(Z)Z
    .locals 12
    .param p1, "forece_recreate"    # Z

    .prologue
    .line 393
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_3

    .line 395
    :cond_0
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "no Exist Record file , create it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 400
    .local v0, "dt":Ljava/util/Date;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    :goto_0
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    .line 405
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    .line 406
    const/4 v3, 0x0

    .line 408
    .local v3, "out":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "sdate":Ljava/lang/String;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "starttime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v6, "startDate"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 414
    const-string v6, "lastupdatedate"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 416
    const-string v6, "ENDOFFILE"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 420
    if-eqz v4, :cond_4

    .line 422
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    .line 428
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .end local v5    # "sdate":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 430
    .end local v0    # "dt":Ljava/util/Date;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :goto_2
    return v6

    .line 401
    .restart local v0    # "dt":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/text/ParseException;
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "sDateFormat.parse(sDateFormat.format(dateTime) ) ParseException "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "sdate":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 424
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 425
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .line 417
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "sdate":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 418
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing apConnectRecord configuration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 420
    if-eqz v3, :cond_1

    .line 422
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 423
    :catch_3
    move-exception v1

    .line 424
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_2

    .line 422
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 425
    :cond_2
    :goto_5
    throw v6

    .line 423
    :catch_4
    move-exception v1

    .line 424
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error close configuration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 430
    .end local v0    # "dt":Ljava/util/Date;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 420
    .restart local v0    # "dt":Ljava/util/Date;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 417
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "sdate":Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_1
.end method

.method private loadRecordFile()V
    .locals 10

    .prologue
    .line 327
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiApConnectRecordStore;->createRecordFileIfNeccessary(Z)Z

    .line 329
    const/4 v1, 0x0

    .line 331
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v4, "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    move-object v5, v4

    .line 338
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .local v5, "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "key":Ljava/lang/String;
    const-string v6, "startDate"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 341
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :goto_1
    move-object v5, v4

    .line 370
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_0

    .line 342
    :cond_0
    const-string v6, "lastupdatedate"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 344
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_1
    const-string v6, "ssid"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 345
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 346
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_2
    const-string v6, "keyMgmt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 348
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_3
    const-string v6, "lastConnectDate"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 349
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 350
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_4
    const-string v6, "connectTimes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 351
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 352
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_5
    const-string v6, "score"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 353
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto :goto_1

    .line 354
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_6
    const-string v6, "ENDOFLINE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 355
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->isInitAllFiled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 356
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto/16 :goto_1

    .line 360
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_7
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "node.isInitAllFiled is failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto/16 :goto_1

    .line 362
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_8
    const-string v6, "ENDOFFILE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 363
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "config file end of file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    if-eqz v2, :cond_e

    .line 379
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 386
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    if-nez v6, :cond_b

    .line 387
    :cond_a
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "Record file abnomal"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiApConnectRecordStore;->createRecordFileIfNeccessary(Z)Z

    .line 390
    :cond_b
    return-void

    .line 366
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_c
    :try_start_4
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore unknown key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "while reading"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v5

    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    goto/16 :goto_1

    .line 368
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore invalid address while reading"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 372
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 373
    .end local v2    # "in":Ljava/io/DataInputStream;
    .local v0, "e":Ljava/text/ParseException;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :goto_3
    :try_start_6
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 377
    if-eqz v1, :cond_9

    .line 379
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 380
    :catch_2
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_3
    move-exception v0

    .line 381
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 382
    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :catch_4
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 377
    if-eqz v1, :cond_9

    .line 379
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 380
    :catch_5
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error close configuration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v1, :cond_d

    .line 379
    :try_start_a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 382
    :cond_d
    :goto_6
    throw v6

    .line 380
    :catch_6
    move-exception v0

    .line 381
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error close configuration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_5

    .line 374
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_4

    .line 372
    :catch_8
    move-exception v0

    goto/16 :goto_3

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_e
    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2
.end method

.method private saveRecordFile()V
    .locals 12

    .prologue
    .line 476
    const/4 v4, 0x0

    .line 477
    .local v4, "out":Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 479
    .local v7, "testOut":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .local v5, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, "startDate":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "lastUpdateDate":Ljava/lang/String;
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveRecordFile startDate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v8, "startDate"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 491
    const-string v8, "lastupdatedate"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 495
    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 497
    .local v3, "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    const-string v8, "ssid"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 498
    const-string v8, "keyMgmt"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 499
    const-string v8, "lastConnectDate"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 500
    const-string v8, "connectTimes"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v8, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 501
    const-string v8, "score"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v8, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 502
    const-string v8, "ENDOFLINE"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 503
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "save node "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v3    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_0
    const-string v8, "ENDOFFILE"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    if-eqz v5, :cond_3

    .line 513
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 520
    .end local v1    # "i":I
    .end local v2    # "lastUpdateDate":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .end local v6    # "startDate":Ljava/lang/String;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 515
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "i":I
    .restart local v2    # "lastUpdateDate":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "startDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error close "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 517
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .line 508
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v2    # "lastUpdateDate":Ljava/lang/String;
    .end local v6    # "startDate":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 509
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    if-eqz v4, :cond_1

    .line 513
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 515
    :catch_2
    move-exception v0

    .line 516
    const-string v8, "WifiApConnectRecordStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error close "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 511
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_2

    .line 513
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 517
    :cond_2
    :goto_4
    throw v8

    .line 515
    :catch_3
    move-exception v0

    .line 516
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "WifiApConnectRecordStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error close "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->AP_CONN_RECORD_FILE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 511
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 508
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_2

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "i":I
    .restart local v2    # "lastUpdateDate":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v6    # "startDate":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method addConnectRecordNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "keyMgmt"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 265
    .local v2, "exit":Z
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addConnectRecordNode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    .local v0, "dt":Ljava/util/Date;
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    if-nez v6, :cond_0

    .line 275
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "mStartRecordDate is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    invoke-virtual {v6, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 278
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " the Phone System time have been adjust, we need to re-config our configure file lastUpdate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConnectRecordStore;->adjustForNewSystemTime()V

    .line 282
    :cond_1
    iput-object v0, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mLastUpdateDate:Ljava/util/Date;

    .line 284
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 285
    .local v4, "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 286
    iget-object v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    invoke-virtual {v6, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-nez v6, :cond_3

    .line 287
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore same day in node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "dt":Ljava/util/Date;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :goto_1
    return-void

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/text/ParseException;
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "sDateFormat.parse(sDateFormat.format(dateTime) ) ParseException "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v0    # "dt":Ljava/util/Date;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_3
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update node lastConnectDat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    .line 294
    iput-object v0, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    .line 295
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v6, v6

    const v7, 0x5265c00

    div-int v5, v6, v7

    .line 296
    .local v5, "score":I
    if-gez v5, :cond_4

    .line 297
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got score "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v5, 0x0

    .line 300
    :cond_4
    iget v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    add-int/2addr v6, v5

    iput v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 301
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 305
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    .end local v5    # "score":I
    :cond_5
    if-nez v2, :cond_7

    .line 306
    new-instance v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V

    .line 307
    .restart local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    iput-object p1, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    .line 308
    iput-object p2, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    .line 309
    iput-object v0, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;

    .line 310
    const/4 v6, 0x1

    iput v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    .line 311
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mStartRecordDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 312
    iget v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    if-gez v6, :cond_6

    .line 313
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got score "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v6, 0x0

    iput v6, v4, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 317
    :cond_6
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add new node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v4    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    goto/16 :goto_1
.end method

.method getAndRemoveRedundantList()[I
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x0

    .line 214
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x32

    if-gt v6, v7, :cond_1

    .line 215
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectRecordList.size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v5, 0x0

    .line 259
    :cond_0
    return-object v5

    .line 219
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v4, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 223
    .local v3, "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v3    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 228
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->ConnectDateComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->ConnectTimesComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_3

    .line 231
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->ConnectDateComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 236
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_4

    .line 237
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->scoreComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    const/4 v0, 0x0

    :goto_3
    const/16 v6, 0x14

    if-ge v0, v6, :cond_5

    .line 243
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 247
    :cond_5
    const-string v6, "WifiApConnectRecordStore"

    const-string v7, "save un-redundant node"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    .line 251
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 252
    .local v5, "redundantList":[I
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 253
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 255
    .restart local v3    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    const-string v6, "WifiApConnectRecordStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove redundant node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    aput v6, v5, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method syncWithSupplicantConf(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "configuredNetworks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;>;"
    const/16 v13, 0xc8

    const/4 v12, 0x0

    .line 139
    const/4 v5, 0x0

    .line 141
    .local v5, "needSave":Z
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configuredNetworks.size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 143
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " autoJoinStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 148
    .local v4, "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 150
    .local v6, "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    const/4 v1, 0x0

    .line 153
    .local v1, "contain":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 154
    .restart local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ne v13, v7, :cond_3

    .line 155
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AUTO_JOIN_DELETED, should remove the record"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 158
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    const/4 v1, 0x1

    .line 163
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-nez v1, :cond_1

    .line 164
    const/4 v5, 0x1

    .line 165
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "since wpa_supplicant.conf have remove the node, so remove ConnectRecode node too"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 171
    .end local v1    # "contain":Z
    .end local v6    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_5
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 172
    .restart local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eq v13, v7, :cond_6

    .line 176
    iget-object v7, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 177
    const/4 v1, 0x0

    .line 179
    .restart local v1    # "contain":Z
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    .line 181
    .restart local v6    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 182
    const/4 v1, 0x1

    .line 187
    .end local v6    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_8
    if-nez v1, :cond_6

    .line 188
    const/4 v5, 0x1

    .line 190
    new-instance v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;-><init>(Lcom/android/server/wifi/WifiApConnectRecordStore;)V

    .line 191
    .restart local v6    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->ssid:Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKeyMgmt()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->keyMgmt:Ljava/lang/String;

    .line 194
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->lastConnectDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    iput v12, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->connectTimes:I

    .line 201
    iput v12, v6, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->score:I

    .line 202
    const-string v7, "WifiApConnectRecordStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "since wpa_supplicant.conf include the node, so we add it to ApConnectRecord.conf "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v7, p0, Lcom/android/server/wifi/WifiApConnectRecordStore;->mRecordList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 195
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 207
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "contain":Z
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v6    # "node":Lcom/android/server/wifi/WifiApConnectRecordStore$ApConnectRecordNode;
    :cond_9
    if-eqz v5, :cond_a

    .line 208
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConnectRecordStore;->saveRecordFile()V

    .line 211
    :cond_a
    return-void
.end method
