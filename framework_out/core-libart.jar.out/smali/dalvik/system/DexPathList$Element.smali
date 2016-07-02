.class Ldalvik/system/DexPathList$Element;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexPathList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field private final dexFile:Ldalvik/system/DexFile;

.field private final file:Ljava/io/File;

.field private initialized:Z

.field private final isDirectory:Z

.field private final zip:Ljava/io/File;

.field private zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "isDirectory"    # Z
    .param p3, "zip"    # Ljava/io/File;
    .param p4, "dexFile"    # Ldalvik/system/DexFile;

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    .line 405
    iput-boolean p2, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    .line 406
    iput-object p3, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    .line 407
    iput-object p4, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    .line 408
    return-void
.end method

.method static synthetic access$000(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .locals 1
    .param p0, "x0"    # Ldalvik/system/DexPathList$Element;

    .prologue
    .line 394
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    return-object v0
.end method


# virtual methods
.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p0}, Ldalvik/system/DexPathList$Element;->maybeInit()V

    .line 450
    iget-boolean v2, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    if-eqz v2, :cond_0

    .line 451
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    .local v1, "resourceFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 478
    .end local v1    # "resourceFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 455
    .restart local v1    # "resourceFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 456
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 461
    .end local v0    # "ex":Ljava/net/MalformedURLException;
    .end local v1    # "resourceFile":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_2

    .line 467
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 478
    :cond_2
    :try_start_1
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 479
    :catch_1
    move-exception v0

    .line 480
    .restart local v0    # "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized maybeInit()V
    .locals 3

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ldalvik/system/DexPathList$Element;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 425
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ldalvik/system/DexPathList$Element;->initialized:Z

    .line 427
    iget-boolean v1, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 432
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 440
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open zip file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    const/4 v1, 0x0

    iput-object v1, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 421
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    iget-boolean v0, p0, Ldalvik/system/DexPathList$Element;->isDirectory:Z

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "directory \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zip:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dex file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
