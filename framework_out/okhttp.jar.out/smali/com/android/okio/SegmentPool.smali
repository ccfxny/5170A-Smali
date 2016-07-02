.class final Lcom/android/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final INSTANCE:Lcom/android/okio/SegmentPool;

.field static final MAX_SIZE:J = 0x10000L


# instance fields
.field byteCount:J

.field private next:Lcom/android/okio/Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/android/okio/SegmentPool;

    invoke-direct {v0}, Lcom/android/okio/SegmentPool;-><init>()V

    sput-object v0, Lcom/android/okio/SegmentPool;->INSTANCE:Lcom/android/okio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method recycle(Lcom/android/okio/Segment;)V
    .locals 6
    .param p1, "segment"    # Lcom/android/okio/Segment;

    .prologue
    const-wide/16 v4, 0x800

    .line 52
    iget-object v0, p1, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/okio/Segment;->prev:Lcom/android/okio/Segment;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_1
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/android/okio/SegmentPool;->byteCount:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    monitor-exit p0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_2
    iget-wide v0, p0, Lcom/android/okio/SegmentPool;->byteCount:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/okio/SegmentPool;->byteCount:J

    .line 56
    iget-object v0, p0, Lcom/android/okio/SegmentPool;->next:Lcom/android/okio/Segment;

    iput-object v0, p1, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 57
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/okio/Segment;->limit:I

    iput v0, p1, Lcom/android/okio/Segment;->pos:I

    .line 58
    iput-object p1, p0, Lcom/android/okio/SegmentPool;->next:Lcom/android/okio/Segment;

    .line 59
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method take()Lcom/android/okio/Segment;
    .locals 6

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/okio/SegmentPool;->next:Lcom/android/okio/Segment;

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/okio/SegmentPool;->next:Lcom/android/okio/Segment;

    .line 42
    .local v0, "result":Lcom/android/okio/Segment;
    iget-object v1, v0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    iput-object v1, p0, Lcom/android/okio/SegmentPool;->next:Lcom/android/okio/Segment;

    .line 43
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/okio/Segment;->next:Lcom/android/okio/Segment;

    .line 44
    iget-wide v2, p0, Lcom/android/okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x800

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okio/SegmentPool;->byteCount:J

    .line 45
    monitor-exit p0

    .line 48
    .end local v0    # "result":Lcom/android/okio/Segment;
    :goto_0
    return-object v0

    .line 47
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v0, Lcom/android/okio/Segment;

    invoke-direct {v0}, Lcom/android/okio/Segment;-><init>()V

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
