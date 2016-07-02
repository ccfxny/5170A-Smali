.class Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lcom/android/org/conscrypt/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 79
    .local v0, "exists":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 106
    :goto_0
    iput-object p1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 107
    return-void

    .line 100
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    .line 101
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    goto :goto_0
.end method

.method private delete(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileClientSessionCache: Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 302
    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFiles()V
    .locals 10

    .prologue
    .line 268
    iget-object v4, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 269
    .local v4, "initialFiles":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 270
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 274
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 275
    .local v2, "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;>;"
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 277
    .local v6, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 278
    new-instance v8, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v8, v9, v6}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 285
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v7

    .line 286
    .local v7, "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    .line 287
    .local v1, "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    iget-object v8, v1, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 289
    .end local v1    # "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    :cond_2
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 291
    iput-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 294
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v7    # "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_3
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileClientSessionCache: Error reading session data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileClientSessionCache: Error writing session data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    return-void
.end method

.method private makeRoom()V
    .locals 4

    .prologue
    .line 248
    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    .line 261
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->indexFiles()V

    .line 255
    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v1, v2, -0xc

    .line 256
    .local v1, "removals":I
    iget-object v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 260
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    goto :goto_0
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v7, 0x0

    .line 135
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 138
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_3

    .line 140
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    move-object v0, v7

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 146
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v8, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_2

    move-object v0, v7

    .line 148
    goto :goto_0

    .line 152
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v2, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .restart local v2    # "file":Ljava/io/File;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v6, v8

    .line 165
    .local v6, "size":I
    new-array v0, v6, [B

    .line 166
    .local v0, "data":[B
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    if-eqz v3, :cond_0

    .line 174
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v5

    .line 176
    .local v5, "rethrown":Ljava/lang/RuntimeException;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    .end local v0    # "data":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rethrown":Ljava/lang/RuntimeException;
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 159
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "name":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {p1, v2, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v7

    .line 161
    goto :goto_0

    .line 168
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {p1, v2, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 172
    if-eqz v3, :cond_4

    .line 174
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :goto_1
    move-object v0, v7

    .line 178
    goto :goto_0

    .line 175
    :catch_3
    move-exception v5

    .line 176
    .restart local v5    # "rethrown":Ljava/lang/RuntimeException;
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 172
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "rethrown":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v7

    if-eqz v3, :cond_5

    .line 174
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 178
    :cond_5
    :goto_2
    :try_start_b
    throw v7

    .line 175
    :catch_4
    move-exception v5

    .line 176
    .restart local v5    # "rethrown":Ljava/lang/RuntimeException;
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 177
    .end local v5    # "rethrown":Ljava/lang/RuntimeException;
    .restart local v0    # "data":[B
    .restart local v6    # "size":I
    :catch_5
    move-exception v7

    goto :goto_0

    .end local v0    # "data":[B
    .end local v6    # "size":I
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v8

    goto :goto_2
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .locals 10
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "sessionData"    # [B

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "host":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 193
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "sessionData == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v4    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 196
    .restart local v4    # "host":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v8

    invoke-static {v4, v8}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 204
    .local v2, "existedBefore":Z
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    .local v6, "out":Ljava/io/FileOutputStream;
    if-nez v2, :cond_1

    .line 213
    :try_start_3
    iget v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 216
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :cond_1
    const/4 v7, 0x0

    .line 221
    .local v7, "writeSuccessful":Z
    :try_start_4
    invoke-virtual {v6, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 222
    const/4 v7, 0x1

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "closeSuccessful":Z
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    const/4 v0, 0x1

    .line 233
    if-eqz v7, :cond_2

    if-nez v0, :cond_3

    .line 235
    :cond_2
    :try_start_6
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    .end local v0    # "closeSuccessful":Z
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "writeSuccessful":Z
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-static {v4, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "closeSuccessful":Z
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "writeSuccessful":Z
    :cond_3
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    invoke-static {v4, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 233
    if-eqz v7, :cond_4

    if-nez v0, :cond_5

    .line 235
    :cond_4
    :try_start_9
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 238
    :cond_5
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    if-eqz v7, :cond_6

    if-nez v0, :cond_7

    .line 235
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 238
    :goto_1
    throw v8

    :cond_7
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 223
    .end local v0    # "closeSuccessful":Z
    :catch_2
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-static {v4, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 226
    const/4 v0, 0x0

    .line 228
    .restart local v0    # "closeSuccessful":Z
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 229
    const/4 v0, 0x1

    .line 233
    if-eqz v7, :cond_8

    if-nez v0, :cond_9

    .line 235
    :cond_8
    :try_start_c
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 238
    :cond_9
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 230
    :catch_3
    move-exception v1

    .line 231
    :try_start_d
    invoke-static {v4, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 233
    if-eqz v7, :cond_a

    if-nez v0, :cond_b

    .line 235
    :cond_a
    :try_start_e
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 238
    :cond_b
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    :catchall_2
    move-exception v8

    if-eqz v7, :cond_c

    if-nez v0, :cond_d

    .line 235
    :cond_c
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 238
    :goto_2
    throw v8

    :cond_d
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 226
    .end local v0    # "closeSuccessful":Z
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v8

    const/4 v0, 0x0

    .line 228
    .restart local v0    # "closeSuccessful":Z
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 229
    const/4 v0, 0x1

    .line 233
    if-eqz v7, :cond_e

    if-nez v0, :cond_f

    .line 235
    :cond_e
    :try_start_10
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 241
    :goto_3
    throw v8

    .line 238
    :cond_f
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3

    .line 230
    :catch_4
    move-exception v1

    .line 231
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_11
    invoke-static {v4, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 233
    if-eqz v7, :cond_10

    if-nez v0, :cond_11

    .line 235
    :cond_10
    :try_start_12
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_3

    .line 238
    :cond_11
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 233
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v8

    if-eqz v7, :cond_12

    if-nez v0, :cond_13

    .line 235
    :cond_12
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 238
    :goto_4
    throw v8

    :cond_13
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_4
.end method
