.class public Lcom/mediatek/server/am/DexHistory;
.super Ljava/lang/Object;
.source "DexHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/am/DexHistory$DexRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final RECORD_NOT_END:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "DexHistory"


# instance fields
.field private mHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/server/am/DexHistory$DexRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/server/am/DexHistory;->mHistory:Ljava/util/HashMap;

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/am/DexHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRecord(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/server/am/DexHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    :goto_0
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    const-string v1, "DexHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start record for pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/mediatek/server/am/DexHistory$DexRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/server/am/DexHistory$DexRecord;-><init>(Ljava/lang/String;JJ)V

    .line 30
    .local v0, "r":Lcom/mediatek/server/am/DexHistory$DexRecord;
    iget-object v1, p0, Lcom/mediatek/server/am/DexHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    .end local v0    # "r":Lcom/mediatek/server/am/DexHistory$DexRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopRecord(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/server/am/DexHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/am/DexHistory$DexRecord;

    .line 39
    .local v0, "r":Lcom/mediatek/server/am/DexHistory$DexRecord;
    if-eqz v0, :cond_0

    .line 40
    iget-wide v2, v0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/server/am/DexHistory$DexRecord;->setEndTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 38
    .end local v0    # "r":Lcom/mediatek/server/am/DexHistory$DexRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized totalDuration(JJ)J
    .locals 7
    .param p1, "from"    # J
    .param p3, "to"    # J

    .prologue
    .line 63
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 64
    .local v2, "totalDuration":J
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/server/am/DexHistory;->mHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/server/am/DexHistory$DexRecord;

    .line 65
    .local v1, "r":Lcom/mediatek/server/am/DexHistory$DexRecord;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/server/am/DexHistory$DexRecord;->getDuration(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    .line 66
    goto :goto_0

    .line 70
    .end local v1    # "r":Lcom/mediatek/server/am/DexHistory$DexRecord;
    :cond_0
    monitor-exit p0

    return-wide v2

    .line 63
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
