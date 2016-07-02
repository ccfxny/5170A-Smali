.class Lmeizu2_jcifs/UniAddress$ReachableThread;
.super Ljava/lang/Thread;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu2_jcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReachableThread"
.end annotation


# instance fields
.field addr:Lmeizu2_jcifs/UniAddress;

.field reachableAddrWrapper:Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;


# direct methods
.method constructor <init>(Lmeizu2_jcifs/UniAddress;Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;)V
    .locals 0
    .param p1, "addr"    # Lmeizu2_jcifs/UniAddress;
    .param p2, "reachableAddrWrapper"    # Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 255
    iput-object p1, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->addr:Lmeizu2_jcifs/UniAddress;

    .line 256
    iput-object p2, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->reachableAddrWrapper:Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 260
    const/16 v1, 0x1770

    .line 262
    .local v1, "timeOut":I
    :try_start_0
    iget-object v2, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->addr:Lmeizu2_jcifs/UniAddress;

    iget-object v2, v2, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    const/16 v3, 0x1770

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    # getter for: Lmeizu2_jcifs/UniAddress;->reachableAddrLocker:Ljava/lang/Object;
    invoke-static {}, Lmeizu2_jcifs/UniAddress;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    const-string v2, "jcifs:UniAddress"

    const-string v4, "got reachableAddrLocker"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->reachableAddrWrapper:Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;

    iget-object v2, v2, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->reachableAddrWrapper:Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;

    iget-object v4, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->addr:Lmeizu2_jcifs/UniAddress;

    iput-object v4, v2, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    .line 267
    const-string v2, "jcifs:UniAddress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set reachableAddr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->reachableAddrWrapper:Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;

    iget-object v5, v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " addr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->addr:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    const-string v2, "jcifs:UniAddress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reachable  iaddrs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->addr:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    :goto_0
    return-void

    .line 269
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "jcifs:UniAddress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReachableThread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_5
    const-string v2, "jcifs:UniAddress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unReachable  iaddrs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmeizu2_jcifs/UniAddress$ReachableThread;->addr:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
