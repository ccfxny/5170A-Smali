.class public Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;
.super Ljava/lang/Object;
.source "MzBlockNumberTest.java"


# static fields
.field private static sInstance:Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;


# instance fields
.field private mTestAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;

    invoke-direct {v0}, Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;->sInstance:Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;->getTestAddressFromFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;->mTestAddress:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;->sInstance:Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;

    return-object v0
.end method

.method private getTestAddressFromFile()Ljava/lang/String;
    .locals 12

    .prologue
    .line 41
    const-string v4, "/sdcard/meizu_test/number.txt"

    .line 42
    .local v4, "fileName":Ljava/lang/String;
    const-string v8, ""

    .line 44
    .local v8, "res":Ljava/lang/String;
    const/4 v2, 0x0

    .line 46
    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 49
    .local v5, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 51
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .local v6, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 53
    .local v7, "length":I
    new-array v0, v7, [B

    .line 54
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 55
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    move-object v5, v6

    .line 62
    .end local v0    # "buffer":[B
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v5, :cond_1

    .line 64
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 70
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 74
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :goto_1
    if-eqz v8, :cond_2

    .line 75
    const-string v9, "[\n\r]"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 78
    const/4 v8, 0x0

    .line 80
    :cond_3
    return-object v8

    .line 65
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "GSM"

    const-string v10, "getTestAddressFromFile file exception!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v9, "GSM"

    const-string v10, "getTestAddressFromFile file not exist!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    const/4 v8, 0x0

    .line 62
    if-eqz v5, :cond_4

    .line 64
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 70
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .line 72
    goto :goto_1

    .line 65
    :catch_2
    move-exception v1

    .line 66
    const-string v9, "GSM"

    const-string v10, "getTestAddressFromFile file exception!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v5, :cond_5

    .line 64
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 70
    :cond_5
    :goto_5
    const/4 v2, 0x0

    throw v9

    .line 65
    :catch_3
    move-exception v1

    .line 66
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v10, "GSM"

    const-string v11, "getTestAddressFromFile file exception!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_4

    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_4

    .line 58
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_2

    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_2
.end method


# virtual methods
.method public getTestAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/test/MzBlockNumberTest;->mTestAddress:Ljava/lang/String;

    return-object v0
.end method
