.class Lgov/nist/core/Host$QueryDns;
.super Ljava/lang/Thread;
.source "Host.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/core/Host;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryDns"
.end annotation


# instance fields
.field private mDone:Z

.field private mHost:Ljava/lang/String;

.field private mHostAddress:Ljava/net/InetAddress;

.field private mIsUnknownHost:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 324
    iput-boolean v0, p0, Lgov/nist/core/Host$QueryDns;->mDone:Z

    .line 325
    iput-object v1, p0, Lgov/nist/core/Host$QueryDns;->mHost:Ljava/lang/String;

    .line 326
    iput-object v1, p0, Lgov/nist/core/Host$QueryDns;->mHostAddress:Ljava/net/InetAddress;

    .line 330
    iput-object p1, p0, Lgov/nist/core/Host$QueryDns;->mHost:Ljava/lang/String;

    .line 331
    iput-boolean v0, p0, Lgov/nist/core/Host$QueryDns;->mIsUnknownHost:Z

    .line 332
    return-void
.end method


# virtual methods
.method declared-synchronized getDnsAddress()Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 357
    monitor-enter p0

    const-wide/16 v2, 0x1f40

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lgov/nist/core/Host$QueryDns;->mIsUnknownHost:Z

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/Host$QueryDns;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 358
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lgov/nist/core/Host$QueryDns;->mHostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/Host$QueryDns;->mHost:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 339
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_0
    return-void

    .line 343
    :cond_0
    :try_start_1
    iget-object v1, p0, Lgov/nist/core/Host$QueryDns;->mHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host$QueryDns;->mHostAddress:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "done"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/core/Host$QueryDns;->mDone:Z

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 351
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "ue":Ljava/net/UnknownHostException;
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lgov/nist/core/Host$QueryDns;->mIsUnknownHost:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    :try_start_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "done"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/core/Host$QueryDns;->mDone:Z

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 347
    .end local v0    # "ue":Ljava/net/UnknownHostException;
    :catchall_1
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "done"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    const/4 v2, 0x1

    iput-boolean v2, p0, Lgov/nist/core/Host$QueryDns;->mDone:Z

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
