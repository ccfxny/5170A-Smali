.class public Lmeizu2_jcifs/smb/Dfs;
.super Ljava/lang/Object;
.source "Dfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    }
.end annotation


# static fields
.field static final DISABLED:Z

.field protected static FALSE_ENTRY:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

.field static final TTL:J

.field static log:Lmeizu2_jcifs/util/LogStream;

.field static final strictView:Z


# instance fields
.field protected _domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

.field protected referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-static {}, Lmeizu2_jcifs/util/LogStream;->getInstance()Lmeizu2_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/Dfs;->log:Lmeizu2_jcifs/util/LogStream;

    .line 43
    const-string v0, "meizu2_jcifs.smb.client.dfs.strictView"

    invoke-static {v0, v4}, Lmeizu2_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmeizu2_jcifs/smb/Dfs;->strictView:Z

    .line 44
    const-string v0, "meizu2_jcifs.smb.client.dfs.ttl"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lmeizu2_jcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lmeizu2_jcifs/smb/Dfs;->TTL:J

    .line 45
    const-string v0, "meizu2_jcifs.smb.client.dfs.disabled"

    invoke-static {v0, v4}, Lmeizu2_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmeizu2_jcifs/smb/Dfs;->DISABLED:Z

    .line 47
    new-instance v0, Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lmeizu2_jcifs/smb/Dfs$CacheEntry;-><init>(J)V

    sput-object v0, Lmeizu2_jcifs/smb/Dfs;->FALSE_ENTRY:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 50
    iput-object v0, p0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    return-void
.end method


# virtual methods
.method public getDc(Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbTransport;
    .locals 9
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 98
    sget-boolean v7, Lmeizu2_jcifs/smb/Dfs;->DISABLED:Z

    if-eqz v7, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v6

    .line 102
    :cond_1
    const/4 v7, 0x1

    :try_start_0
    invoke-static {p1, v7}, Lmeizu2_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu2_jcifs/UniAddress;

    move-result-object v0

    .line 103
    .local v0, "addr":Lmeizu2_jcifs/UniAddress;
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;I)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v5

    .line 104
    .local v5, "trans":Lmeizu2_jcifs/smb/SmbTransport;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, p2, v7, v8}, Lmeizu2_jcifs/smb/SmbTransport;->getDfsReferrals(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Lmeizu2_jcifs/smb/DfsReferral;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 105
    .local v1, "dr":Lmeizu2_jcifs/smb/DfsReferral;
    if-eqz v1, :cond_0

    .line 106
    move-object v4, v1

    .line 107
    .local v4, "start":Lmeizu2_jcifs/smb/DfsReferral;
    const/4 v2, 0x0

    .line 111
    .local v2, "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v7, v1, Lmeizu2_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v7}, Lmeizu2_jcifs/UniAddress;->getByName(Ljava/lang/String;)Lmeizu2_jcifs/UniAddress;

    move-result-object v0

    .line 112
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;I)Lmeizu2_jcifs/smb/SmbTransport;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "ioe":Ljava/io/IOException;
    move-object v2, v3

    .line 117
    :try_start_2
    iget-object v1, v1, Lmeizu2_jcifs/smb/DfsReferral;->next:Lmeizu2_jcifs/smb/DfsReferral;

    .line 118
    if-ne v1, v4, :cond_2

    .line 120
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    .end local v0    # "addr":Lmeizu2_jcifs/UniAddress;
    .end local v1    # "dr":Lmeizu2_jcifs/smb/DfsReferral;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "start":Lmeizu2_jcifs/smb/DfsReferral;
    .end local v5    # "trans":Lmeizu2_jcifs/smb/SmbTransport;
    :catch_1
    move-exception v3

    .line 123
    .restart local v3    # "ioe":Ljava/io/IOException;
    sget-object v7, Lmeizu2_jcifs/smb/Dfs;->log:Lmeizu2_jcifs/util/LogStream;

    sget v7, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_3

    .line 124
    sget-object v7, Lmeizu2_jcifs/smb/Dfs;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v3, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 125
    :cond_3
    sget-boolean v7, Lmeizu2_jcifs/smb/Dfs;->strictView:Z

    if-eqz v7, :cond_0

    instance-of v7, v3, Lmeizu2_jcifs/smb/SmbAuthException;

    if-eqz v7, :cond_0

    .line 126
    check-cast v3, Lmeizu2_jcifs/smb/SmbAuthException;

    .end local v3    # "ioe":Ljava/io/IOException;
    throw v3
.end method

