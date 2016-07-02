.class public Lcom/meizu/experiencedatasync/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BUILD_MASK:Ljava/lang/String;

.field public static final BUILD_TYPE:Ljava/lang/String;

.field private static final DIGITS:[C

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "com.meizu.stats"

.field public static final PRODUCT_MODEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static volatile sIMEI:Ljava/lang/String;

.field private static volatile sMACAddress:Ljava/lang/String;

.field private static volatile sSN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->PRODUCT_MODEL:Ljava/lang/String;

    .line 79
    const-string v0, "ro.build.mask.id"

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_MASK:Ljava/lang/String;

    .line 80
    const-string v0, "ro.build.type"

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_TYPE:Ljava/lang/String;

    .line 426
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 432
    if-nez p0, :cond_0

    .line 433
    const-string v7, ""

    .line 441
    :goto_0
    return-object v7

    .line 435
    :cond_0
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    new-array v2, v7, [C

    .line 436
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 437
    .local v3, "c":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v4, v3

    .end local v3    # "c":I
    .local v4, "c":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-byte v1, v0, v5

    .line 438
    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "c":I
    .restart local v3    # "c":I
    sget-object v7, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v4

    .line 439
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "c":I
    .restart local v4    # "c":I
    sget-object v7, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    and-int/lit8 v8, v1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v3

    .line 437
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 441
    .end local v1    # "b":B
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static checkUmid(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 22
    .param p0, "umid"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1317
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1318
    const/16 v20, 0x0

    .line 1360
    :goto_0
    return v20

    .line 1322
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 1323
    const/16 v20, 0x0

    goto :goto_0

    .line 1326
    :cond_1
    const-string v20, "com.meizu.stats"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1328
    .local v15, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    .local v14, "result":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Lcom/meizu/experiencedatasync/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1330
    .local v5, "imei":Ljava/lang/String;
    sget-object v20, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID_MAC:Ljava/lang/String;

    sget-object v21, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1331
    .local v8, "mac":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v19, "trueMac":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_2

    .line 1333
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1334
    .local v16, "temp":[Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 1335
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, v3, v4

    .line 1336
    .local v7, "m":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1340
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "m":Ljava/lang/String;
    .end local v16    # "temp":[Ljava/lang/String;
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 1342
    .local v9, "md5":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1343
    .local v12, "offset":Ljava/lang/String;
    invoke-static {v12}, Lcom/meizu/experiencedatasync/util/Utils;->to16Int(Ljava/lang/String;)I

    move-result v13

    .line 1346
    .local v13, "offsetValue":I
    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    const/16 v20, 0x1

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    const/16 v20, 0x0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1350
    .local v17, "tempLeft":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1352
    .local v10, "md5Left":Ljava/lang/String;
    const/16 v20, 0x11

    const/16 v21, 0x21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1353
    .local v18, "tempRight":Ljava/lang/String;
    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1356
    .local v11, "md5Right":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1357
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1360
    :cond_4
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)V
    .locals 14
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;

    .prologue
    .line 1189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_0

    if-nez p1, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    const/4 v10, 0x0

    .line 1193
    .local v10, "output":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 1195
    .local v6, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v9, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move-object v7, v6

    .end local v6    # "input":Ljava/io/FileInputStream;
    .local v7, "input":Ljava/io/FileInputStream;
    move-object v11, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .local v11, "output":Ljava/io/FileOutputStream;
    :goto_1
    if-ge v5, v9, :cond_6

    :try_start_1
    aget-object v4, v0, v5

    .line 1196
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1197
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 1199
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1200
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1201
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    const/16 v12, 0x1000

    :try_start_3
    new-array v1, v12, [B

    .line 1203
    .local v1, "b":[B
    :goto_2
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_3

    .line 1204
    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1213
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "b":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v8    # "len":I
    .end local v9    # "len$":I
    :catch_0
    move-exception v3

    .line 1214
    .local v3, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1216
    if-eqz v6, :cond_2

    .line 1218
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1223
    :cond_2
    :goto_4
    if-eqz v10, :cond_0

    .line 1225
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 1226
    :catch_1
    move-exception v3

    .line 1227
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1206
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "b":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v8    # "len":I
    .restart local v9    # "len$":I
    :cond_3
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1195
    .end local v1    # "b":[B
    .end local v8    # "len":I
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    move-object v11, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1207
    :cond_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1208
    new-instance v2, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v2, "dst":Ljava/io/File;
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->ensureDir(Ljava/io/File;)Z

    .line 1210
    invoke-static {v4, v2}, Lcom/meizu/experiencedatasync/util/Utils;->copyDir(Ljava/io/File;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v2    # "dst":Ljava/io/File;
    :cond_5
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1216
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :cond_6
    if-eqz v7, :cond_7

    .line 1218
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1223
    :cond_7
    :goto_6
    if-eqz v11, :cond_a

    .line 1225
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 1228
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1219
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 1220
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1226
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1227
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 1228
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1219
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    :catch_4
    move-exception v3

    .line 1220
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1216
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v6, :cond_8

    .line 1218
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 1223
    :cond_8
    :goto_8
    if-eqz v10, :cond_9

    .line 1225
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1228
    :cond_9
    :goto_9
    throw v12

    .line 1219
    :catch_5
    move-exception v3

    .line 1220
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1226
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 1227
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1216
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "len$":I
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1213
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :cond_a
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private static delDir(Ljava/io/File;)Z
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 993
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 994
    .local v0, "dirStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    invoke-static {v0, p0}, Lcom/meizu/experiencedatasync/util/Utils;->delDir(Ljava/util/Stack;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1002
    :goto_0
    return v1

    .line 997
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 998
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v0, v1}, Lcom/meizu/experiencedatasync/util/Utils;->delDir(Ljava/util/Stack;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 999
    goto :goto_0

    .line 1002
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static delDir(Ljava/util/Stack;Ljava/io/File;)Z
    .locals 9
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "dirStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1006
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1007
    .local v4, "subList":[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-ge v7, v6, :cond_2

    .line 1008
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1009
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete dir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unsuccessfully."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1025
    :goto_0
    return v5

    :cond_1
    move v5, v6

    .line 1012
    goto :goto_0

    .line 1014
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 1016
    .local v3, "subFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1017
    invoke-virtual {p0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1019
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1020
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unsuccessfully."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "subFile":Ljava/io/File;
    :cond_5
    move v5, v6

    .line 1025
    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 974
    if-nez p0, :cond_1

    .line 975
    const/4 v0, 0x0

    .line 989
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 978
    const/4 v0, 0x1

    goto :goto_0

    .line 980
    :cond_2
    const/4 v0, 0x0

    .line 981
    .local v0, "res":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 982
    invoke-static {p0}, Lcom/meizu/experiencedatasync/util/Utils;->delDir(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 984
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 985
    if-nez v0, :cond_0

    .line 986
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unsuccessfully."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dumpKernalLog()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v0, "dump":Ljava/lang/StringBuilder;
    const-string v1, "\n\n----------Kernal----------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, "dmesg"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpLogcat(I)Ljava/lang/String;
    .locals 11
    .param p0, "lines"    # I

    .prologue
    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x400

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1050
    .local v1, "dump":Ljava/lang/StringBuilder;
    const-string v7, "\n\n----------Logcat----------\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const/4 v3, 0x0

    .line 1053
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "/system/bin/logcat"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "-v"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "time"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "-b"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "events"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "-b"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "system"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "-b"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "main"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "-t"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, "-d"

    aput-object v10, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1058
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1065
    :goto_1
    :try_start_3
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1068
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v4, "input":Ljava/io/InputStreamReader;
    const/16 v7, 0x2000

    :try_start_4
    new-array v0, v7, [C

    .line 1069
    .local v0, "buf":[C
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, "num":I
    if-lez v6, :cond_1

    .line 1070
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1071
    .end local v0    # "buf":[C
    .end local v6    # "num":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 1072
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :goto_3
    :try_start_5
    const-string v7, "Utils"

    const-string v8, "Error running logcat"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1074
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1076
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1074
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buf":[C
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    .restart local v6    # "num":I
    :cond_1
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "buf":[C
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v6    # "num":I
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_2
    :goto_6
    throw v7

    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_6

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 1071
    .end local v5    # "logcat":Ljava/lang/Process;
    :catch_4
    move-exception v2

    goto :goto_3

    .line 1063
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catch_5
    move-exception v7

    goto :goto_1

    .line 1059
    :catch_6
    move-exception v7

    goto :goto_0

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buf":[C
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "num":I
    :cond_3
    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_4
.end method

.method public static dumpMtkKernalLog()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v0, "dump":Ljava/lang/StringBuilder;
    const-string v1, "\n\n----------Kernel----------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v1, "cat /proc/aed/reboot-reason"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, "cat proc/last_kmsg"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, "\n----------dmesg----------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "dmesg"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpSMKernalLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v0, "dump":Ljava/lang/StringBuilder;
    const-string v3, "\n\n----------Kernel----------\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v3, "cat /proc/reset_reason"

    invoke-static {v3}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/fs/pstore/console-ramoops-0"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, "log":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .end local v2    # "temp":Ljava/lang/String;
    :cond_0
    const-string v3, "\n----------dmesg----------\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v3, "dmesg"

    invoke-static {v3}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ensureDir(Ljava/io/File;)Z
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 300
    if-nez p0, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 311
    :goto_0
    return v1

    .line 303
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    const/4 v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 307
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0

    .line 306
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static executeCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 565
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 566
    :cond_0
    const/4 v7, 0x0

    .line 594
    :goto_0
    return-object v7

    .line 568
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 570
    .local v2, "input":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 572
    .local v5, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 573
    if-eqz v5, :cond_5

    .line 574
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [C

    .line 577
    .local v0, "buf":[C
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, "num":I
    if-lez v4, :cond_4

    .line 578
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 581
    .end local v0    # "buf":[C
    .end local v4    # "num":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 582
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    if-eqz v2, :cond_2

    .line 586
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 590
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 591
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 594
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "num":I
    :cond_4
    move-object v2, v3

    .line 584
    .end local v0    # "buf":[C
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v4    # "num":I
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    :cond_5
    if-eqz v2, :cond_6

    .line 586
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 590
    :cond_6
    :goto_5
    if-eqz v5, :cond_3

    .line 591
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 584
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v2, :cond_7

    .line 586
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 590
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 591
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_8
    throw v7

    .line 587
    :catch_1
    move-exception v7

    goto :goto_5

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_7

    .line 584
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 581
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private static gZipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 825
    const/4 v5, 0x0

    .line 826
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 827
    .local v7, "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v3, 0x0

    .line 829
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 830
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 832
    .end local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v8, "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 833
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    const/high16 v10, 0x100000

    :try_start_3
    new-array v0, v10, [B

    .line 834
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 835
    .local v1, "count":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_3

    .line 836
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10, v1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 839
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v5, v6

    .line 840
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 843
    if-eqz v7, :cond_0

    .line 845
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 850
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 852
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 857
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 859
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 865
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return v9

    .line 838
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 843
    if-eqz v8, :cond_4

    .line 845
    :try_start_9
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 850
    :cond_4
    :goto_5
    if-eqz v6, :cond_5

    .line 852
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 857
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    .line 859
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 865
    :cond_6
    :goto_7
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 846
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v2

    .line 847
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 853
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 854
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 860
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 861
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 846
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v2

    .line 847
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 853
    :catch_5
    move-exception v2

    .line 854
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 860
    :catch_6
    move-exception v2

    .line 861
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 843
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v7, :cond_7

    .line 845
    :try_start_c
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 850
    :cond_7
    :goto_9
    if-eqz v5, :cond_8

    .line 852
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 857
    :cond_8
    :goto_a
    if-eqz v3, :cond_9

    .line 859
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 862
    :cond_9
    :goto_b
    throw v9

    .line 846
    :catch_7
    move-exception v2

    .line 847
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 853
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 854
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 860
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 861
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 843
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v9

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 839
    :catch_a
    move-exception v2

    goto :goto_1

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_c
    move-exception v2

    move-object v7, v8

    .end local v8    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getAppCpuTime()J
    .locals 12

    .prologue
    .line 1273
    const/4 v2, 0x0

    .line 1275
    .local v2, "cpuInfos":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 1276
    .local v5, "pid":I
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/stat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x3e8

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1278
    .local v6, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1279
    .local v4, "load":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1280
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1284
    .end local v4    # "load":Ljava/lang/String;
    .end local v5    # "pid":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_0
    const/16 v7, 0xd

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v7, 0xe

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v7, 0xf

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v7, 0x10

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v0, v8, v10

    .line 1287
    .local v0, "appCpuTime":J
    return-wide v0

    .line 1281
    .end local v0    # "appCpuTime":J
    :catch_0
    move-exception v3

    .line 1282
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCellId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 793
    if-nez p0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-object v3

    .line 796
    :cond_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 797
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 800
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 801
    .local v2, "phoneType":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 802
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 803
    .local v0, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_0

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lac: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    const-string v1, "top -d 1 -n 1"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "cmdResult":Ljava/lang/String;
    return-object v0
.end method

.method public static getCpuUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getProcessCpuRate()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDirAvailableSize()J
    .locals 10

    .prologue
    .line 87
    const-wide/16 v4, 0x0

    .line 88
    .local v4, "result":J
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_0

    .line 89
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 90
    .local v6, "sf":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    .line 97
    .end local v6    # "sf":Landroid/os/StatFs;
    :goto_0
    return-wide v4

    .line 92
    :cond_0
    new-instance v7, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 93
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 94
    .local v2, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 95
    .local v0, "availableBlocks":J
    mul-long v4, v0, v2

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x1

    return v0
.end method

.method public static getDns(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 13
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v10, 0x0

    .line 598
    const/4 v4, 0x0

    .line 599
    .local v4, "dnsString":Ljava/lang/String;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_5

    .line 601
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 602
    .local v9, "linkProp":Landroid/net/LinkProperties;
    if-nez v9, :cond_1

    .line 648
    .end local v9    # "linkProp":Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-object v10

    .line 605
    .restart local v9    # "linkProp":Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 606
    .local v1, "dns":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_0

    .line 609
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 610
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v0, "addressesStr":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 615
    .local v7, "inetAddress":Ljava/net/InetAddress;
    const/4 v6, 0x1

    .line 616
    .local v6, "first":Z
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 617
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "inetAddress":Ljava/net/InetAddress;
    check-cast v7, Ljava/net/InetAddress;

    .line 618
    .restart local v7    # "inetAddress":Ljava/net/InetAddress;
    if-eqz v7, :cond_2

    .line 621
    if-nez v6, :cond_3

    .line 622
    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_3
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    if-eqz v6, :cond_2

    .line 626
    const/4 v6, 0x0

    goto :goto_1

    .line 629
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v0    # "addressesStr":Ljava/lang/StringBuilder;
    .end local v1    # "dns":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v6    # "first":Z
    .end local v7    # "inetAddress":Ljava/net/InetAddress;
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v9    # "linkProp":Landroid/net/LinkProperties;
    :goto_2
    move-object v10, v4

    .line 648
    goto :goto_0

    .line 630
    :catch_0
    move-exception v5

    .line 631
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 634
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v10, "net.dns1"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "dns1":Ljava/lang/String;
    const-string v10, "net.dns2"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "dns2":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    .restart local v0    # "addressesStr":Ljava/lang/StringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 638
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 639
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 641
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 642
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static getFileMd5(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 335
    if-nez p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v6

    .line 338
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    const/4 v2, 0x0

    .line 341
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 343
    .local v5, "md":Ljava/security/MessageDigest;
    const/high16 v7, 0x80000

    new-array v0, v7, [B

    .line 344
    .local v0, "buffer":[B
    const/4 v4, -0x1

    .line 345
    .local v4, "len":I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 346
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 349
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 350
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    if-eqz v2, :cond_0

    .line 358
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 359
    :catch_1
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    .restart local v5    # "md":Ljava/security/MessageDigest;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 356
    if-eqz v3, :cond_0

    .line 358
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 359
    :catch_2
    move-exception v1

    .line 360
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 352
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 356
    if-eqz v2, :cond_0

    .line 358
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 359
    :catch_4
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 354
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 356
    if-eqz v2, :cond_0

    .line 358
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 359
    :catch_6
    move-exception v1

    .line 360
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_3

    .line 358
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 361
    :cond_3
    :goto_6
    throw v6

    .line 359
    :catch_7
    move-exception v1

    .line 360
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .line 353
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 351
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 349
    :catch_a
    move-exception v1

    goto :goto_2
.end method

.method public static getFileMd5(Ljava/lang/String;)[B
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 325
    :goto_0
    return-object v1

    .line 324
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getFileMd5(Ljava/io/File;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getFlymeUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    :try_start_0
    const-string v3, "account"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 183
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v3, "com.meizu.account"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 184
    .local v0, "account":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "account":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :goto_0
    return-object v3

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;

    .line 154
    :goto_0
    return-object v4

    .line 143
    :cond_0
    :try_start_0
    const-string v4, "android.telephony.MzTelephonyManager"

    const-string v5, "getDeviceId"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    .local v3, "temp":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 145
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 146
    .local v2, "imei":Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    sput-object v2, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_1
    :goto_1
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInsideId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1448
    const-string v1, "ro.build.inside.id"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "insideId":Ljava/lang/String;
    return-object v0
.end method

.method public static getIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 15
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 652
    const/4 v7, 0x0

    .line 653
    .local v7, "ip":Ljava/lang/String;
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xf

    if-lt v13, v14, :cond_7

    .line 655
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 656
    .local v11, "linkProp":Landroid/net/LinkProperties;
    if-nez v11, :cond_0

    .line 657
    const/4 v13, 0x0

    .line 713
    .end local v11    # "linkProp":Landroid/net/LinkProperties;
    :goto_0
    return-object v13

    .line 659
    .restart local v11    # "linkProp":Landroid/net/LinkProperties;
    :cond_0
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    .line 660
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    if-nez v0, :cond_1

    .line 661
    const/4 v13, 0x0

    goto :goto_0

    .line 663
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 664
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 665
    const/4 v13, 0x0

    goto :goto_0

    .line 667
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v1, "addressesStr":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 669
    .local v10, "linkAddress":Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 670
    .local v6, "inetAddress":Ljava/net/InetAddress;
    const/4 v4, 0x1

    .line 671
    .local v4, "first":Z
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 672
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "linkAddress":Landroid/net/LinkAddress;
    check-cast v10, Landroid/net/LinkAddress;

    .line 673
    .restart local v10    # "linkAddress":Landroid/net/LinkAddress;
    if-eqz v10, :cond_3

    .line 676
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 677
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v13

    if-nez v13, :cond_3

    .line 680
    if-nez v4, :cond_4

    .line 681
    const-string v13, ", "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_4
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    if-eqz v4, :cond_3

    .line 685
    const/4 v4, 0x0

    goto :goto_1

    .line 688
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .end local v1    # "addressesStr":Ljava/lang/StringBuilder;
    .end local v4    # "first":Z
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v10    # "linkAddress":Landroid/net/LinkAddress;
    .end local v11    # "linkProp":Landroid/net/LinkProperties;
    :cond_6
    :goto_2
    move-object v13, v7

    .line 713
    goto :goto_0

    .line 689
    :catch_0
    move-exception v2

    .line 690
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 694
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 697
    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_8
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 698
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/NetworkInterface;

    .line 700
    .local v12, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v12}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 702
    .local v5, "inet":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 703
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 704
    .local v8, "ipAddress":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_9

    .line 705
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_3

    .line 709
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v5    # "inet":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v8    # "ipAddress":Ljava/net/InetAddress;
    .end local v12    # "nif":Ljava/net/NetworkInterface;
    :catch_1
    move-exception v2

    .line 710
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getLine(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "line"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 538
    if-eqz p0, :cond_0

    const/4 v4, 0x1

    if-ge p1, v4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-object v3

    .line 541
    :cond_1
    const/4 v2, 0x0

    .line 542
    .local v2, "start":I
    const/4 v1, -0x1

    .line 543
    .local v1, "newLineIndex":I
    const/4 v0, 0x0

    .line 544
    .local v0, "linePos":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    if-ge v0, p1, :cond_2

    .line 545
    const/16 v4, 0xa

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 546
    if-ne v5, v1, :cond_3

    .line 558
    :cond_2
    add-int/lit8 v4, p1, -0x1

    if-ne v0, v4, :cond_0

    if-ne v5, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 559
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 549
    :cond_3
    add-int/lit8 v4, p1, -0x1

    if-ne v0, v4, :cond_4

    .line 550
    if-le v1, v2, :cond_0

    .line 551
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 556
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 773
    if-nez p0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-object v3

    .line 777
    :cond_1
    :try_start_0
    const-string v4, "location"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 778
    .local v2, "locationManager":Landroid/location/LocationManager;
    if-eqz v2, :cond_0

    .line 781
    const-string v4, "network"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 782
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 785
    const-string v4, "%.6f, %.6f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 786
    .end local v1    # "location":Landroid/location/Location;
    .end local v2    # "locationManager":Landroid/location/LocationManager;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLocationLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1309
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1310
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "country":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 1312
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 1313
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 754
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    .line 769
    :goto_0
    return-object v4

    .line 756
    :cond_0
    const-string v4, "com.meizu.stats"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 757
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 758
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    .line 759
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 760
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 761
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 762
    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    .line 763
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "mac_address"

    sget-object v6, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 766
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 767
    const-string v4, "mac_address"

    sget-object v5, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 760
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 769
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMD5([B)[B
    .locals 5
    .param p0, "source"    # [B

    .prologue
    const/4 v2, 0x0

    .line 375
    if-eqz p0, :cond_0

    array-length v3, p0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v2

    .line 379
    :cond_1
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 380
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 381
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMemInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpsys meminfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "cmdResult":Ljava/lang/String;
    return-object v0
.end method

.method public static getMemUsage()Ljava/lang/String;
    .locals 22

    .prologue
    .line 499
    const-string v13, "cat /proc/meminfo"

    invoke-static {v13}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "cmdResult":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "ret":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v10, v5

    .line 523
    .end local v5    # "ret":Ljava/lang/String;
    .local v10, "ret":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 504
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x1

    invoke-static {v2, v13}, Lcom/meizu/experiencedatasync/util/Utils;->getLine(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "line1":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-static {v2, v13}, Lcom/meizu/experiencedatasync/util/Utils;->getLine(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "line2":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move-object v10, v5

    .line 507
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v10    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_2
    const-string v13, " +"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 510
    .local v11, "splitStrs1":[Ljava/lang/String;
    const-string v13, " +"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 511
    .local v12, "splitStrs2":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v13, v11

    const/4 v14, 0x3

    if-lt v13, v14, :cond_3

    if-eqz v12, :cond_3

    array-length v13, v12

    const/4 v14, 0x3

    if-ge v13, v14, :cond_4

    :cond_3
    move-object v10, v5

    .line 512
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v10    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x1

    :try_start_0
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 516
    .local v8, "memTotal":J
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 517
    .local v6, "memFree":J
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_5

    move-object v10, v5

    .line 518
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v10    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_5
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    long-to-double v0, v8

    move-wide/from16 v16, v0

    long-to-double v0, v6

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    long-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v13, v14

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v6    # "memFree":J
    .end local v8    # "memTotal":J
    :goto_1
    move-object v10, v5

    .line 523
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v10    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 521
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1
.end method

.method public static getMtkRestartReason()[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1164
    const/4 v6, 0x0

    .line 1165
    .local v6, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1166
    .local v7, "temp":Ljava/lang/String;
    const-string v8, "WDT status:"

    .line 1167
    .local v8, "wdtStatus":Ljava/lang/String;
    const-string v5, "fiq step:"

    .line 1168
    .local v5, "fiqStep":Ljava/lang/String;
    const-string v3, "exception type:"

    .line 1169
    .local v3, "exceptionType":Ljava/lang/String;
    const-string v9, "cat /proc/aed/reboot-reason"

    invoke-static {v9}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1170
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1171
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1172
    .local v0, "beginIndex":I
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1173
    .local v1, "endIndex":I
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1174
    .local v4, "exceptionTypeIndex":I
    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1175
    .local v2, "enterIndex":I
    if-eq v10, v0, :cond_1

    if-eq v10, v1, :cond_1

    if-ne v10, v4, :cond_1

    .line 1176
    new-array v6, v13, [Ljava/lang/String;

    .line 1177
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v11

    .line 1178
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v12

    .line 1185
    .end local v0    # "beginIndex":I
    .end local v1    # "endIndex":I
    .end local v2    # "enterIndex":I
    .end local v4    # "exceptionTypeIndex":I
    :cond_0
    :goto_0
    return-object v6

    .line 1179
    .restart local v0    # "beginIndex":I
    .restart local v1    # "endIndex":I
    .restart local v2    # "enterIndex":I
    .restart local v4    # "exceptionTypeIndex":I
    :cond_1
    if-eq v10, v0, :cond_0

    if-eq v10, v1, :cond_0

    if-eq v10, v4, :cond_0

    if-ge v4, v2, :cond_0

    .line 1180
    new-array v6, v13, [Ljava/lang/String;

    .line 1181
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v11

    .line 1182
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v12

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 238
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 242
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 244
    const-string v4, "wifi"

    .line 263
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return-object v4

    .line 246
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 247
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 249
    :cond_1
    const-string v4, "2g"

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 251
    const-string v4, "4g"

    goto :goto_0

    .line 253
    :cond_3
    const-string v4, "3g"

    goto :goto_0

    .line 257
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v4, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v4, "unknown"

    goto :goto_0
.end method

.method public static getOSType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1391
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOperater(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 202
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 1400
    :cond_0
    const-string v3, ""

    .line 1415
    :goto_0
    return-object v3

    .line 1402
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1403
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 1404
    const-string v3, ""

    goto :goto_0

    .line 1406
    :cond_2
    const/4 v1, 0x0

    .line 1408
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1412
    :goto_1
    if-eqz v1, :cond_3

    .line 1413
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1415
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v3, ""

    goto :goto_0
.end method

.method public static getPackageVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1432
    const/4 v3, 0x0

    .line 1433
    .local v3, "versionName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1434
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1436
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1437
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1438
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProcessCpuRate()F
    .locals 8

    .prologue
    .line 1235
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getTotalCpuTime()J

    move-result-wide v6

    long-to-float v3, v6

    .line 1236
    .local v3, "totalCpuTime1":F
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getAppCpuTime()J

    move-result-wide v6

    long-to-float v1, v6

    .line 1238
    .local v1, "processCpuTime1":F
    const-wide/16 v6, 0x168

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :goto_0
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getTotalCpuTime()J

    move-result-wide v6

    long-to-float v4, v6

    .line 1244
    .local v4, "totalCpuTime2":F
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getAppCpuTime()J

    move-result-wide v6

    long-to-float v2, v6

    .line 1246
    .local v2, "processCpuTime2":F
    const/high16 v5, 0x42c80000    # 100.0f

    sub-float v6, v2, v1

    mul-float/2addr v5, v6

    sub-float v6, v4, v3

    div-float v0, v5, v6

    .line 1249
    .local v0, "cpuRate":F
    return v0

    .line 1240
    .end local v0    # "cpuRate":F
    .end local v2    # "processCpuTime2":F
    .end local v4    # "totalCpuTime2":F
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static getProductModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1029
    const-string v1, "ro.meizu.product.model"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1033
    :cond_0
    return-object v0
.end method

.method public static getProjectID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    const-string v1, "ro.meizu.project.id"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "projectID":Ljava/lang/String;
    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 1037
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPublishedType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1419
    const-string v1, "ro.meizu.published.type"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "publishedType":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    const-string v0, "local"

    .line 1423
    :cond_0
    return-object v0
.end method

.method public static getSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->sSN:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    sget-object v0, Lcom/meizu/experiencedatasync/util/Utils;->sSN:Ljava/lang/String;

    .line 170
    .local v0, "sn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 166
    .end local v0    # "sn":Ljava/lang/String;
    :cond_1
    const-string v1, "ro.serialno"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "sn":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->sSN:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSamsungKernalBootReason()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "bootReason":Ljava/lang/String;
    const-string v4, "cat /proc/reset_reason"

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "cmdResult":Ljava/lang/String;
    const-string v4, "Last boot from: "

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 530
    .local v2, "indexBegin":I
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 531
    .local v3, "indexEnd":I
    if-eq v5, v2, :cond_0

    if-eq v5, v3, :cond_0

    if-ge v2, v3, :cond_0

    .line 532
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_0
    return-object v0
.end method

.method public static getSamsungRestartReason()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1150
    const/4 v3, 0x0

    .line 1151
    .local v3, "result":Ljava/lang/String;
    const-string v2, "Last boot from:"

    .line 1152
    .local v2, "lastBootFrom":Ljava/lang/String;
    const-string v4, "cat /proc/reset_reason"

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->executeCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1154
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1155
    .local v0, "beginIndex":I
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1156
    .local v1, "endIndex":I
    if-eq v5, v0, :cond_0

    if-eq v5, v1, :cond_0

    .line 1157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1160
    .end local v0    # "beginIndex":I
    .end local v1    # "endIndex":I
    :cond_0
    return-object v3
.end method

.method public static getSre(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1291
    const/4 v2, 0x0

    .line 1292
    .local v2, "result":Ljava/lang/String;
    const-string v7, "com.meizu.stats"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1293
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "screen_resolution"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1294
    if-nez v2, :cond_0

    .line 1295
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1296
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1297
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1298
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1299
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 1300
    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 1301
    .local v1, "height":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "screen_resolution"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1304
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-object v2
.end method

.method public static getTotalCpuTime()J
    .locals 10

    .prologue
    .line 1254
    const/4 v0, 0x0

    .line 1256
    .local v0, "cpuInfos":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/proc/stat"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x3e8

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1258
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1259
    .local v2, "load":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1260
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1264
    .end local v2    # "load":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_0
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x4

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x6

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x5

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x7

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v8, 0x8

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long v4, v6, v8

    .line 1268
    .local v4, "totalCpu":J
    return-wide v4

    .line 1261
    .end local v4    # "totalCpu":J
    :catch_0
    move-exception v1

    .line 1262
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static gzip([B)[B
    .locals 7
    .param p0, "source"    # [B

    .prologue
    const/4 v4, 0x0

    .line 394
    if-nez p0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-object v4

    .line 397
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 398
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 400
    .local v2, "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    .end local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, p0

    invoke-virtual {v3, p0, v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 402
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 407
    if-eqz v3, :cond_3

    .line 409
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 413
    :goto_1
    const/4 v2, 0x0

    .line 417
    .end local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 419
    .local v4, "res":[B
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "res":[B
    .restart local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v1

    .line 411
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 403
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v1

    .line 404
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    if-eqz v2, :cond_0

    .line 409
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 413
    :goto_4
    const/4 v2, 0x0

    goto :goto_0

    .line 410
    :catch_3
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 407
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v2, :cond_2

    .line 409
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 413
    :goto_6
    const/4 v2, 0x0

    :cond_2
    throw v5

    .line 410
    :catch_4
    move-exception v1

    .line 411
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 407
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_5

    .line 403
    .end local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .end local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1041
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkWorking(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 224
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 227
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 228
    .local v2, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 229
    .local v1, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-eq v5, v6, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    :cond_3
    move v3, v4

    .line 231
    goto :goto_0
.end method

.method public static isRoot(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 273
    const-string v6, "device_states"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "deviceStateManager":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 277
    const-string v6, "deivce_states"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v4

    .line 283
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "doCheckState"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 285
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 288
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 289
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 290
    .local v3, "res":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v5, v6, :cond_0

    move v4, v5

    .line 291
    goto :goto_0

    .line 293
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "res":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWiFiWorking(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 211
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 214
    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 215
    .local v1, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move v2, v3

    .line 216
    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1112
    const/4 v8, 0x0

    .line 1113
    .local v8, "res":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1114
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1116
    .local v6, "outStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1118
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .local v7, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    :try_start_2
    new-array v0, v10, [B

    .line 1119
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 1120
    .local v5, "len":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 1122
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1127
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 1128
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "ex":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1130
    if-eqz v3, :cond_0

    .line 1132
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1138
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 1140
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1146
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-object v8

    .line 1125
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1126
    .local v1, "data":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1130
    .end local v8    # "res":Ljava/lang/String;
    .local v9, "res":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1132
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1138
    :cond_3
    :goto_4
    if-eqz v7, :cond_6

    .line 1140
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 1143
    .end local v9    # "res":Ljava/lang/String;
    .restart local v8    # "res":Ljava/lang/String;
    goto :goto_3

    .line 1133
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "res":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "res":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1134
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1141
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1142
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 1143
    .end local v9    # "res":Ljava/lang/String;
    .restart local v8    # "res":Ljava/lang/String;
    goto :goto_3

    .line 1133
    .end local v0    # "buffer":[B
    .end local v1    # "data":[B
    .end local v5    # "len":I
    :catch_3
    move-exception v2

    .line 1134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1141
    :catch_4
    move-exception v2

    .line 1142
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1130
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v3, :cond_4

    .line 1132
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1138
    :cond_4
    :goto_6
    if-eqz v6, :cond_5

    .line 1140
    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1143
    :cond_5
    :goto_7
    throw v10

    .line 1133
    :catch_5
    move-exception v2

    .line 1134
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1141
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 1142
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1130
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1127
    :catch_7
    move-exception v2

    goto :goto_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "res":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v1    # "data":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "res":Ljava/lang/String;
    :cond_6
    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "res":Ljava/lang/String;
    .restart local v8    # "res":Ljava/lang/String;
    goto :goto_3
.end method

.method public static readFileFromDropbox(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1097
    const/4 v5, 0x0

    .line 1098
    .local v5, "res":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/dropbox/"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v1, "dropboxDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v6, v5

    .line 1108
    .end local v5    # "res":Ljava/io/File;
    .local v6, "res":Ljava/io/File;
    :goto_0
    return-object v6

    .line 1102
    .end local v6    # "res":Ljava/io/File;
    .restart local v5    # "res":Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 1103
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1104
    move-object v5, v2

    .end local v2    # "file":Ljava/io/File;
    :cond_1
    move-object v6, v5

    .line 1108
    .end local v5    # "res":Ljava/io/File;
    .restart local v6    # "res":Ljava/io/File;
    goto :goto_0

    .line 1102
    .end local v6    # "res":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "res":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static to16Int(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1365
    const/4 v1, 0x0

    .line 1367
    .local v1, "result":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1383
    :cond_0
    :goto_0
    return v1

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "A"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    const/16 v1, 0xa

    goto :goto_0

    .line 1371
    :cond_1
    const-string v2, "B"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1372
    const/16 v1, 0xb

    goto :goto_0

    .line 1373
    :cond_2
    const-string v2, "C"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1374
    const/16 v1, 0xc

    goto :goto_0

    .line 1375
    :cond_3
    const-string v2, "D"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1376
    const/16 v1, 0xd

    goto :goto_0

    .line 1377
    :cond_4
    const-string v2, "E"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1378
    const/16 v1, 0xe

    goto :goto_0

    .line 1379
    :cond_5
    const-string v2, "F"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    const/16 v1, 0xf

    goto :goto_0
.end method

.method public static writeFileAppend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "conent"    # Ljava/lang/String;

    .prologue
    .line 1080
    const/4 v1, 0x0

    .line 1082
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1089
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 1094
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 1090
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1093
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 1085
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1089
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1090
    :catch_2
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1088
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1089
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1092
    :goto_3
    throw v3

    .line 1090
    :catch_3
    move-exception v0

    .line 1091
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1088
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1085
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static zipDir(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 869
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 870
    .local v0, "dirStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 871
    .local v4, "topDir":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 872
    const-string v4, "/"

    .line 874
    :cond_0
    const/4 v2, 0x0

    .line 875
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 877
    .local v5, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 878
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 880
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .local v6, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    invoke-static {v0, v4, p0, v6}, Lcom/meizu/experiencedatasync/util/Utils;->zipDir(Ljava/util/Stack;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-nez v7, :cond_3

    .line 892
    if-eqz v6, :cond_1

    .line 894
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 899
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 901
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v5, v6

    .end local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    move v7, v8

    .line 907
    :goto_2
    return v7

    .line 895
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 896
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 902
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 903
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 883
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 884
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-static {v0, v4, v7, v6}, Lcom/meizu/experiencedatasync/util/Utils;->zipDir(Ljava/util/Stack;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v7

    if-nez v7, :cond_3

    .line 892
    if-eqz v6, :cond_4

    .line 894
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 899
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 901
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_4
    move-object v5, v6

    .end local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    move v7, v8

    .line 904
    goto :goto_2

    .line 895
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v1

    .line 896
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 902
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 903
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 892
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    if-eqz v6, :cond_7

    .line 894
    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 899
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 901
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 907
    :cond_8
    :goto_6
    const/4 v7, 0x1

    move-object v5, v6

    .end local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 895
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v1

    .line 896
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 902
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 903
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 888
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_6
    move-exception v1

    .line 889
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 892
    if-eqz v5, :cond_9

    .line 894
    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 899
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    .line 901
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_a
    :goto_9
    move v7, v8

    .line 904
    goto :goto_2

    .line 895
    :catch_7
    move-exception v1

    .line 896
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 902
    :catch_8
    move-exception v1

    .line 903
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 892
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v5, :cond_b

    .line 894
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 899
    :cond_b
    :goto_b
    if-eqz v2, :cond_c

    .line 901
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 904
    :cond_c
    :goto_c
    throw v7

    .line 895
    :catch_9
    move-exception v1

    .line 896
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 902
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 903
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 892
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_a

    .line 888
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_c
    move-exception v1

    move-object v5, v6

    .end local v6    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_7
.end method

.method private static zipDir(Ljava/util/Stack;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 17
    .param p1, "topDir"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/io/File;
    .param p3, "zipOutputStream"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipOutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, "dirStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 912
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_1

    .line 913
    :cond_0
    const/4 v14, 0x0

    .line 964
    :goto_0
    return v14

    .line 915
    :cond_1
    const/4 v8, 0x0

    .line 917
    .local v8, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    if-gt v14, v15, :cond_2

    .line 918
    const/4 v14, 0x0

    .line 962
    const/4 v8, 0x0

    goto :goto_0

    .line 920
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 921
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 922
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 924
    :cond_3
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 925
    .local v4, "dirEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 927
    invoke-virtual/range {p3 .. p3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 928
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 929
    .local v10, "files":[Ljava/io/File;
    if-eqz v10, :cond_4

    array-length v14, v10

    const/4 v15, 0x1

    if-ge v14, v15, :cond_5

    .line 930
    :cond_4
    const/4 v14, 0x1

    .line 962
    const/4 v8, 0x0

    goto :goto_0

    .line 932
    :cond_5
    const/high16 v14, 0x100000

    new-array v2, v14, [B

    .line 933
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 934
    .local v3, "count":I
    move-object v1, v10

    .local v1, "arr$":[Ljava/io/File;
    array-length v12, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move-object v9, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .local v9, "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    if-ge v11, v12, :cond_9

    :try_start_1
    aget-object v6, v1, v11

    .line 935
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_6

    move-object v8, v9

    .line 934
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object v9, v8

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 938
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 939
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v9

    .line 940
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 942
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_7
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 943
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v7, Ljava/util/zip/ZipEntry;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 944
    .local v7, "fileEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 945
    :goto_3
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_8

    .line 946
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v14, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 957
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dirEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :catch_0
    move-exception v5

    .line 958
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 962
    const/4 v8, 0x0

    .line 964
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 948
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v4    # "dirEntry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "files":[Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_8
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 949
    invoke-virtual/range {p3 .. p3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 951
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 952
    :catch_1
    move-exception v5

    .line 953
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 959
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dirEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :catch_2
    move-exception v5

    .line 960
    .local v5, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 962
    const/4 v8, 0x0

    .line 963
    goto :goto_5

    .line 956
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v4    # "dirEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "files":[Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_9
    const/4 v14, 0x1

    .line 962
    const/4 v8, 0x0

    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dirEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :catchall_0
    move-exception v14

    :goto_7
    const/4 v8, 0x0

    throw v14

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v4    # "dirEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "files":[Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 959
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 957
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v8, v9

    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_a
    move-object v8, v9

    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 811
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    :cond_0
    const/4 v0, 0x0

    .line 820
    :goto_0
    return v0

    .line 814
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 815
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 817
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    invoke-static {p0, p1}, Lcom/meizu/experiencedatasync/util/Utils;->zipDir(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 820
    :cond_3
    invoke-static {p0, p1}, Lcom/meizu/experiencedatasync/util/Utils;->gZipFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method
