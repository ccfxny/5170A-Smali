.class public Lcom/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FileRotator$FileInfo;,
        Lcom/android/internal/util/FileRotator$Rewriter;,
        Lcom/android/internal/util/FileRotator$Writer;,
        Lcom/android/internal/util/FileRotator$Reader;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final mBasePath:Ljava/io/File;

.field private final mDeleteAgeMillis:J

.field private final mPrefix:Ljava/lang/String;

.field private final mRotateAgeMillis:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 13
    .param p1, "basePath"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "rotateAgeMillis"    # J
    .param p5, "deleteAgeMillis"    # J

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    iput-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    .line 101
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    .line 102
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    .line 105
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 108
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 109
    const-string v9, "FileRotator"

    const-string v10, "list base path return null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void

    .line 115
    :cond_1
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v2, v5

    .line 116
    .local v7, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 115
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    :cond_3
    const-string v9, ".backup"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 121
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v3, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v3, "backupFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, ".backup"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 128
    .end local v3    # "backupFile":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    :cond_4
    const-string v9, ".no_backup"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 131
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v8, "noBackupFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, ".no_backup"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private getActiveName(J)Ljava/lang/String;
    .locals 11
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 312
    const/4 v5, 0x0

    .line 313
    .local v5, "oldestActiveName":Ljava/lang/String;
    const-wide v6, 0x7fffffffffffffffL

    .line 315
    .local v6, "oldestActiveStart":J
    new-instance v2, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v8, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v2, v8}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v8, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 317
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 316
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, p1

    if-gez v8, :cond_0

    iget-wide v8, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, v6

    if-gez v8, :cond_0

    .line 322
    move-object v5, v4

    .line 323
    iget-wide v6, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    goto :goto_1

    .line 327
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 333
    .end local v5    # "oldestActiveName":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 331
    .restart local v5    # "oldestActiveName":Ljava/lang/String;
    :cond_3
    iput-wide p1, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 332
    const-wide v8, 0x7fffffffffffffffL

    iput-wide v8, v2, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 333
    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private static readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 377
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 379
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 383
    return-void

    .line 381
    :catchall_0
    move-exception v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 399
    check-cast p0, Ljava/io/IOException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 401
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v1, "file":Ljava/io/File;
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->reset()V

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 252
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 259
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 265
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 266
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 267
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 272
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".no_backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    .restart local v0    # "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 276
    :try_start_1
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 280
    :catch_1
    move-exception v2

    .line 282
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 284
    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private static writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 387
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 389
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 393
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 395
    return-void

    .line 392
    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 393
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "writer"    # Lcom/android/internal/util/FileRotator$Writer;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/android/internal/util/FileRotator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/FileRotator$1;-><init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 218
    return-void
.end method

.method public deleteAll()V
    .locals 7

    .prologue
    .line 146
    new-instance v2, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 148
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public dumpAll(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v8, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v4, v9}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v0, v3

    .line 163
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 164
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 167
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v2, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v5, v8}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 162
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "is":Ljava/io/FileInputStream;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len$":I
    .end local v7    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v9

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "info":Lcom/android/internal/util/FileRotator$FileInfo;
    .restart local v6    # "len$":I
    :cond_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    return-void
.end method

.method public maybeRotate(J)V
    .locals 17
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    sub-long v12, p1, v14

    .line 343
    .local v12, "rotateBefore":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    sub-long v4, p1, v14

    .line 345
    .local v4, "deleteBefore":J
    new-instance v9, Lcom/android/internal/util/FileRotator$FileInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v9, v14}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 346
    .local v9, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "baseFiles":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 373
    :cond_0
    return-void

    .line 351
    :cond_1
    move-object v2, v3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v11, v2, v8

    .line 352
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v9, v11}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 351
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 355
    iget-wide v14, v9, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v14, v14, v12

    if-gtz v14, :cond_2

    .line 359
    move-wide/from16 v0, p1

    iput-wide v0, v9, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 361
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v7, v14, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .local v7, "file":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v6, "destFile":Ljava/io/File;
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 365
    .end local v6    # "destFile":Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    :cond_4
    iget-wide v14, v9, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v14, v14, v4

    if-gtz v14, :cond_2

    .line 369
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v7, v14, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    .locals 8
    .param p1, "reader"    # Lcom/android/internal/util/FileRotator$Reader;
    .param p2, "matchStartMillis"    # J
    .param p4, "matchEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v3, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v6}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 296
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 295
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_1
    iget-wide v6, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v6, v6, p4

    if-gtz v6, :cond_0

    iget-wide v6, v3, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v6, p2, v6

    if-gtz v6, :cond_0

    .line 302
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v1, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v1, "file":Ljava/io/File;
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    goto :goto_1

    .line 306
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V
    .locals 2
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "activeName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    .locals 6
    .param p1, "rewriter"    # Lcom/android/internal/util/FileRotator$Rewriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v2, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "info":Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 227
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method
