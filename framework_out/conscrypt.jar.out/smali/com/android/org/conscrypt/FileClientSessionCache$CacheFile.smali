.class Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
.super Ljava/io/File;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheFile"
.end annotation


# instance fields
.field lastModified:J

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 350
    iput-object p2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    .line 351
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .locals 8
    .param p1, "another"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 368
    .local v0, "result":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 369
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    .line 371
    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 4

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 358
    .local v0, "lastModified":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 359
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .end local v0    # "lastModified":J
    iput-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 361
    .restart local v0    # "lastModified":J
    :cond_0
    return-wide v0
.end method