.method public getReferral(Lmeizu2_jcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/DfsReferral;
    .locals 6
    .param p1, "trans"    # Lmeizu2_jcifs/smb/SmbTransport;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 136
    sget-boolean v4, Lmeizu2_jcifs/smb/Dfs;->DISABLED:Z

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "p":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, p5, v2, v4}, Lmeizu2_jcifs/smb/SmbTransport;->getDfsReferrals(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Lmeizu2_jcifs/smb/DfsReferral;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    .local v0, "dr":Lmeizu2_jcifs/smb/DfsReferral;
    if-nez v0, :cond_0

    .end local v0    # "dr":Lmeizu2_jcifs/smb/DfsReferral;
    .end local v2    # "p":Ljava/lang/String;
    :cond_3
    move-object v0, v3

    .line 153
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v4, Lmeizu2_jcifs/smb/Dfs;->log:Lmeizu2_jcifs/util/LogStream;

    sget v4, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    .line 148
    sget-object v4, Lmeizu2_jcifs/smb/Dfs;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 149
    :cond_4
    sget-boolean v4, Lmeizu2_jcifs/smb/Dfs;->strictView:Z

    if-eqz v4, :cond_3

    instance-of v4, v1, Lmeizu2_jcifs/smb/SmbAuthException;

    if-eqz v4, :cond_3

    .line 150
    check-cast v1, Lmeizu2_jcifs/smb/SmbAuthException;

    .end local v1    # "ioe":Ljava/io/IOException;
    throw v1
.end method

.method public getTrustedDomains(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .locals 12
    .param p1, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 53
    sget-boolean v8, Lmeizu2_jcifs/smb/Dfs;->DISABLED:Z

    if-nez v8, :cond_0

    iget-object v8, p1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v9, "?"

    if-ne v8, v9, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v7

    .line 56
    :cond_1
    iget-object v8, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-wide v10, v10, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 57
    iput-object v7, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 59
    :cond_2
    iget-object v8, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    if-eqz v8, :cond_3

    .line 60
    iget-object v7, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-object v7, v7, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    goto :goto_0

    .line 62
    :cond_3
    :try_start_0
    iget-object v8, p1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lmeizu2_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu2_jcifs/UniAddress;

    move-result-object v0

    .line 63
    .local v0, "addr":Lmeizu2_jcifs/UniAddress;
    const/4 v8, 0x0

    invoke-static {v0, v8}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;I)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v6

    .line 64
    .local v6, "trans":Lmeizu2_jcifs/smb/SmbTransport;
    new-instance v3, Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    sget-wide v8, Lmeizu2_jcifs/smb/Dfs;->TTL:J

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    invoke-direct {v3, v8, v9}, Lmeizu2_jcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 66
    .local v3, "entry":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    const-string v8, ""

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v8, v9}, Lmeizu2_jcifs/smb/SmbTransport;->getDfsReferrals(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Lmeizu2_jcifs/smb/DfsReferral;

    move-result-object v2

    .line 67
    .local v2, "dr":Lmeizu2_jcifs/smb/DfsReferral;
    if-eqz v2, :cond_0

    .line 68
    move-object v5, v2

    .line 70
    .local v5, "start":Lmeizu2_jcifs/smb/DfsReferral;
    :cond_4
    iget-object v8, v2, Lmeizu2_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "domain":Ljava/lang/String;
    iget-object v8, v3, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, v2, Lmeizu2_jcifs/smb/DfsReferral;->next:Lmeizu2_jcifs/smb/DfsReferral;

    .line 73
    if-ne v2, v5, :cond_4

    .line 75
    iput-object v3, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 76
    iget-object v8, p0, Lmeizu2_jcifs/smb/Dfs;->_domains:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-object v7, v8, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0    # "addr":Lmeizu2_jcifs/UniAddress;
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "dr":Lmeizu2_jcifs/smb/DfsReferral;
    .end local v3    # "entry":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    .end local v5    # "start":Lmeizu2_jcifs/smb/DfsReferral;
    .end local v6    # "trans":Lmeizu2_jcifs/smb/SmbTransport;
    :catch_0
    move-exception v4

    .line 79
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v8, Lmeizu2_jcifs/smb/Dfs;->log:Lmeizu2_jcifs/util/LogStream;

    sget v8, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_5

    .line 80
    sget-object v8, Lmeizu2_jcifs/smb/Dfs;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v4, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 81
    :cond_5
    sget-boolean v8, Lmeizu2_jcifs/smb/Dfs;->strictView:Z

    if-eqz v8, :cond_0

    instance-of v8, v4, Lmeizu2_jcifs/smb/SmbAuthException;

    if-eqz v8, :cond_0

    .line 82
    check-cast v4, Lmeizu2_jcifs/smb/SmbAuthException;

    .end local v4    # "ioe":Ljava/io/IOException;
    throw v4
.end method

.method declared-synchronized insert(Ljava/lang/String;Lmeizu2_jcifs/smb/DfsReferral;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "dr"    # Lmeizu2_jcifs/smb/DfsReferral;

    .prologue
    const/16 v9, 0x5c

    const/4 v8, 0x1

    .line 289
    monitor-enter p0

    :try_start_0
    sget-boolean v6, Lmeizu2_jcifs/smb/Dfs;->DISABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 326
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_0
    const/16 v6, 0x5c

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 293
    .local v2, "s1":I
    const/16 v6, 0x5c

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 294
    .local v3, "s2":I
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "server":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "share":Ljava/lang/String;
    const/4 v6, 0x0

    iget v7, p2, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 306
    .local v1, "ki":I
    :goto_1
    if-le v1, v8, :cond_1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_1

    .line 307
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 310
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_2
    iget v6, p2, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, p2, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    .line 319
    iget-object v6, p0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    if-eqz v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    iget-object v8, p0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-wide v8, v8, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 320
    const/4 v6, 0x0

    iput-object v6, p0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 322
    :cond_3
    iget-object v6, p0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    if-nez v6, :cond_4

    .line 323
    new-instance v6, Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    const-wide/16 v8, 0x0

    invoke-direct {v6, v8, v9}, Lmeizu2_jcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v6, p0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 325
    :cond_4
    iget-object v6, p0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-object v6, v6, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "ki":I
    .end local v2    # "s1":I
    .end local v3    # "s2":I
    .end local v4    # "server":Ljava/lang/String;
    .end local v5    # "share":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public isTrustedDomain(Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, p2}, Lmeizu2_jcifs/smb/Dfs;->getTrustedDomains(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v0

    .line 91
    .local v0, "domains":Ljava/util/HashMap;
    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/DfsReferral;
    .locals 24
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    const/4 v13, 0x0

    .line 160
    .local v13, "dr":Lmeizu2_jcifs/smb/DfsReferral;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 162
    .local v20, "now":J
    sget-boolean v4, Lmeizu2_jcifs/smb/Dfs;->DISABLED:Z

    if-nez v4, :cond_0

    const-string v4, "IPC$"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    :cond_0
    const/4 v4, 0x0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v4

    .line 167
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lmeizu2_jcifs/smb/Dfs;->getTrustedDomains(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v12

    .line 168
    .local v12, "domains":Ljava/util/HashMap;
    if-eqz v12, :cond_c

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 172
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 173
    .local v22, "roots":Ljava/util/HashMap;
    if-eqz v22, :cond_c

    .line 174
    const/4 v5, 0x0

    .line 176
    .local v5, "trans":Lmeizu2_jcifs/smb/SmbTransport;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 181
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 182
    .local v18, "links":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-wide v6, v0, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v4, v20, v6

    if-lez v4, :cond_2

    .line 183
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/16 v18, 0x0

    .line 187
    :cond_2
    if-nez v18, :cond_a

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lmeizu2_jcifs/smb/Dfs;->getDc(Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v5

    if-nez v5, :cond_3

    .line 189
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 191
    invoke-virtual/range {v4 .. v9}, Lmeizu2_jcifs/smb/Dfs;->getReferral(Lmeizu2_jcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/DfsReferral;

    move-result-object v13

    .line 192
    if-eqz v13, :cond_9

    .line 193
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int v16, v4, v6

    .line 195
    .local v16, "len":I
    new-instance v18, Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .end local v18    # "links":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    const-wide/16 v6, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Lmeizu2_jcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 197
    .restart local v18    # "links":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    move-object/from16 v23, v13

    .line 199
    .local v23, "tmp":Lmeizu2_jcifs/smb/DfsReferral;
    :cond_4
    if-nez p3, :cond_5

    .line 206
    move-object/from16 v0, v18

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v23

    iput-object v4, v0, Lmeizu2_jcifs/smb/DfsReferral;->map:Ljava/util/Map;

    .line 207
    const-string v4, "\\"

    move-object/from16 v0, v23

    iput-object v4, v0, Lmeizu2_jcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 209
    :cond_5
    move-object/from16 v0, v23

    iget v4, v0, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    sub-int v4, v4, v16

    move-object/from16 v0, v23

    iput v4, v0, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    .line 210
    move-object/from16 v0, v23

    iget-object v0, v0, Lmeizu2_jcifs/smb/DfsReferral;->next:Lmeizu2_jcifs/smb/DfsReferral;

    move-object/from16 v23, v0

    .line 211
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_4

    .line 213
    iget-object v4, v13, Lmeizu2_jcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 214
    move-object/from16 v0, v18

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iget-object v6, v13, Lmeizu2_jcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-virtual {v4, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_6
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v16    # "len":I
    .end local v23    # "tmp":Lmeizu2_jcifs/smb/DfsReferral;
    :cond_7
    :goto_1
    if-eqz v18, :cond_c

    .line 225
    const-string v17, "\\"

    .line 230
    .local v17, "link":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lmeizu2_jcifs/smb/DfsReferral;

    move-object v13, v0

    .line 231
    if-eqz v13, :cond_8

    iget-wide v6, v13, Lmeizu2_jcifs/smb/DfsReferral;->expiration:J

    cmp-long v4, v20, v6

    if-lez v4, :cond_8

    .line 232
    move-object/from16 v0, v18

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const/4 v13, 0x0

    .line 236
    :cond_8
    if-nez v13, :cond_c

    .line 237
    if-nez v5, :cond_b

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lmeizu2_jcifs/smb/Dfs;->getDc(Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v5

    if-nez v5, :cond_b

    .line 239
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 217
    .end local v17    # "link":Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_7

    .line 218
    sget-object v4, Lmeizu2_jcifs/smb/Dfs;->FALSE_ENTRY:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 159
    .end local v5    # "trans":Lmeizu2_jcifs/smb/SmbTransport;
    .end local v12    # "domains":Ljava/util/HashMap;
    .end local v18    # "links":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    .end local v20    # "now":J
    .end local v22    # "roots":Ljava/util/HashMap;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 220
    .restart local v5    # "trans":Lmeizu2_jcifs/smb/SmbTransport;
    .restart local v12    # "domains":Ljava/util/HashMap;
    .restart local v18    # "links":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    .restart local v20    # "now":J
    .restart local v22    # "roots":Ljava/util/HashMap;
    :cond_a
    :try_start_2
    sget-object v4, Lmeizu2_jcifs/smb/Dfs;->FALSE_ENTRY:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_7

    .line 221
    const/16 v18, 0x0

    goto :goto_1

    .restart local v17    # "link":Ljava/lang/String;
    :cond_b
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 240
    invoke-virtual/range {v4 .. v9}, Lmeizu2_jcifs/smb/Dfs;->getReferral(Lmeizu2_jcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/DfsReferral;

    move-result-object v13

    .line 241
    if-eqz v13, :cond_c

    .line 242
    iget v4, v13, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    iput v4, v13, Lmeizu2_jcifs/smb/DfsReferral;->pathConsumed:I

    .line 243
    move-object/from16 v0, v17

    iput-object v0, v13, Lmeizu2_jcifs/smb/DfsReferral;->link:Ljava/lang/String;

    .line 244
    move-object/from16 v0, v18

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v5    # "trans":Lmeizu2_jcifs/smb/SmbTransport;
    .end local v17    # "link":Ljava/lang/String;
    .end local v18    # "links":Lmeizu2_jcifs/smb/Dfs$CacheEntry;
    .end local v22    # "roots":Ljava/util/HashMap;
    :cond_c
    if-nez v13, :cond_14

    if-eqz p3, :cond_14

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-wide v6, v4, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v4, v20, v6

    if-lez v4, :cond_d

    .line 256
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 258
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    if-nez v4, :cond_e

    .line 259
    new-instance v4, Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Lmeizu2_jcifs/smb/Dfs$CacheEntry;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    .line 261
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\\"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 262
    .local v15, "key":Ljava/lang/String;
    const-string v4, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 264
    :cond_f
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-object v4, v4, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 267
    .local v14, "iter":Ljava/util/Iterator;
    :cond_10
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 268
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 269
    .local v10, "_key":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 270
    .local v11, "_klen":I
    const/16 v19, 0x0

    .line 272
    .local v19, "match":Z
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v11, v4, :cond_12

    .line 273
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 278
    :cond_11
    :goto_3
    if-eqz v19, :cond_10

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lmeizu2_jcifs/smb/Dfs;->referrals:Lmeizu2_jcifs/smb/Dfs$CacheEntry;

    iget-object v4, v4, Lmeizu2_jcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lmeizu2_jcifs/smb/DfsReferral;

    move-object v13, v0

    goto :goto_2

    .line 274
    :cond_12
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v11, v4, :cond_11

    .line 275
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10, v4, v15, v6, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v15, v11}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_13

    const/16 v19, 0x1

    :goto_4
    goto :goto_3

    :cond_13
    const/16 v19, 0x0

    goto :goto_4

    .end local v10    # "_key":Ljava/lang/String;
    .end local v11    # "_klen":I
    .end local v14    # "iter":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v19    # "match":Z
    :cond_14
    move-object v4, v13

    .line 283
    goto/16 :goto_0
.end method
