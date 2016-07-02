.class public Lcom/android/org/conscrypt/CertPinManager;
.super Ljava/lang/Object;
.source "CertPinManager.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/org/conscrypt/PinListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final hostnameCache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private lastModified:J

.field private final pinFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 2
    .param p1, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    .line 38
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/keychain/pins"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    .line 48
    iput-object p1, p0, Lcom/android/org/conscrypt/CertPinManager;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    .line 38
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    .line 57
    iput-object p2, p0, Lcom/android/org/conscrypt/CertPinManager;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 58
    return-void
.end method

.method private declared-synchronized ensureInitialized()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/org/conscrypt/CertPinManager;->isCacheValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    :goto_0
    monitor-exit p0

    return v7

    .line 92
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/CertPinManager;->readPinFile()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "pinFileContents":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 96
    invoke-static {v6}, Lcom/android/org/conscrypt/CertPinManager;->getPinFileEntries(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .local v2, "entry":Ljava/lang/String;
    :try_start_2
    new-instance v5, Lcom/android/org/conscrypt/PinListEntry;

    iget-object v7, p0, Lcom/android/org/conscrypt/CertPinManager;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v5, v2, v7}, Lcom/android/org/conscrypt/PinListEntry;-><init>(Ljava/lang/String;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    .line 99
    .local v5, "pin":Lcom/android/org/conscrypt/PinListEntry;
    iget-object v7, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/PinListEntry;->getCommonName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/org/conscrypt/PinEntryException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v5    # "pin":Lcom/android/org/conscrypt/PinListEntry;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Lcom/android/org/conscrypt/PinEntryException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pinlist contains a malformed pin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/org/conscrypt/CertPinManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 87
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "e":Lcom/android/org/conscrypt/PinEntryException;
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pinFileContents":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 106
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "pinFileContents":Ljava/lang/String;
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    invoke-virtual {v7}, Llibcore/util/BasicLruCache;->evictAll()V

    .line 109
    iget-object v7, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/org/conscrypt/CertPinManager;->lastModified:J

    .line 112
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    .line 115
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    iget-boolean v7, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private getMatchingCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, ""

    .line 165
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "cn":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 171
    invoke-static {p1, v1}, Lcom/android/org/conscrypt/CertPinManager;->isHostnameMatchedBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    move-object v0, v1

    goto :goto_0

    .line 175
    .end local v1    # "cn":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getPinFileEntries(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "pinFileContents"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCacheValid()Z
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/org/conscrypt/CertPinManager;->lastModified:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHostnameMatchedBy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "cn"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2e

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 221
    :cond_1
    :goto_0
    return v4

    .line 190
    :cond_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 192
    const-string v6, "*"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 196
    :cond_3
    const-string v6, "*."

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v5, p1, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 200
    :cond_4
    const/16 v6, 0x2a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 201
    .local v0, "asterisk":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 202
    .local v1, "dot":I
    if-le v0, v1, :cond_5

    move v4, v5

    .line 203
    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {p0, v5, p1, v5, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 208
    goto :goto_0

    .line 211
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    sub-int v2, v6, v7

    .line 212
    .local v2, "suffixLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v3, v6, v2

    .line 213
    .local v3, "suffixStart":I
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ge v6, v3, :cond_7

    move v4, v5

    .line 214
    goto :goto_0

    .line 217
    :cond_7
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v3, p1, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 218
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 231
    return-void
.end method

.method private declared-synchronized lookup(Ljava/lang/String;)Lcom/android/org/conscrypt/PinListEntry;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/CertPinManager;->ensureInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 141
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    invoke-virtual {v2, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "cn":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/PinListEntry;

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/CertPinManager;->getMatchingCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    invoke-virtual {v1, p1, v0}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/PinListEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "cn":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readPinFile()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/PinManagerException;

    const-string v2, "Unexpected error reading pin list; failing."

    invoke-direct {v1, v2, v0}, Lcom/android/org/conscrypt/PinManagerException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public isChainValid(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/CertPinManager;->lookup(Ljava/lang/String;)Lcom/android/org/conscrypt/PinListEntry;

    move-result-object v0

    .line 75
    .local v0, "entry":Lcom/android/org/conscrypt/PinListEntry;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/PinListEntry;->isChainValid(Ljava/util/List;)Z

    move-result v1

    goto :goto_0
.end method
