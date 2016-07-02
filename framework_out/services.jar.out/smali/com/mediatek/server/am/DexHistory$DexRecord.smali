.class Lcom/mediatek/server/am/DexHistory$DexRecord;
.super Ljava/lang/Object;
.source "DexHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/am/DexHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DexRecord"
.end annotation


# instance fields
.field mEndTime:J

.field mPkg:Ljava/lang/String;

.field mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mPkg:Ljava/lang/String;

    .line 83
    iput-wide p2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J

    .line 84
    iput-wide p4, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    .line 85
    return-void
.end method


# virtual methods
.method public declared-synchronized getDuration()J
    .locals 6

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    iget-wide v4, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 98
    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    iget-wide v4, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    .line 105
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 99
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 101
    .local v0, "curr":J
    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 102
    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v2, v0, v2

    goto :goto_0

    .line 105
    .end local v0    # "curr":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDuration(JJ)J
    .locals 11
    .param p1, "from"    # J
    .param p3, "to"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 109
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J

    .line 110
    .local v2, "start":J
    iget-wide v6, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v0, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .local v0, "end":J
    :goto_0
    cmp-long v6, v2, p3

    if-gtz v6, :cond_0

    cmp-long v6, v0, p1

    if-gez v6, :cond_2

    .line 128
    :cond_0
    :goto_1
    monitor-exit p0

    return-wide v4

    .line 110
    .end local v0    # "end":J
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 115
    .restart local v0    # "end":J
    :cond_2
    cmp-long v6, v2, p3

    if-gtz v6, :cond_4

    cmp-long v6, v2, p1

    if-lez v6, :cond_4

    .line 116
    cmp-long v4, v0, p3

    if-lez v4, :cond_3

    .line 117
    sub-long v4, p3, v2

    goto :goto_1

    .line 119
    :cond_3
    sub-long v4, v0, v2

    goto :goto_1

    .line 121
    :cond_4
    cmp-long v6, v2, p1

    if-gtz v6, :cond_0

    .line 122
    cmp-long v4, v0, p3

    if-gez v4, :cond_5

    .line 123
    sub-long v4, v0, p1

    goto :goto_1

    .line 125
    :cond_5
    sub-long v4, p3, p1

    goto :goto_1

    .line 109
    .end local v0    # "end":J
    .end local v2    # "start":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getEndTime()J
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 141
    const/16 v0, 0x11

    .line 142
    .local v0, "result":I
    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J

    iget-wide v4, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 143
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    iget-wide v4, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mPkg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 145
    return v0
.end method

.method public declared-synchronized setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/server/am/DexHistory$DexRecord;->mEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
